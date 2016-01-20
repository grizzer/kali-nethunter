require 'rqrcode'
require 'mojo_magick'
module Qr4r

  # params we use
  #   pixel_size  - size of each dot, default = 3
  # params we pass to QRCode include :size and :level
  #   size   - the size of the qrcode (default 4)
  #   level  - the error correction level, can be:
  #      * Level :l 7%  of code can be restored
  #      * Level :m 15% of code can be restored
  #      * Level :q 25% of code can be restored
  #      * Level :h 30% of code can be restored
  # note: if size is not included and 4 appears to be too small for the included string, we'll make it bigger
  #       if you include size, we'll use it, which may lead to an error if the string is too long
  # Limitations are as follows:
  #   size = 1, max string length = 7
  #   size = 2, max string length = 14
  #   size = 3, max string length = 24
  #   size = 4, max string length = 34
  #   size = 5, max string length = 44
  #   size = 6, max string length = 58
  #   size = 7, max string length = 64
  #   size = 8, max string length = 84
  #   size = 9, max string length = 98
  #   size = 10, max string length = 119

  SIZE_RESTRICTIONS = [0, 7, 14, 24, 34, 44, 58, 64, 84, 98, 119] 

  def self.encode(str, outfile, *rest)
    opts = rest[0] if rest && rest.length > 0
    opts ||= {} 
    opts.merge!({:size => compute_size(str)}) unless opts[:size]
    opts.merge!({:pixel_size => 3}) unless opts[:pixel_size]
    qr, data = build_qr_code(str, opts)
    create_image(qr,data,outfile,opts)
  end

  class << self
    private
    def build_qr_code(str,opts)
      qr = RQRCode::QRCode.new(str, opts)
      data = [].tap do |data|
        qr.modules.each_index do |x|
          qr.modules.each_index do |y|
            if qr.dark?(x,y)
              3.times { data << 0 }
            else
              3.times { data << 255 }
            end
          end
        end
      end
      [qr, data]
    end

    def create_image(qr, data, outfile, opts) 
      MojoMagick::convert do |c|
        d = data.pack 'C'*data.size
        c.blob(d, :format => :rgb, :depth => 8, :size => ("%dx%d" % [qr.modules.size, qr.modules.size]))
        if opts[:pixel_size]
          wd = qr.modules.size * opts[:pixel_size].to_i
          c.scale "%dx%d" % [ wd, wd ]
        end
        if opts[:border]
          border = opts[:border].to_i
          c.bordercolor 'white'
          c.border '%dx%d' % [ border, border ]
        end
        c.file outfile
      end
    end


    def compute_size(str)
      slen = str.size
      ii = 0
      while ii < SIZE_RESTRICTIONS.length do
        if slen < SIZE_RESTRICTIONS[ii]
          break
        end
        ii+=1
      end
      if ii > 10
        raise "Your string is too big for this encoder.  It should be less than #{SIZE_RESTRICTIONS.last} characters"
      end
      return ii
    end
  end
end
