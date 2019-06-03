LOCAL_PATH := $(call my-dir)

###################################
#
# zopflipng library for Android
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

LOCAL_MODULE := zopflipng
LOCAL_CFLAGS += -O2 -fPIC
LOCAL_SRC_FILES := $(zopfli_files) $(LODEPNG_SRC) $(ZOPFLIPNGLIB_SRC)
LOCAL_LDLIBS := -latomic
LOCAL_MULTILIB := both
include $(BUILD_SHARED_LIBRARY)
