---
title: tmp_Android_avoid_EditText_get_focus
abbrlink: 91b23c26
tags:
---
開啟Activity，避免EditText自動取得focus，軟體鍵盤跳出
===
http://www.aaronlife.com/notes/android_q&a.html

Activity中若有EditText，在開啟Activity時，
EditText會取得focus，使得InputManager自動顯示

1. 設定Activity的android:windowSoftInputMode屬性
```
<activity
    android:name="com.example.MainActivity"
    android:label="@string/app_name"
    android:windowSoftInputMode="stateHidden" >
    <intent-filter>
        <action android:name="android.intent.action.MAIN" />
        <category android:name="android.intent.category.LAUNCHER" />
    </intent-filter>
</activity>
```

2. 把focus設定到layout上，不要讓EditText取得focus
    設定layout屬性：android:descendantFocusability和android:focusableInTouchMode
```
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:descendantFocusability="beforeDescendants"
    android:focusableInTouchMode="true" >
```

避免進入Activity後 EditText自動取得focus
===
在layout中，加入以下代碼在非EditText的欄位中
就可以將focus設定在該元件上，而不會在EditText上了

```xml
android:focusable="true"
android:focusableInTouchMode="true"
```
