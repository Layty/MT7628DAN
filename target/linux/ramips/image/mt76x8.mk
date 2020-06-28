#
# MT76x8 Profiles
#

define Device/dlmsniffer
 DTS := DLMSniffer
 IMAGE_SIZE := $(ralink_default_fw_size_8M)
 DEVICE_TITLE := DLMSniffer
 DEVICE_PACKAGES := kmod-mt76x2
endef
TARGET_DEVICES += dlmsniffer

