#
# Copyright (C) 2018 The Android Open-Source Project
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

# Specify arch for gapps
TARGET_GAPPS_ARCH=arm64

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common SSOS stuff.
$(call inherit-product, vendor/yaap/config/common_full_phone.mk)

$(call inherit-product, device/realme/RMX1851/device.mk)

TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := yaap_RMX1851
PRODUCT_DEVICE := RMX1851
PRODUCT_MANUFACTURER := Realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme 3 Pro

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="RMX1851"
    
#USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service
