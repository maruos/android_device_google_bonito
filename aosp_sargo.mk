#
# Copyright 2016 The Android Open Source Project
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

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

$(call inherit-product, device/google/bonito/device-sargo.mk)
# region @maru
# The generated bonito device-vendor.mk will overwrite sargo's device-vendor.mk, and we don't
# hava a good method to use TARGET_DEVICE to identify current device, because it is not
# prepared now when calling device-vendor.mk. If you are a developer for sargo/bonito,
# please copy device-vendor.mk to device-vendor-sargo.mk, and change bonito-vendor-blob.mk to
# sargo-vendor-blob.mk.
# $(call inherit-product-if-exists, vendor/google_devices/bonito/proprietary/device-vendor.mk)
$(call inherit-product-if-exists, vendor/google_devices/bonito/proprietary/device-vendor-sargo.mk)
# endregion

PRODUCT_PACKAGES += \
    Dialer \
    Launcher3 \
    WallpaperPicker

# STOPSHIP deal with Qualcomm stuff later
# PRODUCT_RESTRICT_VENDOR_FILES := all

PRODUCT_MANUFACTURER := Google
PRODUCT_BRAND := Android
PRODUCT_NAME := aosp_sargo
PRODUCT_DEVICE := sargo
PRODUCT_MODEL := AOSP on sargo

# Audio XMLs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml

