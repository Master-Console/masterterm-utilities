LOCAL_PATH := $(call my-dir)

###################################
#
# Standalone-Shell for android.
#
###################################

include $(CLEAR_VARS)

LOCAL_MODULE := sash

LOCAL_SRC_FILES := \
        cmd_ar.c \
        cmd_chattr.c \
        cmd_dd.c \
        cmd_ed.c \
        cmd_file.c \
        cmd_find.c \
        cmd_grep.c \
        cmd_gzip.c \
        cmd_ls.c \
        cmd_tar.c \
        cmds.c \
        sash.c \
        utils.c

HAVE_GZIP		:= 1
HAVE_LINUX_ATTR		:= 1
HAVE_LINUX_CHROOT	:= 1
HAVE_LINUX_LOSETUP	:= 1
HAVE_LINUX_MOUNT	:= 1
HAVE_BSD_MOUNT		:= 0
MOUNT_TYPE		:= '"ext3"'

OPT = -O3


LOCAL_CFLAGS := $(OPT) -Wall -Wmissing-prototypes \
	-DHAVE_GZIP=$(HAVE_GZIP) \
	-DHAVE_LINUX_ATTR=$(HAVE_LINUX_ATTR) \
 	-DHAVE_LINUX_CHROOT=$(HAVE_LINUX_CHROOT) \
 	-DHAVE_LINUX_LOSETUP=$(HAVE_LINUX_LOSETUP) \
	-DHAVE_LINUX_MOUNT=$(HAVE_LINUX_MOUNT) \
	-DHAVE_BSD_MOUNT=$(HAVE_BSD_MOUNT) \
	-DMOUNT_TYPE=$(MOUNT_TYPE) \
    -fPIE
                          
LOCAL_LDFLAGS := -rdynamic -fPIE -pie

LOCAL_LDLIBS := -lz

include $(BUILD_EXECUTABLE)