#
# Copyright (C) 2011 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
PRODUCT_COPY_FILES += device/common/gps/gps.conf_EU:system/etc/gps.conf

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

## (1) First, the most specific values, i.e. the aspects that are specific to GSM
PRODUCT_COPY_FILES += \
    device/lge/e730/init.victor.rc:root/init.victor.rc \
    device/lge/e730/ueventd.rc:root/ueventd.rc

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

## (2) Also get non-open-source GSM-specific aspects if available
$(call inherit-product-if-exists, vendor/lge/e730/device-vendor.mk)

## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.camera=victor \
    ro.com.google.clientidbase=android-lge \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.com.google.gmsversion=2.3_r6 \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y

# Override /proc/sys/vm/dirty_ratio on UMS
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vold.umsdirtyratio=20

DEVICE_PACKAGE_OVERLAYS += device/lge/e730/overlay

# gsm config xml file
PRODUCT_COPY_FILES += \
    device/lge/e730/spn-conf.xml:system/etc/spn-conf.xml \
    device/lge/e730/voicemail-conf.xml:system/etc/voicemail-conf.xml

PRODUCT_PACKAGES += \
    lights.victor \
    sensors.default \
    gps.victor \
    librs_jni \
    gralloc.msm7x30 \
    overlay.default \
    libOmxCore \
    libOmxVenc \
    libOmxVdec \
    com.android.future.usb.accessory

# Idc
PRODUCT_COPY_FILES += \
   device/lge/e730/idc/qt602240_ts.idc:system/usr/idc/qt602240_ts.idc

# Keychars
PRODUCT_COPY_FILES += \
    device/lge/e730/keychars/ats_input.kcm.bin:system/usr/keychars/ats_input.kcm.bin \
    device/lge/e730/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/lge/e730/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/lge/e730/keychars/touch_keypad.kcm.bin:system/usr/keychars/touch_keypad.kcm.bin

# Keylayouts
PRODUCT_COPY_FILES += \
    device/lge/e730/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/lge/e730/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/lge/e730/keylayout/ats_input.kl:system/usr/keylayout/ats_input.kl \
    device/lge/e730/keylayout/hs_detect.kl:system/usr/keylayout/hs_detect.kl \
    device/lge/e730/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/lge/e730/keylayout/touch_keypad.kl:system/usr/keylayout/touch_keypad.kl \
    device/lge/e730/keylayout/victor-keypad.kl:system/usr/keylayout/victor-keypad.kl

# Firmware
PRODUCT_COPY_FILES += \
    device/lge/e730/firmware/wl/nvram.txt:system/etc/wl/nvram.txt \
    device/lge/e730/firmware/wl/rtecdc-apsta.bin:system/etc/wl/rtecdc-apsta.bin \
    device/lge/e730/firmware/wl/rtecdc.bin:system/etc/wl/rtecdc.bin \
    device/lge/e730/firmware/BCM4330B1_002.001.003.0243.0305.hcd:system/etc/firmware/BCM4330B1_002.001.003.0243.0305.hcd \
    device/lge/e730/firmware/vidc_720p_command_control.fw:system/etc/firmware/vidc_720p_command_control.fw \
    device/lge/e730/firmware/vidc_720p_h263_dec_mc.fw:system/etc/firmware/vidc_720p_h263_dec_mc.fw \
    device/lge/e730/firmware/vidc_720p_h264_dec_mc.fw:system/etc/firmware/vidc_720p_h264_dec_mc.fw \
    device/lge/e730/firmware/vidc_720p_h264_enc_mc.fw:system/etc/firmware/vidc_720p_h264_enc_mc.fw \
    device/lge/e730/firmware/vidc_720p_mp4_dec_mc.fw:system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
    device/lge/e730/firmware/vidc_720p_mp4_enc_mc.fw:system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
    device/lge/e730/firmware/vidc_720p_vc1_dec_mc.fw:system/etc/firmware/vidc_720p_vc1_dec_mc.fw \
    device/lge/e730/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/lge/e730/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

# The splashscreen and Offmode charging
PRODUCT_COPY_FILES += \
    device/lge/e730/recovery/rmt_storage/rmt_storage:/root/sbin/rmt_storage \
    device/lge/e730/misc/chargerlogo:/root/sbin/chargerlogo \
    device/lge/e730/misc/wallpaper:/root/sbin/wallpaper \
    device/lge/e730/misc/initlogo.rle:root/initlogo.rle \
    device/lge/e730/misc/chargerimages/battery_bg.rle:/root/chargerimages/battery_bg.rle \
    device/lge/e730/misc/chargerimages/battery_charging_01.rle:/root/chargerimages/battery_charging_01.rle \
    device/lge/e730/misc/chargerimages/battery_charging_02.rle:/root/chargerimages/battery_charging_02.rle \
    device/lge/e730/misc/chargerimages/battery_charging_03.rle:/root/chargerimages/battery_charging_03.rle \
    device/lge/e730/misc/chargerimages/battery_charging_04.rle:/root/chargerimages/battery_charging_04.rle \
    device/lge/e730/misc/chargerimages/battery_charging_05.rle:/root/chargerimages/battery_charging_05.rle \
    device/lge/e730/misc/chargerimages/battery_charging_06.rle:/root/chargerimages/battery_charging_06.rle \
    device/lge/e730/misc/chargerimages/battery_charging_warning.rle:/root/chargerimages/battery_charging_warning.rle \
    device/lge/e730/misc/chargerimages/battery_wait_ani_01.rle:/root/chargerimages/battery_wait_ani_01.rle \
    device/lge/e730/misc/chargerimages/battery_wait_ani_02.rle:/root/chargerimages/battery_wait_ani_02.rle \
    device/lge/e730/misc/chargerimages/black_bg.rle:/root/chargerimages/black_bg.rle

PRODUCT_COPY_FILES += \
    device/lge/e730/vold.fstab:system/etc/vold.fstab

# media config xml file
PRODUCT_COPY_FILES += \
    device/lge/e730/media_profiles.xml:system/etc/media_profiles.xml

# Kernel modules
#PRODUCT_COPY_FILES += \

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/lge/e730/prebuilt/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    device/lge/e730/prebuilt/wireless.ko:system/lib/modules/wireless.ko

$(call inherit-product, build/target/product/full_base.mk)

# media profiles and capabilities spec
$(call inherit-product, device/lge/e730/media_a1026.mk)

$(call inherit-product, frameworks/base/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product-if-exists, vendor/lge/e730/device-vendor.mk)

PRODUCT_NAME := lge_e730
PRODUCT_DEVICE := e730
PRODUCT_MODEL := E730
PRODUCT_MANUFACTURER := LGE
