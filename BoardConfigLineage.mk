# Common board config for bonito, sargo

BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --set_hashtree_disabled_flag
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 2

BOARD_KERNEL_IMAGE_NAME := Image.lz4-dtb
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CLANG_COMPILE := true
# region @maru
# TARGET_KERNEL_CONFIG := lineageos_bonito_defconfig
TARGET_KERNEL_CONFIG := maru_bonito_defconfig
# endregion
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_KERNEL_SOURCE := kernel/google/bonito

-include vendor/google/bonito/BoardConfigVendor.mk
