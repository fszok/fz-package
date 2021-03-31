# From https://github.com/DarkDean89/luci-app-filebrowser
# From https://github.com/stuarthua/oh-my-openwrt/tree/master/stuart/luci-app-fileassistant
# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI support for Fileassistant
LUCI_PKGARCH:=all
PKG_VERSION:=1.0
PKG_RELEASE:=2

include $(TOPDIR)/feeds/luci/luci.mk
# call BuildPackage - OpenWrt buildroot signature