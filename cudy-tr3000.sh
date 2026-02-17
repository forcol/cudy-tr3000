#!/bin/bash

# git clone -b openwrt-24.10-6.6 --single-branch --filter=blob:none https://github.com/padavanonly/immortalwrt-mt798x-24.10 immortalwrt-mt798x-24.10
# cd immortalwrt-mt798x-24.10

# git config --local https.proxy socks5://host.docker.internal:1080

# ./scripts/feeds update -a
# ./scripts/feeds install -a

# defconfig
# cp -f ../.config .config
# cp -f defconfig/mt7981-ax3000.config .config
sed -i 's|IMG_PREFIX:=|IMG_PREFIX:=$(shell TZ="Asia/Shanghai" date +"%Y%m%d")-24.10-6.6-|' include/image.mk
# make menuconfig

# compile and build
# make download -j8
# make -j$(nproc)
