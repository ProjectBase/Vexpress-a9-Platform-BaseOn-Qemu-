#!/bin/bash

qemu-system-arm -M vexpress-a9 -m 512M -kernel /usr/src/linux-3.14.48/arch/arm/boot/zImage -nographic -append "root=/dev/mmcblk0 rw  noinitrd console=ttyAMA0" -sd a9rootfs.ext3

#qemu-system-arm -M vexpress-a9 -m 512M -kernel /usr/src/linux-3.14.48/arch/arm/boot/zImage -nographic  -append "root=/dev/sda rw  noinitrd console=ttyAMA0" -hda ./a9rootfs.ext3
