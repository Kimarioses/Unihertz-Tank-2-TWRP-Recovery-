#
# Copyright (C) 2025
# SPDX-License-Identifier: Apache-2.0
#

# Release
PRODUCT_RELEASE_NAME := TANK2

# Inherit from base
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit TWRP common config (TWRP 14)
$(call inherit-product, vendor/twrp/config/common.mk)

# Device path
$(call inherit-product, device/oblue/TANK2/device.mk)

# Identifiers
PRODUCT_DEVICE := TANK2
PRODUCT_NAME := twrp_TANK2
PRODUCT_BRAND := 8849
PRODUCT_MODEL := TANK2
PRODUCT_MANUFACTURER := oblue
