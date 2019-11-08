#
# Copyright 2015 The CyanogenMod Project
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

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

LOCAL_PATH := $(call my-dir)

ifneq ($(filter %ls991_usu %f500_usu %h810_usu %h811 %h812_usu %h815 %h815_usu %h818_usu %h819_usu %us991_usu %vs986_usu,$(TARGET_PRODUCT)),)
    include $(call all-makefiles-under,$(LOCAL_PATH))
endif

#getholydebugvars:
#	$(hide) echo "TARGET_IS_64_BIT: $(TARGET_IS_64_BIT)"
#	$(hide) echo "TARGET_DEVICE: $(TARGET_DEVICE)"
#	$(hide) echo "TARGET_PRODUCT: $(TARGET_PRODUCT)"
#	$(hide) echo "PRODUCT_NAME: $(PRODUCT_NAME)"
#	$(hide) echo "PRODUCT_BUILD_PROP_OVERRIDES: $(PRODUCT_BUILD_PROP_OVERRIDES)"
#	$(hide) echo "TARGET_KERNEL_CONFIG: $(TARGET_KERNEL_CONFIG)"
#	$(hide) echo "TARGET_OTA_ASSERT_DEVICE: $(TARGET_OTA_ASSERT_DEVICE)"
#	$(hide) echo "BUILD_FINGERPRINT: $(BUILD_FINGERPRINT)"
#	$(hide) echo "TARGET_SCREEN_WIDTH: $(TARGET_SCREEN_WIDTH)"
#	$(hide) echo "CLEAN_MODEL: $(CLEAN_MODEL)"
#	$(hide) echo "DEBUGME: $(DEBUG_ME)"
