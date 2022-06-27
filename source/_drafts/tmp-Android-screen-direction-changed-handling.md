---
title: tmp_Android_screen_direction_changed_handling
tags:
---
橫豎屏切換時，Activity的處理
===
http://www.cnblogs.com/hibraincol/archive/2010/09/18/1829862.html

預設情況下，改變裝置的方向時，當前的Activity會依序執行
onPause->onStop->onDestroy->onCreate->onResume
也就是說，Activity會先被銷毀，然後再根據當前的portrait/landscape mode來重建Activity

如何不讓系統自動處理"屏幕方向改變"這類事件，其他事件依舊交由系統處理
1. 加入Activity的configChanges屬性

//in AndroidManifest.xml
```
<uses-permission android:name="android.permission.CHANGE_CONFIGURATION"/>
<activity android:name=".MainActivity"
          android:label="@string/app_name"
          android:configChanges="orientation|screenSize">
    <intent-filter>
        <action android:name="android.intent.action.MAIN" />
        <category android:name="android.intent.category.LAUNCHER" />
    </intent-filter>
</activity>
```
2.
in MainActivity.java
```
import android.content.res.Configuration;

@Override
public void onConfigurationChanged(Configuration newConfig) {
    super.onConfigurationChanged(newConfig);
    if(newConfig.orientation == Configuration.ORIENTATION_LANDSCAPE) {
        Log.d(TAG, "Change mode to landscape");
        //do something...
    } else if(newConfig.orientation == Configuration.ORIENTATION_PORTRAIT){
        Log.d(TAG, "Change mode to portrait");
        //do something...
    }
}
```