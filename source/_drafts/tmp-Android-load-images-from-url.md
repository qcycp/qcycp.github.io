---
title: tmp_Android_load_images_from_url
tags:
---
Load images from web url
===

On Android Studio
設定build.gradle
```
dependencies {
    compile 'com.squareup.picasso:picasso:2.5.2'
}
```

on Android source code
1. Download picasso.jar from http://square.github.io/picasso/
2.
```
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, src)

#LOCAL_SDK_VERSION := current

LOCAL_STATIC_JAVA_LIBRARIES := libpicasso
LOCAL_PACKAGE_NAME := AnnotationTool
LOCAL_CERTIFICATE := platform

#LOCAL_PRIVILEGED_MODULE := true

LOCAL_PROGUARD_FLAG_FILES := proguard.flags

include $(BUILD_PACKAGE)

##################################################
include $(CLEAR_VARS)

LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := libpicasso:libs/picasso-2.5.2.jar

include $(BUILD_MULTI_PREBUILT)

include $(call all-makefiles-under,$(LOCAL_PATH))
```

3. in proguard.flags
-ignorewarnings

使用方式：
```
import com.squareup.picasso.Picasso;

// url can be a web image url, such as "http://x.x.x.x/test.jpg"
// or a local image, such as "new File(path)"

Picasso.with(mCtx) //context
       .load(url)
       .placeholder(this.getResources().getDrawable(resId)) //default image
       .into((ImageView)v);
```