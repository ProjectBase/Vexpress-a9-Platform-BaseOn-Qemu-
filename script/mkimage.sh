#! /bin/bash

cd /usr/src/linux-3.14.48
export CROSS_COMPILE=arm-linux-gnueabi- ARCH=arm
#mv .config .config_old
#cp arch/arm/configs/vexpress_defconfig .config

make CROSS_COMPILE=arm-linux-gnueabi- ARCH=arm
make CROSS_COMPILE=arm-linux-gnueabi- ARCH=arm  modules_install INSTALL_MOD_PATH=/usr/M_Workspace/vexpress-a9/fs/kernel


