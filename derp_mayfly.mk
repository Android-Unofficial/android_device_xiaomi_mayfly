#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Derpfest stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Inherit from mayfly device
$(call inherit-product, device/xiaomi/mayfly/device.mk)

DERP_VERSION_APPEND_TIME_OF_DAY=true
DERP_BUILDTYPE := UNOFFICIAL
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_USES_PICO_GAPPS := true

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := mayfly
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 2206123SC
PRODUCT_NAME := derp_mayfly

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="mayfly-user 14 UKQ1.231003.002 V816.0.14.0.ULTCNXM release-keys" \
    BuildFingerprint=Xiaomi/mayfly/mayfly:14/UKQ1.231003.002/V816.0.14.0.ULTCNXM:user/release-keys \
    DeviceProduct=mayfly \
    SystemName=mayfly

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
