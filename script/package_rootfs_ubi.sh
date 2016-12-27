#!/bin/bash

rm ../product/a9rootfs.ubifs

mkfs.ubifs -r ../product/rootfs -m 512 -e 15872 -c 6500 -o a9rootfs.ubifs
ubinize -o a9rootfs.ubifs  -m 512 -p 16KiB -s 256 ubinize.cfg
