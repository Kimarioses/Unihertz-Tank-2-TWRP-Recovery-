#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/oblue/TANK2

# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# A/B partitions
ENABLE_VIRTUAL_AB := true
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    dtbo \
    system \
    vendor \
    product \
    system_ext \
    boot \
    vendor \
    vendor_boot \
    vendor_dlkm \
    vbmeta \
    vbmeta_vendor \
    vbmeta_system \

# Update Engine & Update Verifier 
PRODUCT_PACKAGES += \
    update_engine \
    update_verifier \
    update_engine_sideload

# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# A/B 
PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.boot@1.2-service

PRODUCT_PACKAGES_DEBUG += \
    bootctrl 

PRODUCT_PACKAGES += \
    bootctrl.mt6789 \
    bootctrl.mt6789.recovery

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health HAL
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Additional Libraries
TARGET_RECOVERY_DEVICE_MODULES += \
    libkeymaster4 \
    libkeymaster41 \
    libpuresoftkeymasterdevice

RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster4.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster41.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so
