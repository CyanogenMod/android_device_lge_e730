#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

# This file is generated by device/common/generate-blob-scripts.sh - DO NOT EDIT

DEVICE=e730
MANUFACTURER=lge

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /sbin/chargerlogo ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /sbin/wallpaper ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/ami304d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/rmt_storage ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/egl/eglsubAndroid.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/egl/libq3dtools_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libgsl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libC2D2.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libOpenVG.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libsc-a2xx.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libaudioalsa.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libgemini.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libmmipl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libmmjpeg.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libabl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libabloem.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libmm-abl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/hw/sensors.default.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/netmgrd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/qmuxd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/rild ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libauth.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libbcmwl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libcm.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libcne.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libcneutils.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libdiag.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libdsi_netctrl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libdsm.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libdsucsd.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libdsutils.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libgsdi_exp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libgstk_exp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libidl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/liblgdrm.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/liblge_security.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/liblgeat.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/liblgenfctest.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/liblgerft.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libmmgsdilib.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnetmgr.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnfc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnv.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/liboem_rapi.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/liboncrpc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libpbmlib.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libqdp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libqmi.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libqueue.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/librefcne.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libril-qc-1.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libril-qcril-hook-oem.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libwms.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libwmsts.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/device-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
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

# This file is generated by device/__MANUFACTURER__/__DEVICE__/extract-files.sh - DO NOT EDIT

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES := \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudioalsa.so:obj/lib/libaudioalsa.so

# All the blobs necessary for e730
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/chargerlogo:sbin/chargerlogo \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wallpaper:sbin/wallpaper \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/ami304d:system/bin/ami304d \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/rmt_storage:system/bin/rmt_storage \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libgsl.so:system/lib/libgsl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOpenVG.so:system/lib/libOpenVG.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libC2D2.so:system/lib/libC2D2.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsc-a2xx.so:system/lib/libsc-a2xx.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudioalsa.so:system/lib/libaudioalsa.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libgemini.so:system/lib/libgemini.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmmipl.so:system/lib/libmmipl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmmjpeg.so:system/lib/libmmjpeg.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libabl.so:system/lib/libabl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libabloem.so:system/lib/libabloem.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmm-abl.so:system/lib/libmm-abl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/sensors.default.so:system/lib/hw/sensors.default.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/netmgrd:system/bin/netmgrd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/qmuxd:system/bin/qmuxd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/rild:system/bin/rild \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libauth.so:system/lib/libauth.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libbcmwl.so:system/lib/libbcmwl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcm.so:system/lib/libcm.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcne.so:system/lib/libcne.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcneutils.so:system/lib/libcneutils.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libdiag.so:system/lib/libdiag.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libdsi_netctrl.so:system/lib/libdsi_netctrl.so  \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libdsm.so:system/lib/libdsm.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libdsucsd.so:system/lib/libdsucsd.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libdsutils.so:system/lib/libdsutils.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libgsdi_exp.so:system/lib/libgsdi_exp.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libgstk_exp.so:system/lib/libgstk_exp.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libidl.so:system/lib/libidl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/liblgdrm.so:system/lib/liblgdrm.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/liblge_security.so:system/lib/liblge_security.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/liblgeat.so:system/lib/liblgeat.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/liblgenfctest.so:system/lib/liblgenfctest.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/liblgerft.so:system/lib/liblgerft.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmmgsdilib.so:system/lib/libmmgsdilib.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libnetmgr.so:system/lib/libnetmgr.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libnfc.so:system/lib/libnfc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libnv.so:system/lib/libnv.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/liboem_rapi.so:system/lib/liboem_rapi.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/liboncrpc.so:system/lib/liboncrpc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libpbmlib.so:system/lib/libpbmlib.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libqmi.so:system/lib/libqmi.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libqdp.so:system/lib/libqdp.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libqueue.so:system/lib/libqueue.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/librefcne.so:system/lib/librefcne.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libril.so:system/lib/libril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libril-qc-1.so:system/lib/libril-qc-1.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libril-qcril-hook-oem.so:system/lib/libril-qcril-hook-oem.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libwms.so:system/lib/libwms.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libwmsts.so:system/lib/libwmsts.so


EOF

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/Android.mk
# Copyright (C) 2011 The Android Open Source Project
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

# This file is generated by device/__MANUFACTURER__/__DEVICE__/extract-files.sh - DO NOT EDIT

ifeq (\$(TARGET_DEVICE),e730)
LOCAL_PATH:=\$(call my-dir)

endif

EOF

./setup-makefiles.sh
