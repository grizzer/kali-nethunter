#!/sbin/sh
# Install Kali chroot

TMP=/tmp/nethunter

. $TMP/env.sh

console=$(cat /tmp/console)
[ "$console" ] || console=/proc/$$/fd/1

print() {
	echo "ui_print - $1" > $console
	echo
}

NHSYS=/data/local/nhsystem

# Check installer for kalifs archive
KALIFS=$(ls $TMP/kalifs-*.tar.xz)
# If not found, check /data/local instead
[ -f "$KALIFS" ] || KALIFS=$(ls /data/local/kalifs-*.tar.xz)

# If kalifs-*.tar.xz is present, then extract
[ -f "$KALIFS" ] && {
	print "Found Kali chroot to be installed: $KALIFS"
	mkdir -p "$NHSYS"

	# Remove previous chroot
	[ -d "$NHSYS/kali-$ARCH" ] && {
		print "Removing previous chroot..."
		rm -rf "$NHSYS/kali-$ARCH"
	}

	# Extract new chroot
	print "Extracting Kali rootfs, this may take a while..."
	tar -xJ -f "$KALIFS" -C "$NHSYS"
	print "Kali chroot installed"

	# We should remove the rootfs archive to free up device memory or storage space
	rm -f "$KALIFS"
} || {
	print "No Kali rootfs archive found. Skipping..."
}
