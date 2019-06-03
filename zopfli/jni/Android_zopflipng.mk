LOCAL_PATH := $(call my-dir)

###################################
#
# zopflipng program for Android
#
###################################

include $(CLEAR_VARS)

zopfli_files := \
	src/zopfli/blocksplitter.c src/zopfli/cache.c\
    src/zopfli/deflate.c src/zopfli/gzip_container.c\
    src/zopfli/hash.c src/zopfli/katajainen.c\
    src/zopfli/lz77.c src/zopfli/squeeze.c\
    src/zopfli/tree.c src/zopfli/util.c\
    src/zopfli/zlib_container.c src/zopfli/zopfli_lib.c
    
LODEPNG_SRC := src/zopflipng/lodepng/lodepng.cpp src/zopflipng/lodepng/lodepng_util.cpp
ZOPFLIPNGLIB_SRC := src/zopflipng/zopflipng_lib.cc
ZOPFLIPNGBIN_SRC := src/zopflipng/zopflipng_bin.cc

LOCAL_MODULE := zopflipng
LOCAL_CFLAGS += -O2 -fPIE
LOCAL_LDFLAGS := -rdynamic -fPIE -pie
LOCAL_SRC_FILES := $(zopfli_files) $(LODEPNG_SRC) $(ZOPFLIPNGLIB_SRC) $(ZOPFLIPNGBIN_SRC)
LOCAL_MULTILIB := both
include $(BUILD_EXECUTABLE)
