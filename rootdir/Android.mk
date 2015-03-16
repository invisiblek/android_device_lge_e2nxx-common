LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE            := fstab.e2
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/fstab.e2
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

# Init scripts
include $(CLEAR_VARS)
LOCAL_MODULE            := init.e2.rc
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.e2.rc
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.lge.early.rc
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.lge.early.rc
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.lge.rc
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.lge.rc
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.zetaw.bt_vendor.rc
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.zetaw.bt_vendor.rc
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.zetaw.class_core.sh
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.zetaw.class_core.sh
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.zetaw.class_main.sh
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.zetaw.class_main.sh
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.zetaw.early_boot.sh
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.zetaw.early_boot.sh
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.zetaw.rc
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.zetaw.rc
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.zetaw-sensor.sh
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.zetaw-sensor.sh
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.zetaw.sh
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.zetaw.sh
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.zetaw.syspart_fixup.sh
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.zetaw.syspart_fixup.sh
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.zetaw.usb.rc
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.zetaw.usb.rc
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := init.zetaw.usb.sh
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/init.zetaw.usb.sh
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE            := ueventd.e2.rc
LOCAL_MODULE_TAGS       := optional eng
LOCAL_MODULE_CLASS      := ETC
LOCAL_SRC_FILES         := etc/ueventd.e2.rc
LOCAL_MODULE_PATH       := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)
