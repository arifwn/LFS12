#!/usr/bin/bash

# echo "creating a new image..."
# qemu-img create -f qcow2 ./kvm/lfs.qcow2 30G

echo "mounting image..."

sudo modprobe nbd max_part=8

sudo qemu-nbd --connect=/dev/nbd0 ./kvm/lfs.qcow2

echo "list of disk..."
sudo fdisk /dev/nbd0 -l

sudo mount /dev/nbd0p2 $LFS

echo "done, enter lfs account using sudo su - lfs"