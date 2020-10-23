#
# Copyright (C) 2006-2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=gather
PKG_VERSION:=1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_MIRROR_HASH:=
PKG_SOURCE_PROTO:=git
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_URL:=https://github.com/AzenkChina/gather.git
PKG_SOURCE_VERSION:=

PKG_LICENSE:=GPL
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk

define Package/gather
  SECTION:=utils
  CATEGORY:=Utilities
  DEPENDS:=+libDLMS +lua
  TITLE:=A dlms client
  URL:=https://github.com/AzenkChina
  ABI_VERSION:=1
endef

define Package/gather/description
 A dlms client.
endef

define Build/Configure
endef

define Build/Compile
	$(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR) \
		PLAT=LINUX \
		CC="$(TARGET_CROSS)gcc" \
		CXX="$(TARGET_CROSS)g++"
endef

define Package/gather/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/gather $(1)/usr/bin
	$(INSTALL_BIN) ./files/gatherd $(1)/usr/bin
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_CONF) ./files/collector.conf $(1)/etc/config/collector
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/collector.init $(1)/etc/init.d/collector
endef

$(eval $(call BuildPackage,gather))

