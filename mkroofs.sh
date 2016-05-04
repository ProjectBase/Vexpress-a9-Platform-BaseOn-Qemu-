#!/bin/bash

cd /usr/OSS/busybox-1.20.2
make defconfig
make CROSS_COMPILE=arm-linux-gnueabi-
make install

cd -
mkdir rootfs
cp /usr/OSS/busybox-1.20.2/_install/* -r rootfs/
cp -P /usr/arm-linux-gnueabi/lib/* rootfs/lib/
sudo mknod rootfs/dev/tty1 c 4 1
sudo mknod rootfs/dev/tty2 c 4 2
sudo mknod rootfs/dev/tty3 c 4 3
sudo mknod rootfs/dev/tty4 c 4 4


dd if=/dev/zero of=a9rootfs.ext3 bs=1M count=1024
mkfs.ext3 a9rootfs.ext3


sudo mkdir tmpfs
sudo mount -t ext3 a9rootfs.ext3 tmpfs/ -o loop
sudo cp -r rootfs/*  tmpfs/
sudo umount tmpfs
