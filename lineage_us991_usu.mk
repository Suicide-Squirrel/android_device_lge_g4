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

$(call inherit-product, $(LOCAL_PATH)/lineage.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Setup device specific product configuration
# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := us991_usu
PRODUCT_NAME := lineage_us991_usu
PRODUCT_BRAND := lge
PRODUCT_MODEL := LGUS991
PRODUCT_MANUFACTURER := LGE

CLEAN_MODEL := $(PRODUCT_DEVICE:_usu=)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g4" \
    PRODUCT_NAME="p1_global_com" \
    PRIVATE_BUILD_DESC="p1_usc_us-user 6.0 MRA58K 170760934a8b1 release-keys"

BUILD_FINGERPRINT := "lge/p1_usc_us/p1:6.0/MRA58K/170760934a8b1:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.do_not_init_csvt=1 \
    rild.libargs=-d /dev/smd0 \
    ril.subscription.types=NV,RUIM \
    ro.telephony.call_ring.multiple=0 \
    ro.telephony.default_network=8 \
    telephony.lteOnCdmaDevice=1

DEBUG_ME += lineage_us991_usu.mk
