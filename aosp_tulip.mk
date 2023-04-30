#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common AOSP stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from tulip device
$(call inherit-product, device/xiaomi/tulip/device.mk)

# Elixir stuffs
BUILD_USERNAME := Mocha
BUILD_HOSTNAME := Elixir
ELIXIR_BUILD_TYPE := OFFICIAL
TARGET_INCLUDE_STOCK_ACORE := false
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_PIXEL_CHARGER := true

# Device Info
PRODUCT_NAME := aosp_tulip
PRODUCT_DEVICE := tulip
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 6 Pro
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR_PRODUCT_NAME := tulip

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tulip-user 9 PKQ1.180904.001 V10.3.2.0.PEKMIXM release-keys"

BUILD_FINGERPRINT := xiaomi/tulip/tulip:9/PKQ1.180904.001/V10.3.2.0.PEKMIXM:user/release-keys
