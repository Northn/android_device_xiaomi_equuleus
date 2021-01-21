#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/equuleus/device.mk)

# Inherit some common Evolution X stuff.
EVO_MAINTAINER := DXM
EVO_SUPPORT_URL := https://t.me/Mi8ProGlobalOfficial
EXTRA_FOD_ANIMATIONS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_GOOGLE_RECORDER := true
WITH_GAPPS := true
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := evolution_equuleus
PRODUCT_DEVICE := equuleus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 8 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Build fingerprint
BUILD_FINGERPRINT := google/redfin/redfin:11/RQ1A.210105.003/7005429:user/release-keys
BUILD_DESCRIPTION := redfin-user 11 RQ1A.210105.003 7005429 release-keys

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="$(BUILD_DESCRIPTION)"
