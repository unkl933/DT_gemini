#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from gemini device
$(call inherit-product, device/xiaomi/gemini/device.mk)

# Inherit some common PixelExperience stuff.
$(call inherit-product, vendor/nusantara/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080

# Official Nusantara
TARGET_USES_BLUR := true
USE_PIXEL_CHARGING := true
NAD_BUILD_TYPE ?= UNOFFICIAL
TARGET_BOOT_ANIMATION_RES := 1080
USE_GAPPS ?= true
USE_AOSP_CLOCK := true
USE_LAWNCHAIR := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := nad_gemini
PRODUCT_DEVICE := gemini
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 5
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 12 SQ1A.220205.002 8010174 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/redfin/redfin:12/SQ1A.220205.002/8010174:user/release-keys

TARGET_VENDOR := Xiaomi
