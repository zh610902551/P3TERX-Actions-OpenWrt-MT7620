#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
- name: Update luci-app-ssr-plus-Jo
        run: |
git clone -b lean  https://github.com/Sweet-Fairy/luci-app-ssr-plus-Jo package/luci-app-ssr-plus-lean

- name: Update feeds
        run: |
          ./scripts/feeds update -a
          ./scripts/feeds install -a
