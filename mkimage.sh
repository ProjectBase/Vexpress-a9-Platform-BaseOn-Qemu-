#! /bin/bash

cd /usr/src/linux-3.14.48
#make CROSS_COMPILE=arm-linux-gnueabi- ARCH=arm vexpress_defconfig
make CROSS_COMPILE=arm-linux-gnueabi- ARCH=arm
make CROSS_COMPILE=arm-linux-gnueabi- ARCH=arm  modules_install INSTALL_MOD_PATH=/usr/M_Workspace/vexpress-a9/rootfs


