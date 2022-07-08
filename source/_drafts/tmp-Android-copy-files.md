---
title: tmp_Android_copy_files
abbrlink: e0ad8bdb
tags:
---
Android copy files
===

Android.mk中的$(TARGET_OUT)指的是
`/out/target/product/flo/system/`

法一
1. Android.mk中直接使用PRODUCT_COPY_FILES
在4.0以後，直接使用PRODUCT_COPY_FILES會有error

![94b7745bac9a9d80369f29f723587451.png](:/7e3c062cd5f447d6a36db38c93fced0b)

```
PRODUCT_COPY_FILES +=$(LOCAL_PATH)/libs/armeabi/libdmc.so:$(TARGET_OUT)/lib/ \
                     $(LOCAL_PATH)/libs/armeabi/libdmc.so:$(TARGET_OUT)/../obj/lib/
```

2. 修改build/core/Makefile，將error改成warning

```
define check-product-copy-files
$(if $(filter %.apk, $(1)),$(warning \
    Prebuilt apk found in PRODUCT_COPY_FILES: $(1), use BUILD_PREBUILT instead!))
endef
3. 修改build/core/product.mk，將error改成warning
define assert-product-vars
$(strip \
    $(eval changed_variables:=)
    …
    …
    $(if $(changed_variables),\
      $(eval $(warning The following variables have been changed: $(changed_variables))),)
)
```

法二
在/device/asus/flo/device.mk中使用PRODUCT_COPY_FILES
PRODUCT_COPY_FILES += bootable/recovery/uafs/libuafs/libdmc.so:system/lib/libdmc.so

法三
在Android.mk中，使用BUILD_PREBUILT
include $(CLEAR_VARS)
LOCAL_MODULE := dest_filename
LOCAL_MODULE_TAGS := optional
#LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_PATH := $(TARGET_OUT)/dest_folder
LOCAL_SRC_FILES := src_filename
include $(BUILD_PREBUILT)
若是沒有設定LOCAL_MODULE_PATH，
android會根據LOCAL_MODULE_CLASS來決定預設要擺放的目錄
```
LOCAL_MODULE_CLASS := EXECUTABLES               #/system/bin
LOCAL_MODULE_CLASS := SHARED_LIBRARIES    #/system/lib
LOCAL_MODULE_CLASS := ETC                                #/system/etc
LOCAL_MODULE_CLASS := APPS                              #/system/app
```

法四
在Android.mk中，直接使用shell command來copy files
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

$(shell mkdir -p $(TARGET_OUT)/dest_folder)
$(shell cp $(LOCAL_PATH)/src_file $(TARGET_OUT)/dest_folder/)
$(shell cp $(LOCAL_PATH)/src_folder/src_files $(TARGET_OUT)/dest_folder/)

...
