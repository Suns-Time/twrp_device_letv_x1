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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)
# Recovery
PRODUCT_PACKAGES += \
    chargeled \
    init.rc \
    fstab.qcom \
    init.qcom.rc \
    ueventd.qcom.rc \
    verity_key \
    init.recovery.qcom.rc
        
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

# Release name
PRODUCT_RELEASE_NAME := Le1Pro_CN

# Inherit some common DU stuff.
## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_x1
PRODUCT_DEVICE := x1
PRODUCT_BRAND := Letv
PRODUCT_MODEL := X800+
PRODUCT_MANUFACTURER := Letv

