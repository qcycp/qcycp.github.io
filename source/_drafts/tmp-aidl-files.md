---
title: tmp_aidl_files
abbrlink: 4f368aa8
tags:
---
AIDL files in Android.mk
===

在Android source code中，若要編譯包含aidl檔案的APK時，
在要APK的Android.mk中加入
```
LOCAL_SRC_FILES := $(call all-java-files-under, src) \
                    src/com/example/service/IMyAidl.aidl \
                    src/com/example/service/IMyAidlCallback.aidl
```