#
# Copyright (C) 2025
# SPDX-License-Identifier: Apache-2.0
#

# Release
PRODUCT_RELEASE_NAME := TANK2

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Configure twrp config common.mk
$(call inherit-product, vendor/twrp/config/common.mk)

# Device specific configs
$(call inherit-product, device/oblue/TANK2/device.mk)

# Configure launch_with_vendor_ramdisk.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

# Configure compression
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/compression.mk)

# Configure virtual_ab_ota.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Configure emulated_storage.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Identifiers
PRODUCT_DEVICE := TANK2
PRODUCT_NAME := twrp_TANK2
PRODUCT_BRAND := 8849
PRODUCT_MODEL := TANK2
PRODUCT_MANUFACTURER := oblue
