#
# Copyright (C) 2015 The CyanogenMod Project
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


# Get non-open-source specific aspects
# as TARGET_DEVICE is not yet avail here we use % wildcard to match LOS and other
# ROM flavors
ifneq ($(filter %f500_usu %h815 %h815_usu %h818_usu %h819_usu, $(TARGET_PRODUCT)),)
    $(call inherit-product-if-exists, vendor/lge/h815/h815-vendor.mk)
    DEBUG_ME += blob1
endif
ifneq ($(filter %ls991_usu %h810_usu %h811 %h812_usu %us991_usu %vs986_usu,$(TARGET_PRODUCT)),)
    $(call inherit-product-if-exists, vendor/lge/h811/h811-vendor.mk)
    DEBUG_ME += blob2
endif

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

ifneq ($(filter %f500_usu %h815 %h815_usu %h818_usu %h819_usu, $(TARGET_PRODUCT)),)
# Init configuration
PRODUCT_PACKAGES += \
    fstab.g4 \
    init.device.rc
DEBUG_ME += fstab
endif

# common g4
$(call inherit-product, device/lge/g4-common/g4.mk)
