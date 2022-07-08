---
title: tmp_Android_launcher
abbrlink: ed2412ee
tags:
---
Android Launcher
===

要把我們的應用程序作为home，只需要在AndroidManifest.xml中添加：
<category android:name="android.intent.category.HOME" />
<category android:name="android.intent.category.DEFAULT" />

完整描述如下
<activity
    android:name="com.sljjyy.sao.launcher.MainActivity"
    android:label="@string/app_name" >
    <intent-filter>
        <action android:name="android.intent.action.MAIN" />
        <category android:name="android.intent.category.HOME" />
        <category android:name="android.intent.category.DEFAULT" />
    </intent-filter>
</activity>

p.s.1
<category android:name="android.intent.category.LAUNCHER" />
增加以上描述，可以讓該APK出現在ALL APPS的列表中

p.s.2
預設的Launcher2會有<category android:name="android.intent.category.MONKEY"/>
目的在讓Launcher2在執行Monkey test時，作為預設會執行的APK
避免同時有多個Launcher，導致Monkey test會被中斷