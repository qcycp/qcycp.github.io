---
title: tmp_Android_no_ActionBar
tags:
---
指定Activity layout with no ActionBar
===
如果Activity是繼承AppCompatActivity，Theme必須使用Theme.AppCompat或者繼承自Theme.AppCompat
在styles.xml自訂style
```xml
<resources>
    <style name="AppTheme.NoActionBar" parent="@style/Theme.AppCompat">
        <item name="windowActionBar">false</item>
        <item name="windowNoTitle">true</item>
        <item name="android:windowFullscreen">true</item>
    </style>
</resources>
```
在AndroidManifest.xml中設定android:theme
```xml
<activity
    android:name=".activity.MainActivity"
    android:theme="@style/AppTheme.NoActionBar">
    <intent-filter>
        <action android:name="android.intent.action.MAIN" />
        <category android:name="android.intent.category.LAUNCHER" />
    </intent-filter>
</activity>
```