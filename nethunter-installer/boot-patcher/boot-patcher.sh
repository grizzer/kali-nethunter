#!/sbin/sh
# Kali NetHunter boot image patcher script by jcadduono
# Based on AnyKernel2 by osm0sis

## start build generated variables
boot_block=
## end build generated variables

# set up extracted files and directories
tmp=/tmp/nethunter/boot-patcher
ramdisk=$tmp/ramdisk
ramdisk_patch=$ramdisk-patch
split_img=$tmp/split-img
bin=$tmp/tools
boot_backup=/data/local/boot-backup.img

chmod -R 755 $bin
rm -rf $ramdisk $split_img
mkdir $ramdisk $split_img

console=$(cat /tmp/console)
[ "$console" ] || console=/proc/$$/fd/1

print() {
	echo "ui_print - $1" > $console
	echo
}

abort() {
	[ "$1" ] && {
		print "Error: $1"
		print "Aborting..."
	}
	exit 1
}

## start patch methods

# replace_line <file> <line match pattern> <replacement line>
replace_line() {
	sed -i "s/\s*$2\s*$/$3/" "$1"
}

# insert_after_last <file> <line match pattern> <inserted line>
insert_after_last() {
	grep -q "^$3$" "$1" || {
		line=$(($(grep -n "^\s*$2\s*$" "$1" | tail -1 | cut -d: -f1) + 1))
		sed -i "${line}i$3" "$1"
	}
}

## end patch methods

## start install methods

# find the location of the boot block
find_boot() {
	verify_block() {
		[ -b "$boot_block" ] || return 1
		print "Found boot partition at: $boot_block"
	}
	# if we already have boot block set then verify and use it
	verify_block && return
	# otherwise, time to go hunting!
	[ -f /etc/recovery.fstab ] && {
		# recovery fstab v1
		boot_block=$(awk '$1 == "/boot" {print $3}' /etc/recovery.fstab)
		[ "$boot_block" ] && verify_block && return
		# recovery fstab v2
		boot_block=$(awk '$2 == "/boot" {print $1}' /etc/recovery.fstab)
		[ "$boot_block" ] && verify_block && return
		return 1
	} && return
	[ -f /fstab.qcom ] && {
		# qcom fstab
		boot_block=$(awk '$2 == "/boot" {print $1}' /fstab.qcom)
		[ "$boot_block" ] && verify_block && return
		return 1
	} && return
	[ -f /proc/emmc ] && {
		# emmc layout
		boot_block=$(awk '$4 == "\"boot\"" {print $1}' /proc/emmc)
		[ "$boot_block" ] && boot_block=/dev/block/$(echo "$boot_block" | cut -f1 -d:) && verify_block && return
		return 1
	} && return
	[ -f /proc/mtd ] && {
		# mtd layout
		boot_block=$(awk '$4 == "\"boot\"" {print $1}' /proc/mtd)
		[ "$boot_block" ] && boot_block=/dev/block/$(echo "$boot_block" | cut -f1 -d:) && verify_block && return
		return 1
	} && return
	[ -f /proc/dumchar_info ] && {
		# mtk layout
		boot_block=$(awk '$1 == "/boot" {print $5}' /proc/dumchar_info)
		[ "$boot_block" ] && verify_block && return
		return 1
	} && return
	abort "Unable to find boot block location!"
}

# dump boot and extract ramdisk
dump_boot() {
	print "Dumping & unpacking original boot image..."
	dd if="$boot_block" of="$tmp/boot.img"
	$bin/unpackbootimg -i "$tmp/boot.img" -o "$split_img"
	[ $? != 0 ] && abort "Dumping/unpacking boot image failed"
}

# determine the format the ramdisk was compressed in
determine_ramdisk_format() {
	magicbytes=$(hexdump -vn2 -e '2/1 "%x"' $split_img/boot.img-ramdisk)
	case "$magicbytes" in
		425a) rdformat=bzip2; decompress=bzip2 ;; #compress="bzip2 -9c" ;;
		1f8b|1f9e) rdformat=gzip; decompress=gzip ;; #compress="gzip -9c" ;;
		0221) rdformat=lz4; decompress=$bin/lz4 ;; #compress="$bin/lz4 -9" ;;
		5d00) rdformat=lzma; decompress=lzma ;; #compress="lzma -c" ;;
		894c) rdformat=lzo; decompress=lzop ;; #compress="lzop -9c" ;;
		fd37) rdformat=xz; decompress=xz ;; #compress="xz --check=crc32 --lzma2=dict=2MiB" ;;
		*) abort "Unknown ramdisk compression format ($magicbytes)." ;;
	esac
	print "Detected ramdisk compression format: $rdformat"
	command -v "$decompress" || abort "Unable to find archiver for $rdformat"
}

# extract the old ramdisk contents
dump_ramdisk() {
	cd $ramdisk
	$decompress -d < $split_img/boot.img-ramdisk | cpio -i
	[ $? != 0 ] && abort "Dumping/unpacking ramdisk failed"
}

# patch the ramdisk
patch_ramdisk() {
	print "Patching the ramdisk..."
	cd $ramdisk
	# fix permissions of patch files
	chmod -R 0755 $ramdisk_patch
	chmod 0644 $ramdisk_patch/sbin/media_profiles.xml
	# move the patch files into the ramdisk
	cp -rd $ramdisk_patch/. ./
	# make sure adb is not secure
	replace_line default.prop "ro.adb.secure=1" "ro.adb.secure=0"
	replace_line default.prop "ro.secure=1" "ro.secure=0"
	# import nethunter and superuser init to init.rc
	insert_after_last init.rc "import /init\\..*\\.rc" "import /init.nethunter.rc"
	insert_after_last init.rc "import /init\\..*\\.rc" "import /init.superuser.rc"
	# patch sepolicy for SuperSU
	print "Patching the sepolicy for SuperSU..."
	LD_LIBRARY_PATH=$LIBDIR /system/xbin/supolicy --file $ramdisk/sepolicy $ramdisk/sepolicy_new
	[ -f $ramdisk/sepolicy_new ] && {
		rm $ramdisk/sepolicy
		mv $ramdisk/sepolicy_new $ramdisk/sepolicy
		chmod 0644 $ramdisk/sepolicy
	} || {
		print "Unable to patch the sepolicy, continuing..."
	}
}

# build the new ramdisk
build_ramdisk() {
	print "Building new ramdisk..."
	cd $ramdisk
	find | cpio -o -H newc | gzip -9c > $tmp/ramdisk-new
}

# build the new boot image
build_boot() {
	cd $split_img
	kernel=
	for image in zImage zImage-dtb Image Image-dtb Image.gz Image.gz-dtb; do
		[ -s $tmp/$image ] && {
			kernel="--kernel $tmp/$image"
			print "Found replacement kernel $image!"
		} && break
	done
	[ "$kernel" ] || {
		[ -s *-zImage ] && {
			kernel="--kernel $(ls $split_img/*-zImage)"
		} || {
			abort "Unable to find kernel image!"
		}
	}
	[ -s $tmp/ramdisk-new ] && {
		rd="--ramdisk $tmp/ramdisk-new"
		print "Found replacement ramdisk image!"
	} || {
		[ -s *-ramdisk ] && {
			rd="--ramdisk $(ls $split_img/*-ramdisk)"
		} || {
			abort "Unable to find ramdisk image!"
		}
	}
	[ -s $tmp/dtb.img ] && {
		dtb="--dt $tmp/dtb.img"
		print "Found replacement device tree image!"
	} || {
		[ -s *-dt ] && dtb="--dt $(ls $split_img/*-dt)"
	}
	[ -s *-second ] && second="--second $(ls $split_img/*-second)"
	[ -s *-cmdline ] && cmdline="$(cat ./*-cmdline)"
	[ -s *-board ] && board="$(cat ./*-board)"
	[ -s *-base ] && {
		base="--base $(cat ./*-base)"
	} || {
		abort "Unable to find boot base address!"
	}
	[ -s *-pagesize ] && {
		pagesize="--pagesize $(cat ./*-pagesize)"
	} || {
		abort "Unable to find boot pagesize!"
	}
	[ -s *-kernel_offset ] && {
		kernel_offset="--kernel_offset $(cat ./*-kernel_offset)"
	} || {
		abort "Unable to find kernel offset address!"
	}
	[ -s *-ramdisk_offset ] && {
		ramdisk_offset="--ramdisk_offset $(cat ./*-ramdisk_offset)"
	} || {
		abort "Unable to find ramdisk offset address!"
	}
	[ -s *-second_offset ] && second_offset="--second_offset $(cat ./*-second_offset)"
	[ -s *-tags_offset ] && tags_offset="--tags_offset $(cat ./*-tags_offset)"
	$bin/mkbootimg $kernel $rd $second --cmdline "$cmdline" --board "$board" \
		$base $pagesize $kernel_offset $ramdisk_offset $second_offset $tags_offset $dtb \
		-o $tmp/boot-new.img
	[ $? != 0 -o ! -s $tmp/boot-new.img ] && {
		abort "Repacking boot image failed!"
	}
}

# backup old boot image
backup_boot() {
	print "Backing up old boot image to $boot_backup..."
	mkdir -p "$(dirname $boot_backup)"
	cp -f $tmp/boot.img $boot_backup
}

# write the new boot image to boot block
write_boot() {
	print "Writing new boot image to memory..."
	dd if="$tmp/boot-new.img" of="$boot_block"
}

## end install methods

. $tmp/env.sh

## start boot image patching

find_boot

dump_boot

determine_ramdisk_format

dump_ramdisk

patch_ramdisk

build_ramdisk

build_boot

backup_boot

write_boot

## end boot image patching
