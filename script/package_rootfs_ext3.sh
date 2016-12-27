#!/bin/bash

rm ../product/a9rootfs.ext3

dd if=/dev/zero of=../product/a9rootfs.ext3 bs=1M count=512
mkfs.ext3 ../product/a9rootfs.ext3


sudo mkdir ../product/tmpfs
sudo mount -t ext3 ../product/a9rootfs.ext3 ../product/tmpfs/ -o loop
sudo cp -r ../product/rootfs/*  ../product/tmpfs/
sudo umount ../product/tmpfs
