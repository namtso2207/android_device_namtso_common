CUR_PATH := device/namtso/common/bootshutdown

HAVE_BOOT_ANIMATION := $(shell test -f $(CUR_PATH)/bootanimation.zip && echo yes)
HAVE_SHUTDOWN_ANIMATION := $(shell test -f $(CUR_PATH)/shutdownanimation.zip && echo yes)

ifeq ($(HAVE_BOOT_ANIMATION), yes)
PRODUCT_COPY_FILES += $(CUR_PATH)/bootanimation.zip:$(TARGET_COPY_OUT_SYSTEM)/media/bootanimation.zip
endif
ifeq ($(HAVE_SHUTDOWN_ANIMATION), yes)
PRODUCT_COPY_FILES += $(CUR_PATH)/shutdownanimation.zip:$(TARGET_COPY_OUT_SYSTEM)/media/shutdownanimation.zip
endif
