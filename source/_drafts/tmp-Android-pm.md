---
title: tmp_Android_pm
abbrlink: cc3ccb3d
tags:
---
pm install apk
===

```java
<uses-permission android:name="android.permission.INTERACT_ACROSS_USERS_FULL" />
<uses-permission android:name="android.permission.INSTALL_PACKAGES" />
    
try {
    Runtime.getRuntime().exec("pm install -r /sdcard/Download/app-debug.apk");
} catch (IOException e) {
    XLog.e("[%s] %s", TAG, e.getMessage());
}
```