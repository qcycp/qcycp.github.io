---
title: tmp_Android_file_command
tags:
---
File Command on Android
===
https://github.com/file/file

編譯之後會產生三個檔案
1. file
2. libmagic.so
3. magic.mgc

```
#Android.mk
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libmagic

MAGIC = /system/etc/magic.mgc

libmagic_HDRS = file.h readelf.h tar.h \
                file_opts.h elfclass.h mygetopt.h cdf.h

libmagic_SRCS = magic.c apprentice.c softmagic.c \
                ascmagic.c encoding.c compress.c \
                is_tar.c readelf.c print.c \
                fsmagic.c funcs.c apptype.c \
                cdf_time.c readcdf.c cdf.c \
                getline.c fmtcheck.c

LOCAL_SRC_FILES := $(libmagic_SRCS)

LOCAL_CFLAGS += -DHAVE_CONFIG_H -DTRACE -DMAGIC='"$(MAGIC)"'
LOCAL_LDLIBS := -lz

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := file

LOCAL_SRC_FILES = file.c

LOCAL_SHARED_LIBRARIES := libmagic
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DTRACE -DMAGIC='"$(MAGIC)"'
LOCAL_LDLIBS := -lz

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE := magic.mgc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := magic.mgc

include $(BUILD_PREBUILT)
```