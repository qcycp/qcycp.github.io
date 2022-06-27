---
title: tmp_Android_system_settings_provider
tags:
---
讀取system settings provider

// in Android.mk
#LOCAL_SDK_VERSION := current

// in AndroidManifest.xml
<uses-permission android:name="android.permission.WRITE_SETTINGS" />
<uses-permission android:name="android.permission.WRITE_SECURE_SETTINGS" />

// in Activity.java
import android.provider.Settings;
...
String xxx = Settings.System.getString(getContentResolver(), Settings.System.XXX);