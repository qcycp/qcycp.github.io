---
title: tmp_Android_touch_event_simulate
abbrlink: 80e3a8e2
tags:
---
Simulate touch event on Android
===
http://www.pocketmagic.net/injecting-events-programatically-on-android/


Using an instrumentation object
//in AndroidManifest.xml
```
<uses-permission android:name="android.permission.INJECT_EVENTS" />
```

Usage

```
import android.app.Instrumentation;
import android.os.SystemClock;
import android.view.MotionEvent;

//The method can not be called from the main application thread
new Thread(new Runnable() {
    @Override
    public void run() {
        Instrumentation m_Instrumentation = new Instrumentation();
        m_Instrumentation.sendPointerSync(MotionEvent.obtain(SystemClock.uptimeMillis(),
                        SystemClock.uptimeMillis(),MotionEvent.ACTION_DOWN, pos_x, pos_y, 0));
        m_Instrumentation.sendPointerSync(MotionEvent.obtain(SystemClock.uptimeMillis(),
                        SystemClock.uptimeMillis(),MotionEvent.ACTION_UP, pos_x, pos_y, 0));
    }    
}).start();
```