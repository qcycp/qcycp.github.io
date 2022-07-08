---
title: tmp_Android_BroadcastReceiver_on_sdcard_event
abbrlink: 8d360022
tags:
---
broadcast receiver - 監聽sd card事件
===
```xml
<receiver android:name=".MediaReceiver" >
    <intent-filter >
        <action android:name="android.intent.action.MEDIA_MOUNTED" />
        <action android:name="android.intent.action.MEDIA_UNMOUNTED" />
        <data android:scheme="file" />
    </intent-filter>
</receiver>
```
在同一個BroadcastReceiver內如果同時想要監聽BOOT_COMPLETED及MEDIA_MOUNTED事件
intent-filter必須分開寫，否則BOOT_COMPLETED事件會攔不到
```xml
<receiver android:name=".MyReceiver" >
    <intent-filter >
        <action android:name="android.intent.action.BOOT_COMPLETED" />
    </intent-filter>
    <intent-filter >
        <action android:name="android.intent.action.MEDIA_MOUNTED" />
        <action android:name="android.intent.action.MEDIA_UNMOUNTED" />
        <data android:scheme="file" />
    </intent-filter>
</receiver>
```