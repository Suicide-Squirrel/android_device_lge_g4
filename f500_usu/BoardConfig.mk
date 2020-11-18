# inherit board config for all g4's
include device/lge/g4/BoardConfig.mk

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4492099584
BOARD_USERDATAIMAGE_PARTITION_SIZE := 24935137280

# Kernel
TARGET_KERNEL_CONFIG := usu_f500_defconfig

