---
title: tmp_Android_auto_restart_when_unknown_exception_occurs
abbrlink: be6dd30c
tags:
---
apk發生未捕捉的exception後，自動重啟
===

```java
package com.foxconn.rtspplayer;

import android.app.Application;
import android.content.Intent;
import android.util.Log;

public class RTSPApplication extends Application implements Thread.UncaughtExceptionHandler {
    private static final String TAG = "RTSPApplication";

    @Override
    public void onCreate() {
        super.onCreate();
        Log.d(TAG, "onCreate()");
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    @Override
    public void uncaughtException(Thread thread, Throwable ex) {
        Log.d(TAG, "uncaughtException");
        Intent intent = new Intent(this, MainActivity.class);
        intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP | Intent.FLAG_ACTIVITY_NEW_TASK);
        startActivity(intent);
        android.os.Process.killProcess(android.os.Process.myPid());
    }
}
```