#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add lienol package feed source
sed -i '$a src-git Lienol https://github.com/Lienol/openwrt-package.git' feeds.conf.default

# Add OpenWrt-Actions package feed source
sed -i '$a src-git OpenWrt_Actions https://github.com/OpenWrt-Actions/helloworld.git' feeds.conf.default

# Add MJ package feed source
sed -i '$a src-git Fsick https://github.com/Fsick/openwrt-packages.git' feeds.conf.default
