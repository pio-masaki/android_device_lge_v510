#
# Copyright (C) 2013 The CyanogenMod Project
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

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

TARGET_NO_BOOTLOADER := true

BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000

# Try to build the kernel
TARGET_KERNEL_SOURCE := kernel/lge/v510
#TARGET_PREBUILT_KERNEL := device/lge/v510/kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 lpj=67677 androidboot.hardware=palman vmalloc=600M
TARGET_KERNEL_CONFIG := cyanogenmod_v510_defconfig


BOARD_USES_ALSA_AUDIO:= true
BOARD_USES_LEGACY_ALSA_AUDIO:= false
BOARD_USES_FLUENCE_INCALL := true
BOARD_USES_SEPERATED_AUDIO_INPUT := true

BOARD_HAVE_BLUETOOTH := true

TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := msm8960

WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211

BOARD_EGL_CFG := device/lge/v510/egl.cfg

#BOARD_USES_HGL := true
#BOARD_USES_OVERLAY := true
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_USES_OVERLAY := true
TARGET_USES_SF_BYPASS := true
TARGET_USES_C2D_COMPOSITION := true

OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# Recovery
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
RECOVERY_FSTAB_VERSION = 2

# TWRP
DEVICE_RESOLUTION := 1920x1200
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TW_NO_USB_STORAGE := false
TW_NO_REBOOT_BOOTLOADER := true
TW_INCLUDE_JB_CRYPTO := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sdcard"
# testing
TW_CRYPTO_REAL_BLKDEV := "/dev/block/platform/msm_sdcc.1/by-name/userdata"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "noatime,nosuid,nodev,barrier=1,data=ordered,noauto_da_alloc"
TW_CRYPTO_FS_FLAGS := "0x00000406"
TW_CRYPTO_KEY_LOC := "footer"

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 23068672 # 22M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 23068672 # 22M
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 880803840 # 840M

BOARD_USERDATAIMAGE_PARTITION_SIZE := 6189744128 # 5.9G
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

BOARD_USES_SECURE_SERVICES := true

BOARD_USES_EXTRA_THERMAL_SENSOR := true
BOARD_USES_CAMERA_FAST_AUTOFOCUS := true

BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
TARGET_NO_RPC := true

BOARD_CHARGER_ENABLE_SUSPEND := true

BOARD_HAVE_LOW_LATENCY_AUDIO := true

BOARD_HAS_NO_SELECT_BUTTON := true

USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_DISPLAY_USE_RETIRE_FENCE := true

BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

TARGET_BOOTLOADER_BOARD_NAME := palman
TARGET_BOOTLOADER_NAME=v510

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/v510/bluetooth

# FIXME: HOSTAPD-derived wifi driver
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP  := "ap"
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)

TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"
TARGET_RECOVERY_FSTAB = device/lge/v510/fstab.palman

BOARD_HAS_NO_SELECT_BUTTON := true

BOARD_SEPOLICY_DIRS += \
        device/lge/v510/sepolicy

BOARD_SEPOLICY_UNION := \
        app.te \
        bluetooth.te \
        device.te \
        domain.te \
        drmserver.te \
        file.te \
        file_contexts \
        hci_init.te \
        init_shell.te \
        keystore.te \
        mediaserver.te \
        kickstart.te \
        nfc.te \
        rild.te \
        surfaceflinger.te \
        system.te \
        ueventd.te \
        wpa.te

TARGET_RELEASETOOLS_EXTENSIONS := device/lge/v510/releasetools

BOARD_USES_QC_TIME_SERVICES := true

COMMON_GLOBAL_CFLAGS += -DBOARD_CHARGING_CMDLINE_NAME='"androidboot.mode"' -DBOARD_CHARGING_CMDLINE_VALUE='"chargerlogo"'

BOARD_HARDWARE_CLASS := device/lge/v510/cmhw/
