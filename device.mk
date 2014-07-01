#
# Copyright (C) 2014 The CyanogenMod Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)
$(call inherit-product-if-exists, vendor/htc/m8-common/m8-common-vendor.mk)


# overlays
DEVICE_PACKAGE_OVERLAYS += device/htc/m8/overlay

# F2FS tools
PRODUCT_COPY_FILES := \
    device/htc/m8/fstab/fstab.qcom.all-EXT4:system/extras/fstab/fstab.qcom.all-EXT4 \
    device/htc/m8/fstab/fstab.qcom.all-F2FS:system/extras/fstab/fstab.qcom.all-F2FS \
    device/htc/m8/fstab/fstab.qcom.data-F2FS:system/extras/fstab/fstab.qcom.data-F2FS \
    device/htc/m8/tools/repack-and-flash.sh:system/extras/tools/repack-and-flash.sh \
    device/htc/m8/tools/format-system.sh:system/extras/tools/format-system.sh \
    device/htc/m8/tools/kernel/repackimg.sh:system/extras/tools/kernel/repackimg.sh \
    device/htc/m8/tools/kernel/unpackimg.sh:system/extras/tools/kernel/unpackimg.sh \
    device/htc/m8/tools/kernel/cleanup.sh:system/extras//tools/kernel/cleanup.sh \
    device/htc/m8/tools/kernel/authors.txt:system/extras/tools/kernel/authors.txt \
    device/htc/m8/tools/kernel/bin/aik:system/extras/tools/kernel/bin/aik \
    device/htc/m8/tools/kernel/bin/busybox:system/extras/tools/kernel/bin/busybox \
    device/htc/m8/tools/kernel/bin/file:system/extras/tools/kernel/bin/file \
    device/htc/m8/tools/kernel/bin/lz4:system/extras/tools/kernel/bin/lz4 \
    device/htc/m8/tools/kernel/bin/magic:system/extras/tools/kernel/bin/magic \
    device/htc/m8/tools/kernel/bin/mkbootfs:system/extras/tools/kernel/bin/mkbootfs \
    device/htc/m8/tools/kernel/bin/mkbootimg:system/extras/tools/kernel/bin/mkbootimg \
    device/htc/m8/tools/kernel/bin/unpackbootimg:system/extras/tools/kernel/bin/unpackbootimg \
    device/htc/m8/tools/kernel/bin/xz:system/extras/tools/kernel/bin/xz

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Device uses ultra-high-density artwork where available
PRODUCT_AAPT_CONFIG := hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Dot View Case
PRODUCT_PACKAGES += Dotcase

# HTC IR Blaster resources
PRODUCT_PACKAGES += \
    CIRModule \
    htcirlibs \
    cir \
    cir_fw_update \
    libhtcirinterface_jni

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    init.qcom.usb.rc \
    ueventd.qcom.rc

# Qcom init scripts for /etc
PRODUCT_PACKAGES += \
   init.qcom.bt.bluedroid.sh \
   init.qcom.bt.sh

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.compass.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    device/htc/m8/configs/com.htc.software.market.xml:system/etc/permissions/com.htc.software.market.xml

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm8974 \
    audio.primary.msm8974 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    tinymix

PRODUCT_PACKAGES += \
    libaudioamp

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/soundimage/srsfx_trumedia_ext.cfg:system/etc/soundimage/srsfx_trumedia_ext.cfg \
    $(LOCAL_PATH)/audio/soundimage/srsfx_trumedia_ext_HS250.cfg:system/etc/soundimage/srsfx_trumedia_ext_HS250.cfg \
    $(LOCAL_PATH)/audio/soundimage/srsfx_trumedia_ext_MAX300.cfg:system/etc/soundimage/srsfx_trumedia_ext_MAX300.cfg \
    $(LOCAL_PATH)/audio/soundimage/srsfx_trumedia_int.cfg:system/etc/soundimage/srsfx_trumedia_int.cfg \
    $(LOCAL_PATH)/audio/soundimage/srsmodels.lic:system/etc/soundimage/srsmodels.lic

# Camera
PRODUCT_PACKAGES += \
    camera.msm8974

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# FM radio
PRODUCT_PACKAGES += \
    qcom.fmradio \
    libqcomfm_jni \
    FM2 \
    FMRecord

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8974 \
    gralloc.msm8974 \
    hwcomposer.msm8974 \
    libgenlock \
    liboverlay \
    memtrack.msm8974

# IPC router config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

# Input device config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/projector_input.idc:system/usr/idc/projector_input.idc \
    $(LOCAL_PATH)/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/keypad_8974.kl:system/usr/keylayout/keypad_8974.kl \
    $(LOCAL_PATH)/keylayout/projector-Keypad.kl:system/usr/keylayout/projector-Keypad.kl \
    $(LOCAL_PATH)/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \
    $(LOCAL_PATH)/keylayout/AK8789_HALL_SENSOR.kl:system/usr/keylayout/AK8789_HALL_SENSOR.kl

# Lights
PRODUCT_PACKAGES += \
    lights.msm8974

# Media config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# NFC
ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := device/htc/m8/configs/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := device/htc/m8/configs/nfcee_access_debug.xml
endif
PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

PRODUCT_PACKAGES += \
    nfc.msm8974 \
    libnfc \
    libnfc_ndef \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libstagefrighthw \
    libdashplayer

# Power
PRODUCT_PACKAGES += \
    power.msm8974

# QCOM rngd
PRODUCT_PACKAGES += \
    qrngd \
    qrngp

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine.conf:system/etc/thermal-engine.conf

# Torch
PRODUCT_PACKAGES += \
    Torch

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Variant linking script
PRODUCT_PACKAGES += \
    makelinks.sh

# Wifi firmware
PRODUCT_PACKAGES += \
    wcnss_service

# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# WPA supplicant config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

# OTA ID
PRODUCT_PROPERTY_OVERRIDES += \
	otaupdater.otaid=liquidm8

# F2FS
PRODUCT_PACKAGES += \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs

# Filesystem management tools
PRODUCT_PACKAGES += \
    setup_fs \
    e2fsck
