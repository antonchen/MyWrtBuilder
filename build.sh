#!/bin/bash

# 打印 info
make info

# 主配置名称
PROFILE="generic"

PACKAGES=""

# Argon 主题
PACKAGES="$PACKAGES luci-theme-argonv3"

# 代理
PACKAGES="$PACKAGES luci-app-mosdns luci-i18n-mosdns-zh-cn"
PACKAGES="$PACKAGES luci-app-passwall luci-i18n-passwall-zh-cn ipset"

# 界面翻译补全
PACKAGES="$PACKAGES luci-i18n-base-zh-cn luci-i18n-firewall-zh-cn luci-i18n-turboacc-zh-cn"

# 常用服务
PACKAGES="$PACKAGES ipv6helper luci-app-vlmcsd luci-app-upnp luci-i18n-upnp-zh-cn"
# LXC
PACKAGES="$PACKAGES luci-app-lxc"

# 不需要的包
PACKAGES="$PACKAGES -luci-app-filetransfer -luci-app-cpufreq"

# 一些自定义文件
FILES="files"

make image PROFILE="$PROFILE" PACKAGES="$PACKAGES" FILES="$FILES"
