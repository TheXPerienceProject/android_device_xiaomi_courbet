#
# Copyright (C) 2021 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_SHIPPING_API_LEVEL := 30

# AAPT
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Dynamic partitions setup
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/audio_policy_configuration.xml

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Fastboot 
PRODUCT_PACKAGES += \
    fastbootd \
    android.hardware.fastboot@1.0-impl-mock

# File systems table
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:$(TARGET_COPY_OUT_RAMDISK)/fstab.default

# Device Settings
PRODUCT_PACKAGES += \
    XiaomiParts

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/parts/privapp-permissions-parts.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-parts.xml

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/init.courbet.rc:$(TARGET_COPY_OUT_SYSTEM)/etc/init/init.courbet.rc

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.courbet

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# VINTF
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/vintf/android.hardware.lights-qti.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/android.hardware.lights-qti.xml

# NFC
PRODUCT_PACKAGES += \
    NfcNci \
    Tag \
    SecureElement \
    com.android.nfc_extras

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/android.hardware.telephony.ims.xml

# Telephony
PRODUCT_PACKAGES += \
    ims-ext-common \
    ims_ext_common.xml \
    qti-telephony-hidl-wrapper \
    qti_telephony_hidl_wrapper.xml \
    qti-telephony-utils \
    qti_telephony_utils.xml \
    telephony-ext \

PRODUCT_BOOT_JARS += \
    telephony-ext

include vendor/xiaomi/courbet/courbet-vendor.mk

