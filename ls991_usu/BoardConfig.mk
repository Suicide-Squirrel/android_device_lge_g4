# inherit board config for all g4's
include device/lge/g4/BoardConfig.mk

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4565499904
BOARD_USERDATAIMAGE_PARTITION_SIZE := 24861736960

BOARD_DISABLE_BLOCK_BASED_OTA := true

# Kernel
TARGET_KERNEL_CONFIG := usu_ls991_defconfig

