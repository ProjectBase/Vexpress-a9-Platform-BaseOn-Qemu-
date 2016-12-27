#!/bin/bash

product_path=../product

rm  -Rf $product_path/rootfs
mkdir $product_path/rootfs

# busy box
#cd /usr/OSS/busybox-1.20.2
#make defconfig
#make CROSS_COMPILE=arm-linux-gnueabi-
#:qmake install

#cd -
#mkdir $product_path/rootfs
sudo cp ../fs/rootfs/base/* -r $product_path/rootfs/

#arm lib gcc 
#cp -P /usr/arm-linux-gnueabi/lib/* $product_path/rootfs/lib/
#sudo mknod $product_path/rootfs/dev/tty1 c 4 1
#sudo mknod $product_path/rootfs/dev/tty2 c 4 2
#sudo mknod $product_path/rootfs/dev/tty3 c 4 3
#sudo mknod $product_path/rootfs/dev/tty4 c 4 4

sh package_rootfs.sh

#dd if=/dev/zero of=$product_path/a9rootfs.ext3 bs=1M count=1024
#mkfs.ext3 $product_path/a9rootfs.ext3


#sudo mkdir tmpfs
#sudo mount -t ext3 $product_path/a9rootfs.ext3 $product_path/tmpfs/ -o loop
#sudo cp -r $product_path/rootfs/*  $product_path/tmpfs/
#sudo umount $product_path/tmpfs
