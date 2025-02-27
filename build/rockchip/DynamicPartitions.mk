# Enable dynamic partitions, Android Q must set this by default.
# Use the non-open-source parts, if they're present
# Android Q -> api_level 29, Pie or earlier should not include this makefile

# Default FS type
#ROCKCHIP_READ_ONLY_FILE_SYSTEM_TYPE ?= erofs
ROCKCHIP_READ_ONLY_FILE_SYSTEM_TYPE ?= ext4

PRODUCT_USE_DYNAMIC_PARTITIONS := true

BOARD_USES_SYSTEM_DLKMIMAGE := true
TARGET_COPY_OUT_SYSTEM_DLKM := system_dlkm
BOARD_SYSTEM_DLKMIMAGE_FILE_SYSTEM_TYPE := $(ROCKCHIP_READ_ONLY_FILE_SYSTEM_TYPE)

# Add standalone odm partition configrations
PRODUCT_BUILD_PRODUCT_IMAGE := true
TARGET_COPY_OUT_PRODUCT := product
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := $(ROCKCHIP_READ_ONLY_FILE_SYSTEM_TYPE)

PRODUCT_BUILD_SYSTEM_EXT_IMAGE := true
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := $(ROCKCHIP_READ_ONLY_FILE_SYSTEM_TYPE)

PRODUCT_BUILD_VENDOR_DLKM_IMAGE := true
TARGET_COPY_OUT_VENDOR_DLKM := vendor_dlkm
BOARD_VENDOR_DLKMIMAGE_FILE_SYSTEM_TYPE := $(ROCKCHIP_READ_ONLY_FILE_SYSTEM_TYPE)

PRODUCT_BUILD_ODM_DLKM_IMAGE := true
TARGET_COPY_OUT_ODM_DLKM := odm_dlkm
BOARD_ODM_DLKMIMAGE_FILE_SYSTEM_TYPE := $(ROCKCHIP_READ_ONLY_FILE_SYSTEM_TYPE)

BOARD_BUILD_SUPER_IMAGE_BY_DEFAULT := true
BOARD_SUPER_PARTITION_GROUPS := rockchip_dynamic_partitions
BOARD_ROCKCHIP_DYNAMIC_PARTITIONS_PARTITION_LIST := \
    system system_dlkm system_ext \
    vendor vendor_dlkm \
    odm odm_dlkm \
    product
