#
# Copyright (C) 2015 The CyanogenMod Project
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

# inherit from the proprietary version
-include vendor/lge/e2nxx-common/BoardConfigVendor.mk

LOCAL_PATH := device/lge/e2nxx-common

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Platform
TARGET_BOARD_PLATFORM := msm8226

# CPU
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := krait
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8226
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
BOARD_KERNEL_CMDLINE := ttyHSL0,115200,n8 androidboot.console=ttyHSL0 user_debug=31 msm_rtb.filter=0x37 androidboot.hardware=e2 androidboot.bootdevice=msm_sdcc.1 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x02000000 --tags_offset 0x00000100
TARGET_KERNEL_SOURCE := kernel/lge/e2nxx

# Audio
BOARD_USES_ALSA_AUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
COMMON_GLOBAL_CFLAGS += -DLG_CAMERA_HARDWARE
COMMON_GLOBAL_CFLAGS += -DPROPERTY_PERMS_APPEND=' \
    { "persist.data.sensor_name", AID_CAMERA, 0 }, \
    { "camera.4k2k.enable", AID_MEDIA, 0 }, \
    { "persist.data.rear.minfps", AID_MEDIA, 0 }, \
    { "persist.data.front.minfps", AID_MEDIA, 0 }, \
    '

# Display
BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl.cfg
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true

MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

HAVE_ADRENO_SOURCE:= false
OVERRIDE_RS_DRIVER:= libRSDriver_adreno.so

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Lights
#TARGET_PROVIDES_LIBLIGHT := true

# Logging
TARGET_USES_LOGD=false

# Offmode Charging
COMMON_GLOBAL_CFLAGS += \
    -DBOARD_CHARGING_CMDLINE_NAME='"androidboot.mode"' \
    -DBOARD_CHARGING_CMDLINE_VALUE='"chargerlogo"'

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_F2FS := true

# Power
TARGET_POWERHAL_VARIANT := qcom

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true

# Radio
BOARD_RIL_CLASS := ../../../device/lge/e2nxx-common/ril/

# Recovery
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
TARGET_RECOVERY_FSTAB := device/lge/e2nxx-common/rootdir/etc/fstab.e2
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true

# SELinux
include device/qcom/sepolicy/sepolicy.mk
# TODO
# BOARD_SEPOLICY_DIRS += device/lge/e2nxx-common/sepolicy
# BOARD_SEPOLICY_UNION += \
#    device.te \
#    file.te \
#    file_contexts \
#    genfs_contexts \
#    hostapd.te \
#    init_shell.te \
#    kcal_dev.te \
#    kernel.te \
#    keystore.te \
#    lge_touch_sysfs.te \
#    mm-pp-daemon.te \
#    mm-qcamerad.te \
#    mpdecision.te \
#    nfc.te \
#    platform_app.te \
#    property.te \
#    property_contexts \
#    radio.te \
#    rmt_storage.te \
#    sensors.te \
#    servicemanager.te \
#    sysinit.te \
#    system_app.te \
#    tee.te \
#    thermal-engine.te \
#    vibe_data_file.te \
#    ueventd.te \
#    vold.te \
#    wcnss_service.te \
#    wpa.te

# Time services
# TODO (needs libtime_genoff)
# BOARD_USES_QC_TIME_SERVICES := true

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
TARGET_USES_WCNSS_CTRL := true
TARGET_USES_QCOM_WCNSS_QMI := true
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X

# TWRP
DEVICE_RESOLUTION := 480x800
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_DEVICE_DIRS += device/lge/e2nxx-common
TW_INCLUDE_L_CRYPTO := true
TW_NO_SCREEN_TIMEOUT := true
TW_NO_USB_STORAGE := true
