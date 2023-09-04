#!/usr/bin/bash

sudo fdisk -l /dev/nbd0

# fdisk /dev/nbd0
# n -> 1 -> 2048 -> 4096
# t -> 4 # bios root

# n -> 2 -> 6144 -> 59000000
# t -> 2 -> 23 # linux root

# n -> 3 -> 59000832 -> 62912511
# t -> 3 -> 19 # linux swap

# w

# mkfs -v -t ext4 /dev/nbd0p2
# mkswap /dev/nbd0p3

sudo mount /dev/nbd0p2 $LFS
sudo mkdir -v $LFS/sources
sudo chmod -v a+wt $LFS/sources
