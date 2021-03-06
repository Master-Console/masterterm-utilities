LOCAL_PATH := $(call my-dir)

###################################
#
# Brotli compression for android.
#
###################################

include $(CLEAR_VARS)

LOCAL_MODULE := brotli

LOCAL_C_INCLUDES := $(LOCAL_PATH)/c/include

LOCAL_SRC_FILES := c/common/dictionary.c c/common/transform.c \
                   c/dec/bit_reader.c c/dec/decode.c c/dec/huffman.c c/dec/state.c \
                   c/enc/backward_references.c c/enc/backward_references_hq.c c/enc/bit_cost.c c/enc/block_splitter.c c/enc/brotli_bit_stream.c \
                   c/enc/cluster.c c/enc/compress_fragment.c c/enc/compress_fragment_two_pass.c c/enc/dictionary_hash.c \
                   c/enc/encode.c c/enc/encoder_dict.c c/enc/entropy_encode.c c/enc/histogram.c c/enc/literal_cost.c \
                   c/enc/memory.c c/enc/metablock.c c/enc/static_dict.c c/enc/utf8_util.c \
                   c/tools/brotli.c

LOCAL_CFLAGS := -O2 -Wall -W -pedantic -std=c11 \
                -fPIE

LOCAL_LDFLAGS := -rdynamic -fPIE -pie

include $(BUILD_EXECUTABLE)