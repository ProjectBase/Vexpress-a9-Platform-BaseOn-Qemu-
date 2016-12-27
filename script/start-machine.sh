#!/bin/bash

qemu-system-arm -M vexpress-a9 -m 512M -kernel /usr/src/linux-3.14.48/arch/arm/boot/zImage  -append "root=/dev/mmcblk0 rw  console=ttyAMA0" -sd ../product/a9rootfs.ext3  -initrd ../product/initrd.cpio -net nic,vlan=0 -net tap,vlan=0
#qemu-system-arm -M vexpress-a9 -m 512M -kernel /usr/src/linux-3.14.48/arch/arm/boot/zImage -nographic -append "root=/dev/mmcblk0 rw  console=ttyAMA0" -sd a9rootfs.ext3  -initrd initrd.cpio -net nic,vlan=0 -net tap,vlan=0  

#qemu-system-arm -M vexpress-a9 -m 512M -kernel /usr/src/linux-3.14.48/arch/arm/boot/zImage -nographic -append "root=/dev/mmcblk0 rw  noinitrd console=ttyAMA0" -sd a9rootfs.ext3

