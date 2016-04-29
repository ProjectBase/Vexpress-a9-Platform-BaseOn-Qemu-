#!/bin/bash

find rootfs_initrd | cpio -c -o > initrd.cpio
