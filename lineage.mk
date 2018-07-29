# Inherit AOSP device configuration for H815
$(call inherit-product, device/lge/h815_usu/full_h815.mk)

# Inherit Lineage common bits
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Setup device specific product configuration
PRODUCT_NAME := lineage_h815_usu

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g4" \
    PRODUCT_NAME="g4_global_com" \
    PRIVATE_BUILD_DESC="p1_global_com-user 6.0 MRA58K 152940055675e release-keys"

BUILD_FINGERPRINT := "lge/p1_global_com/p1:6.0/MRA58K/152940055675e:user/release-keys"
