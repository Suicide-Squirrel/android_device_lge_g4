# inherit board config for all g4's
include device/lge/g4/BoardConfig.mk

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4492099584
BOARD_USERDATAIMAGE_PARTITION_SIZE := 24935137280

BOARD_DISABLE_BLOCK_BASED_OTA := true

# Kernel
TARGET_KERNEL_CONFIG := usu_us991_defconfig

