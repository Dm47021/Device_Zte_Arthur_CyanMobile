
LOCAL_PATH := $(call my-dir)

TARGET_SPECIFIC_HEADER_PATH := device/zte/arthur/include

# Camera
USE_CAMERA_STUB := false
BOARD_NEEDS_MEMORYHEAPPMEM := true
TARGET_DISABLE_ARM_PIE := true
BOARD_USE_NASTY_PTHREAD_CREATE_HACK := true

# Audio
TARGET_PROVIDES_LIBAUDIO := true

BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_QCOM_RESETALL := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := msm7x30
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Init
TARGET_PROVIDES_INIT_RC := true

#android optimization
WITH_JIT := true
ENABLE_JSC_JIT := true
TARGET_WEBCORE_ENABLE_GIF := true
WITH_DEXPREOPT := true
JS_ENGINE := v8

#Open GL Driver Config
TARGET_GRALLOC_USES_ASHMEM := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_OVERLAY_MINIFICATION_LIMIT := 2
BOARD_EGL_CFG := device/zte/arthur/prebuilt/lib/egl/egl.cfg
BOARD_HAS_FLIPPED_SCREEN := true

# GPS Related Defines
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := arthur
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
#BOARD_GPS_LIBRARIES := libgps
#BOARD_USES_GPSSHIM := true
#BOARD_GPS_NEEDS_XTRA := true

# Qcom Hardware
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USE_QCOM_PMEM := true

# Wifi
# Defines for external/wpa_supplicant_*
WPA_SUPPLICANT_VERSION       := VER_0_6_X
BOARD_WPA_SUPPLICANT_DRIVER  := WEXT
BOARD_WLAN_DEVICE            := libra
WIFI_DRIVER_MODULE_PATH      := "/system/lib/modules/libra.ko"
WIFI_DRIVER_MODULE_NAME      := "libra"
WIFI_EXT_MODULE_PATH         := "/system/lib/modules/librasdioif.ko"
WIFI_EXT_MODULE_NAME         := "librasdioif"
BOARD_WEXT_NO_COMBO_SCAN := true
WPA_BUILD_SUPPLICANT := true

# Kernel
TARGET_PREBUILT_RECOVERY_KERNEL := device/zte/arthur/recovery_kernel
# Alien Kernel 4 CM7 Version
TARGET_PREBUILT_KERNEL := device/zte/arthur/zImage
BOARD_NAND_PAGE_SIZE := 4096 -s 128
BOARD_KERNEL_CMDLINE := console=ttyMSM1,115200 androidboot.hardware=arthur
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096


# Recovery
TARGET_BOOTLOADER_BOARD_NAME := arthur
TARGET_OTA_ASSERT_DEVICE := arthur
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_HAS_DOWNLOAD_MODE := true
BOARD_LDPI_RECOVERY := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 524288000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2908749824			     
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_RECOVERY_INITRC := device/zte/arthur/recovery.rc
BOARD_CUSTOM_GRAPHICS := ../../../device/zte/arthur/recovery/graphics.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/zte/arthur/recovery/recovery_ui.c
TARGET_RECOVERY_PRE_COMMAND := "echo 3 > /proc/sys/vm/drop_caches; sync"

## PARTITION LAYOUT/INFO ##
BOARD_HAS_NO_MISC_PARTITION := false
BOARD_BOOT_DEVICE := /dev/block/mmcblk0p12
BOARD_RECOVERY_DEVICE := /dev/block/mmcblk0p13
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p15
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p17
BOARD_CACHE_FILESYSTEM := ext4
BOARD_DATA_DEVICE := /dev/block/mmcblk0p18
BOARD_DATA_FILESYSTEM := ext4
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_HAS_LARGE_FILESYSTEM := true

BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
BOARD_USES_MMCUTILS := true


# USB
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_CUSTOM_USB_CONTROLLER := ../../device/zte/arthur/UsbController.cpp
BOARD_UMS_LUNFILE := /sys/devices/platform/msm_hsusb/gadget/lun0/file
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun0/file

# Releasetools
TARGET_PROVIDES_RELEASETOOLS := true
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/zte/arthur/releasetools/arthur_ota_from_target_files

