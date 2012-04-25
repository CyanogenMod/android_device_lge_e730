$(call inherit-product, device/lge/victor-common/victor.mk)

# The gps config appropriate for this device
PRODUCT_COPY_FILES += device/common/gps/gps.conf_EU:system/etc/gps.conf

# Inherit non-open-source blobs.
$(call inherit-product-if-exists, vendor/lge/e730/device-vendor.mk)

PRODUCT_COPY_FILES += \
    device/lge/e730/prebuilt/wireless.ko:system/lib/modules/wireless.ko
