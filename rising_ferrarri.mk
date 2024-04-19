#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ferrarri device
$(call inherit-product, device/realme/ferrarri/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/rising/config/rising.mk)

PRODUCT_NAME := rising_ferrarri
PRODUCT_DEVICE := ferrarri
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3301

PRODUCT_SYSTEM_NAME := RED8ACL1
PRODUCT_SYSTEM_DEVICE := RED8ACL1

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX3301-user 14 UP1A.230620.001 S.14b9d95_34b46-2684b release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := realme/RMX3301/RED8ACL1:14/UP1A.230620.001/S.14b9d95_34b46-2684b:user/release-keys

# Rising flags
RISING_MAINTAINER := "Arman-ATI"
RISING_CHIPSET := "SM8450"

# Gapps
WITH_GMS := true

# Flags
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := true
TARGET_HAS_UDFPS := true
TARGET_USE_GOOGLE_TELEPHONY := true

# ADB root
ALLOW_LOCAL_PROP_OVERRIDE := true
ALLOW_ADBD_ROOT := true