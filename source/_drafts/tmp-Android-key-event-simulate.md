---
title: tmp_Android_key_event_simulate
abbrlink: a0c52000
tags:
---
Simulate key event on Android
===

法一
http://www.codeproject.com/Articles/462201/Simulating-keypress-events-on-Android

We simply execute the following command on the terminal/serial console to generate a event of a specific keycode.

```sh
input keyevent <keycode>
```

![66102d3722017cae5767d24c2477ee9e.png](:/c4df1802b2bb44ff98aaa217383fa522)


法二
https://www.pocketmagic.net/injecting-events-programatically-on-android/

Using an instrumentation object
//in AndroidManifest.xml
```
<uses-permission android:name="android.permission.INJECT_EVENTS" />
```

Usage
```
import android.view.KeyEvent;
import android.app.Instrumentation;

//The method can not be called from the main application thread
new Thread(new Runnable() {
    @Override
    public void run() {
        Instrumentation m_Instrumentation = new Instrumentation();
        m_Instrumentation.sendKeyDownUpSync(KeyEvent.KEYCODE_B);
    }    
}).start();
```