#!/usr/bin/bash

wget --input-file=$LFS/../misc/wget-list-sysv --continue --directory-prefix=$LFS/sources

pushd $LFS/sources
  md5sum -c $LFS/../misc/md5sums
popd


chown root:root $LFS/sources/*
