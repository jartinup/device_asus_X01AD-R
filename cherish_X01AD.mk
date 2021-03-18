#
# Copyright (C) 2020 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/asus/X01AD

# Inherit from source
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Set shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit common Pixelexperience stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 720
TARGET_GAPPS_ARCH := arm64

# Gapps Config
TARGET_GAPPS_ARCH := arm64
#TARGET_INCLUDE_WIFI_EXT := true
CHERISH_WITHGAPPS := true

# Pixel customization
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Inherit device stuff
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Device identifiers.
PRODUCT_DEVICE := X01AD
PRODUCT_NAME := cherish_X01AD
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS Zenfone Max M2
PRODUCT_MANUFACTURER := asus
TARGET_VENDOR := asus
BOARD_VENDOR := asus

# Maintainer
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cherish.maintainer=KryptoniteX
	
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_MODEL=ASUS_X01AD \
    PRIVATE_BUILD_DISC="redfin-user 11 RQ2A.210305.006 7119741 release-keys"

BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ2A.210305.006/7119741:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
	
PRODUCT_GMS_CLIENTID_BASE := android-asus

#faceunlock
TARGET_FACE_UNLOCK_SUPPORTED := true

#dependencies
ALLOW_MISSING_DEPENDENCIES=true
