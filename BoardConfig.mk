# inherit from the proprietary version
-include vendor/lge/e730/BoardConfigVendor.mk

-include device/lge/victor-common/BoardConfigCommon.mk

# Try to build the kernel
TARGET_KERNEL_CONFIG := cyanogen_e730_defconfig
# Keep this as a fallback
TARGET_PREBUILT_KERNEL := device/lge/e730/prebuilt/kernel
