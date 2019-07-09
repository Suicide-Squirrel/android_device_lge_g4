# inherit board config for all g4's
include device/lge/g4/BoardConfig.mk

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4341104640
BOARD_USERDATAIMAGE_PARTITION_SIZE := 24897388544

BOARD_DISABLE_BLOCK_BASED_OTA := true

# Kernel
TARGET_KERNEL_CONFIG := usu_vs986_defconfig

