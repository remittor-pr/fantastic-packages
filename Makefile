#
# Copyright (C) 2023 muink
#
# This is free software, licensed under the GNU General Public License v3.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

PKG_NAME:=fantastic-packages
PKG_VERSION:=1.0
PKG_RELEASE:=20230220

PKG_MAINTAINER:=muink <hukk1996@gmail.com>
PKG_LICENSE:=GPL-3
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE:=self-use openwrt extended packages
	URL:=https://github.com/muink/fantastic-packages
	DEPENDS:=\
		+alwaysonline \
		+go-stun \
		+natter \
		+pcap-dnsproxy \
		+rgmac \
		+luci-app-alwaysonline \
		+luci-app-change-mac \
		+luci-app-diskman \
		+luci-app-natter \
		+luci-app-netdata \
		+luci-app-netspeedtest \
		+luci-app-packagesync \
		+luci-app-pcap-dnsproxy \
		+luci-app-tinyfilemanager \
		+luci-app-tn-netports
	PKGARCH:=all
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
endef

define Package/$(PKG_NAME)/conffiles
endef

define Package/$(PKG_NAME)/postinst
endef

define Package/$(PKG_NAME)/prerm
endef


$(eval $(call BuildPackage,$(PKG_NAME)))