# 
# Copyright 2008 The Android Open Source Project
#
# Zip alignment tool
#

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := zipalign

LOCAL_SRC_FILES := \
	ZipAlign.cpp \
	ZipEntry.cpp \
	ZipFile.cpp \
	system_properties.cpp
# add system_properties from bionic to satisfy linkage to liblog

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/include \
    $(LOCAL_PATH)/include/ziparchive \
	$(LOCAL_PATH)/zlib/include \
	$(LOCAL_PATH)/zopfli/jni/src \
	$(LOCAL_PATH)/zopfli/jni/src/zopfli

LOCAL_LDFLAGS += \
	$(LOCAL_PATH)/obj/local/$(APP_ABI)/libandroidfw.a \
	$(LOCAL_PATH)/obj/local/$(APP_ABI)/libutils.a \
	$(LOCAL_PATH)/obj/local/$(APP_ABI)/libcutils.a \
	$(LOCAL_PATH)/obj/local/$(APP_ABI)/liblog.a  \
	$(LOCAL_PATH)/obj/local/$(APP_ABI)/libz.a  \
	$(LOCAL_PATH)/obj/local/$(APP_ABI)/libzopfli.a

LOCAL_CFLAGS += -std=gnu++11 -w -fPIE
LOCAL_LDFLAGS += -static -fPIE
LOCAL_LDLIBS := -latomic 

include $(BUILD_EXECUTABLE)
