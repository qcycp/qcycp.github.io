---
title: tmp_Android_Activity_orientation
tags:
---
Activity orientation
===
1. set in AndroidManifext.xml
```xml
<activity 
    android:name=".MainActivity"
    android:screenOrientation="landscape">
    <intent-filter>
        <action android:name="android.intent.action.MAIN" />
        <category android:name="android.intent.category.LAUNCHER" />
    </intent-filter>
</activity>
```
2. set in source code

        setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE); 