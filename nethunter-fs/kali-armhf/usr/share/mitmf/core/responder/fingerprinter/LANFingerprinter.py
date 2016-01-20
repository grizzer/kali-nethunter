
import socket
import threading
import struct
import logging
import string

from SocketServer import UDPServer, ThreadingMixIn, BaseRequestHandler
from core.responder.fingerprinter.RAPLANMANPackets import *

mitmf_logger = logging.getLogger("mitmf")

class LANFingerprinter():

    def start(self, options):

        global args; args = options #For now a quick hack to make argparse's namespace object available to all

        try:
            mitmf_logger.debug("[LANFingerprinter] online")
            server = ThreadingUDPServer(("0.0.0.0", 138), Browser)
            t = threading.Thread(name="LANFingerprinter", target=server.serve_forever)
            t.setDaemon(True)
            t.start()
        except Exception, e:
            mitmf_logger.error("[LANFingerprinter] Error starting on port 138: {}:".format(e))
        
class ThreadingUDPServer(ThreadingMixIn, UDPServer):

    allow_reuse_address = 1

    def server_bind(self):
        UDPServer.server_bind(self)

class Browser(BaseRequestHandler):

    def handle(self):
        try:
            request, socket = self.request
            if args.analyze:
                ParseDatagramNBTNames(request,self.client_address[0])
                BecomeBackup(request,self.client_address[0])
            BecomeBackup(request,self.client_address[0])
        except Exception:
            pass

def NBT_NS_Role(data):
    Role = {
        "\x41\x41\x00":"Workstation/Redirector Service.",
        "\x42\x4c\x00":"Domain Master Browser. This name is likely a domain controller or a homegroup.)",
        "\x42\x4d\x00":"Domain controller service. This name is a domain controller.",
        "\x42\x4e\x00":"Local Master Browser.",
        "\x42\x4f\x00":"Browser Election Service.",
        "\x43\x41\x00":"File Server Service.",
        "\x41\x42\x00":"Browser Service.",
    }

    if data in Role:
        return Role[data]
    else:
        return "Service not known."

def Decode_Name(nbname):
    #From http://code.google.com/p/dpkt/ with author's permission.
    try:
        if len(nbname) != 32:
            return nbname
        l = []
        for i in range(0, 32, 2):
            l.append(chr(((ord(nbname[i]) - 0x41) << 4) |
                       ((ord(nbname[i+1]) - 0x41) & 0xf)))
        return filter(lambda x: x in string.printable, ''.join(l).split('\x00', 1)[0].replace(' ', ''))
    except Exception, e:
        mitmf_logger.debug("[LANFingerprinter] Error parsing NetBIOS name: {}".format(e))
        return "Illegal NetBIOS name"

def WorkstationFingerPrint(data):
    Role = {
        "\x04\x00"    :"Windows 95",
        "\x04\x10"    :"Windows 98",
        "\x04\x90"    :"Windows ME",
        "\x05\x00"    :"Windows 2000",
        "\x05\x00"    :"Windows XP",
        "\x05\x02"    :"Windows 2003",
        "\x06\x00"    :"Windows Vista/Server 2008",
        "\x06\x01"    :"Windows 7/Server 2008R2",
    }

    if data in Role:
        return Role[data]
    else:
        return False

def PrintServerName(data, entries):
    if entries == 0:
        pass
    else:
        entrieslen = 26*entries
        chunks, chunk_size = len(data[:entrieslen]), entrieslen/entries
        ServerName = [data[i:i+chunk_size] for i in range(0, chunks, chunk_size) ]
        l =[]
        for x in ServerName:
            if WorkstationFingerPrint(x[16:18]):
                l.append(x[:16].replace('\x00', '')+'| OS:%s'%(WorkstationFingerPrint(x[16:18])))
            else:
                l.append(x[:16].replace('\x00', ''))

        return l

def ParsePacket(Payload):
    PayloadOffset = struct.unpack('<H',Payload[51:53])[0]
    StatusCode = Payload[PayloadOffset-4:PayloadOffset-2]
    if StatusCode == "\x00\x00":
        EntriesNum = struct.unpack('<H',Payload[PayloadOffset:PayloadOffset+2])[0]
        ParsedNames = PrintServerName(Payload[PayloadOffset+4:], EntriesNum)
        return ParsedNames
    else:
        return None

def RAPThisDomain(Client,Domain):
    try:
        l =[]
        for x in range(1):
            PDC = RapFinger(Client,Domain,"\x00\x00\x00\x80")
            if PDC is not None:
                l.append('[LANFingerprinter]')
                l.append('Domain detected on this network:')
                for x in PDC:
                    l.append('   -'+x)
            SQL = RapFinger(Client,Domain,"\x04\x00\x00\x00")
            if SQL is not None:
                l.append('SQL Server detected on Domain {}:'.format(Domain))
                for x in SQL:
                    l.append('   -'+x)
            WKST = RapFinger(Client,Domain,"\xff\xff\xff\xff")
            if WKST is not None:
                l.append('Workstations/Servers detected on Domain {}:'.format(Domain))
                for x in WKST:
                    l.append('   -'+x)
            else:
                pass
            return '\n'.join(l)
    except:
        pass

def RapFinger(Host,Domain, Type):
    try:
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.connect((Host,445))
        s.settimeout(0.3)
        h = SMBHeader(cmd="\x72",mid="\x01\x00")
        n = SMBNegoData()
        n.calculate()
        packet0 = str(h)+str(n)
        buffer0 = longueur(packet0)+packet0
        s.send(buffer0)
        data = s.recv(1024)
        ##Session Setup AndX Request, Anonymous.
        if data[8:10] == "\x72\x00":
            head = SMBHeader(cmd="\x73",mid="\x02\x00")
            t = SMBSessionData()
            t.calculate()
            final = t
            packet1 = str(head)+str(t)
            buffer1 = longueur(packet1)+packet1
            s.send(buffer1)
            data = s.recv(1024)
            ##Tree Connect IPC$.
            if data[8:10] == "\x73\x00":
                head = SMBHeader(cmd="\x75",flag1="\x08", flag2="\x01\x00",uid=data[32:34],mid="\x03\x00")
                t = SMBTreeConnectData(Path="\\\\"+Host+"\\IPC$")
                t.calculate()
                packet1 = str(head)+str(t)
                buffer1 = longueur(packet1)+packet1
                s.send(buffer1)
                data = s.recv(1024)
                ##Rap ServerEnum.
                if data[8:10] == "\x75\x00":
                    head = SMBHeader(cmd="\x25",flag1="\x08", flag2="\x01\xc8",uid=data[32:34],tid=data[28:30],pid=data[30:32],mid="\x04\x00")
                    t = SMBTransRAPData(Data=RAPNetServerEnum3Data(ServerType=Type,DetailLevel="\x01\x00",TargetDomain=Domain))
                    t.calculate()
                    packet1 = str(head)+str(t)
                    buffer1 = longueur(packet1)+packet1
                    s.send(buffer1)
                    data = s.recv(64736)
                    ##Rap ServerEnum, Get answer and return what we're looking for.
                    if data[8:10] == "\x25\x00":
                        s.close()
                        return ParsePacket(data)
    except:
        return None

def BecomeBackup(data, Client):
    try:
        DataOffset = struct.unpack('<H',data[139:141])[0]
        BrowserPacket = data[82+DataOffset:]
        if BrowserPacket[0] == "\x0b":
            ServerName = BrowserPacket[1:]
            Domain = Decode_Name(data[49:81])
            Name = Decode_Name(data[15:47])
            Role = NBT_NS_Role(data[45:48])
            if args.analyze:
                Message1=RAPThisDomain(Client,Domain)
                mitmf_logger.warning(Message1)
            mitmf_logger.warning("[LANFingerprinter] Datagram Request from {} | Hostname: {} via the {} wants to become a Local Master Browser Backup on this domain: {}.".format(Client, Name,Role,Domain))
    except:
        pass


    try:
        Domain = Decode_Name(data[49:81])
        Name = Decode_Name(data[15:47])
        Role1 = NBT_NS_Role(data[45:48])
        Role2 = NBT_NS_Role(data[79:82])
        if Role2 == "Domain controller service. This name is a domain controller." or Role2 == "Browser Election Service." or Role2 == "Local Master Browser.":
            if args.analyze:
                Message1=RAPThisDomain(Client,Domain)
                mitmf_logger.warning(Message1)
            mitmf_logger.warning('[LANFingerprinter] Datagram Request from: {} | Hostname: {} via the {} to {} | Service: {}'.format(Client, Name, Role1, Domain, Role2))
    except:
        pass

def ParseDatagramNBTNames(data,Client):
    try:
        Domain = Decode_Name(data[49:81])
        Name = Decode_Name(data[15:47])
        Role1 = NBT_NS_Role(data[45:48])
        Role2 = NBT_NS_Role(data[79:82])
        if Role2 == "Domain controller service. This name is a domain controller." or Role2 == "Browser Election Service." or Role2 == "Local Master Browser.":
            if args.analyze:
                Message1=RAPThisDomain(Client,Domain)
                mitmf_logger.warning(Message1)
            mitmf_logger.warning('[LANFingerprinter] Datagram Request from: {} | Hostname: {} via the {} to {} | Service: {}'.format(Client, Name, Role1, Domain, Role2))
    except:
        pass