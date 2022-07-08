---
title: tmp_Android_open_file_via_Activity
abbrlink: 7e4c2d4e
tags:
---
使用Activity開啟檔案
===

讓Activity可以開啟檔案，For example 開啟txt檔
在AndroidManifest.xml的Activity中，加入以下設定
```
<intent-filter>
    <action android:name="android.intent.action.VIEW" />
    <category android:name="android.intent.category.DEFAULT" />
    <category android:name="android.intent.category.BROWSABLE" />
    <data android:scheme="file" />
    <data android:pathPattern=".*\\.txt" />
    <data android:host="*" />
</intent-filter>
```