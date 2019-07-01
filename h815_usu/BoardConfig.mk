# inherit board config for all g4's
include device/lge/g4/BoardConfig.mk

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4341104640
BOARD_USERDATAIMAGE_PARTITION_SIZE := 24897388544

# Kernel
TARGET_KERNEL_CONFIG := usu_h815_defconfig

