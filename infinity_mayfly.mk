#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Inherit from mayfly device
$(call inherit-product, device/xiaomi/mayfly/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := mayfly
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 2206123SC
PRODUCT_NAME := infinity_mayfly

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="mayfly-user 15 AQ3A.241006.001 OS2.0.5.0.VLTCNXM release-keys" \
    BuildFingerprint=Xiaomi/mayfly/mayfly:15/AQ3A.241006.001/OS2.0.5.0.VLTCNXM:user/release-keys \
    DeviceProduct=mayfly \
    SystemName=mayfly

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

#infinity_x Flags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_DISABLE_EPPE := true
TARGET_ENABLE_BLUR := true
TARGET_HAS_UDFPS := true
# Whether you are compiling being an OFFICIAL Maintainer:
INFINITY_BUILD_TYPE := UNOFFICIAL
# Maintainer Name
INFINITY_MAINTAINER := KernelPanix
# Whether the compiled package ships Widely Used Minimal Google Apps:
WITH_GAPPS := true
# Whether the compiled package ships Complete present Google Apps:
TARGET_SHIPS_FULL_GAPPS := false # (WITH_GAPPS must be set to true alongside)
# Whether the compiled shipped gapps package uses Google Dialer, Messaging, Contacts:
TARGET_BUILD_GOOGLE_TELEPHONY := true # (WITH_GAPPS must be set to true alongside)
# Whether the compiled package ships Moto Calculator irrespective VANILLA or GAPPS:
USE_MOTO_CALCULATOR := true
