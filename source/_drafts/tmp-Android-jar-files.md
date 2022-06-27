---
title: tmp_Android_jar_files
tags:
---
jar files in Android.mk
===

在Android source code中，若要編譯包含jar檔案的APK時，
Android.mk要加入LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES跟LOCAL_STATIC_JAVA_LIBRARIES
```
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SDK_VERSION := current

LOCAL_STATIC_JAVA_LIBRARIES := libgson libhttpclient
LOCAL_PACKAGE_NAME := myApp
#LOCAL_CERTIFICATE := platform

#LOCAL_PRIVILEGED_MODULE := true

#LOCAL_PROGUARD_FLAG_FILES := proguard.flags

include $(BUILD_PACKAGE)

##################################################
include $(CLEAR_VARS)

LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := libgson:libs/gson-2.3.1.jar libhttpclient:libs/httpclientandroidlib-1.2.1.jar 

include $(BUILD_MULTI_PREBUILT)

include $(call all-makefiles-under,$(LOCAL_PATH))
```