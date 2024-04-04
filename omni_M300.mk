#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from M300 device
$(call inherit-product, device/hiby/M300/device.mk)

PRODUCT_DEVICE := M300
PRODUCT_NAME := omni_M300
PRODUCT_BRAND := HIBYDIGITAL
PRODUCT_MODEL := M300
PRODUCT_MANUFACTURER := hiby

PRODUCT_GMS_CLIENTID_BASE := android-hiby

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="M300-user 11 RKQ1.211119.001 HiBy01261848 dev-keys"

BUILD_FINGERPRINT := HIBYDIGITAL/M300/M300:11/RKQ1.211119.001/HiBy01261848:user/dev-keys
