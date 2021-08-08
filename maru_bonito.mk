#
# Copyright 2021 The Maru OS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# -----------------------------------------------------------------------------
# Include LineageOS stuff

$(call inherit-product, device/google/bonito/lineage_bonito.mk)

# -----------------------------------------------------------------------------
# Include Maru stuff

$(call inherit-product, vendor/maruos/device-maru.mk)
$(call inherit-product, vendor/maruos/BoardConfigVendor.mk)

PRODUCT_NAME := maru_bonito
PRODUCT_MODEL := Maru on the Google Pixel 3a XL
