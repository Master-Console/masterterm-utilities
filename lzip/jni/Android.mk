LOCAL_PATH := $(call my-dir)

###################################
#
# Lzip compression for android.
#
###################################

include $(CLEAR_VARS)

LOCAL_MODULE := lzip

LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_SRC_FILES := arg_parser.cc lzip_index.cc list.cc encoder_base.cc encoder.cc \
                   fast_encoder.cc decoder.cc main.cc
                   
LOCAL_CFLAGS := -std=gnu++11 -fPIE -fexceptions

LOCAL_LDFLAGS := -rdynamic -fPIE -pie

include $(BUILD_EXECUTABLE)