#!/usr/bin/bash

echo "unmounting image..."
sudo umount $LFS
sudo qemu-nbd --disconnect /dev/nbd0
echo "done"