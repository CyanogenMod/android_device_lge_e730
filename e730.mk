$(call inherit-product, device/lge/victor-common/victor.mk)

# The gps config appropriate for this device
PRODUCT_COPY_FILES += device/common/gps/gps.conf_EU:system/etc/gps.conf

# Inherit non-open-source blobs.
$(call inherit-product-if-exists, vendor/lge/e730/e730-vendor.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/lge/e730/prebuilt/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    device/lge/e730/prebuilt/wireless.ko:system/lib/modules/wireless.ko \
    device/lge/e730/prebuilt/fbconsole.ko:system/lib/modules/fbconsole.ko

PRODUCT_NAME := e730
PRODUCT_DEVICE := e730
PRODUCT_MODEL := LG Optimus Sol
