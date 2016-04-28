#! /bin/bash

cd /usr/src/linux-3.14
make CROSS_COMPILE=arm-linux-gnueabi- ARCH=arm vexpress_defconfig
make CROSS_COMPILE=arm-linux-gnueabi- ARCH=arm
