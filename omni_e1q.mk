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
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from e1q device
$(call inherit-product, device/samsung/e1q/device.mk)

PRODUCT_DEVICE := e1q
PRODUCT_NAME := omni_e1q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-S9210
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="e1qzcx-user 14 UP1A.231005.007 S9210ZCU2AXE1 release-keys"

BUILD_FINGERPRINT := samsung/e1qzcx/e1q:14/UP1A.231005.007/S9210ZCU2AXE1:user/release-keys
