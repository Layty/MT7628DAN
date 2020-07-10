#
# Copyright (C) 2006-2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=libDLMS
PKG_VERSION:=20200612
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_MIRROR_HASH:=
PKG_SOURCE_PROTO:=git
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_URL:=https://github.com/Gurux/Gurux.DLMS.cpp.git
PKG_SOURCE_VERSION:=v$(PKG_VERSION)

PKG_LICENSE:=GPL
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk

define Package/libDLMS
  SECTION:=libs
  CATEGORY:=Libraries
  DEPENDS:=+USE_GLIBC:librt +libpthread $(CXX_DEPENDS)
  TITLE:=A DLMS protocol stack.
  URL:=http://gurux.fi/
  ABI_VERSION:=1
endef

define Package/libDLMS/description
 A DLMS protocol stack.
endef

define Build/Configure
endef

define Build/Compile
	$(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR) \
		CC="$(TARGET_CROSS)gcc" \
		CXX="$(TARGET_CROSS)g++" \
endef

define Package/libDLMS/install
	$(CP) $(PKG_BUILD_DIR)/libDLMS.so.* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libDLMS))
