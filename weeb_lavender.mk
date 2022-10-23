#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Weeb Project stuff
$(call inherit-product, vendor/weeb/build/product/weeb_product.mk)

# Inherit from lavender device
$(call inherit-product, $(LOCAL_PATH)/device.mk)
$(call inherit-product, $(LOCAL_PATH)/device-hidl.mk)

WITH_GMS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := weeb_lavender
PRODUCT_DEVICE := lavender
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="lavender" \
    PRODUCT_NAME="lavender" \
    PRIVATE_BUILD_DESC="lavender-user 9 PKQ1.180904.001 V11.0.5.0.PFGMIXM release-keys"

BUILD_FINGERPRINT :="google/raven/raven:12/SQ3A.220605.009.B1/8650216:user/release-keys"
