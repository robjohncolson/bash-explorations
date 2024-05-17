##
#Change the UUID's, of cource.
#
#mount UUID="6097f800-0730-422b-b0a2-bb261b3d7bd3" /mnt
mount PARTUUID="35506838-05" /mnt
swapon PARTUUID="35506838-06"
#swapon UUID="acc82c62-be14-41e6-82fc-9d623844014c"
mount -t proc /proc /mnt/proc
mount --rbind /sys /mnt/sys
mount --rbind /dev /mnt/dev
mount -o bind /dev/pts /mnt/dev/pts
mount PARTUUID="35506838-02" /mnt/boot
mount PARTUUID="35506838-01" /mnt/boot/EFI
cp /etc/resolv.conf /mnt/etc/resolv.conf
LANG=en_US.UTF-8 chroot /mnt /bin/bash

