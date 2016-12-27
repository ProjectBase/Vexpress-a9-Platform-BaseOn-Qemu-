#!/bin/bash

find ../fs/rootfs_initrd | cpio -c -o > ../product/initrd.cpio
