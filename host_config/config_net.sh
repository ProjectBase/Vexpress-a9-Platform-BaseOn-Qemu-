#!/bin/bash

sudo echo "#! /bin/bash " > /etc/qemu-ifup 
sudo echo "ifconfig $1 172.20.0.1" >> /etc/qemu-ifup
sudo chomd +x /etc/qemu-ifup

