#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from X6855 device
$(call inherit-product, device/infinix/X6855/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/pb/config/common.mk)

PRODUCT_DEVICE := X6855
PRODUCT_NAME := pb_X6855
PRODUCT_BRAND := INFINIX
PRODUCT_MODEL := Infinix X6855
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix
