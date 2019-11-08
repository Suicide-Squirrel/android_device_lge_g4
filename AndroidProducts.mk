#
# Copyright 2015 The Android Open Source Project
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

# Screen density
# must be defined here as they get readonly later on
PRODUCT_AAPT_PREF_CONFIG := 560dpi
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

PRODUCT_MAKEFILES += \
	$(LOCAL_DIR)/lineage_f500_usu.mk \
	$(LOCAL_DIR)/lineage_h810_usu.mk \
	$(LOCAL_DIR)/lineage_h811.mk \
	$(LOCAL_DIR)/lineage_h812_usu.mk \
	$(LOCAL_DIR)/lineage_h815.mk \
	$(LOCAL_DIR)/lineage_h815_usu.mk \
	$(LOCAL_DIR)/lineage_ls991_usu.mk \
	$(LOCAL_DIR)/lineage_us991_usu.mk \
	$(LOCAL_DIR)/lineage_vs986_usu.mk

COMMON_LUNCH_CHOICES := \
	lineage_f500_usu-userdebug \
	lineage_f500_usu-user \
	lineage_f500_usu-eng \
	lineage_h810_usu-userdebug \
	lineage_h810_usu-user \
	lineage_h810_usu-eng \
	lineage_h811-userdebug \
	lineage_h811-user \
	lineage_h811-eng \
	lineage_h812_usu-userdebug \
	lineage_h812_usu-user \
	lineage_h812_usu-eng \
	lineage_h815-userdebug \
	lineage_h815-user \
	lineage_h815-eng \
	lineage_h815_usu-userdebug \
	lineage_h815_usu-user \
	lineage_h815_usu-eng \
	lineage_ls991_usu-userdebug \
	lineage_ls991_usu-user \
	lineage_ls991_usu-eng \
	lineage_us991_usu-userdebug \
	lineage_us991_usu-user \
	lineage_us991_usu-eng \
	lineage_vs986_usu-userdebug \
	lineage_vs986_usu-user \
	lineage_vs986_usu-eng

