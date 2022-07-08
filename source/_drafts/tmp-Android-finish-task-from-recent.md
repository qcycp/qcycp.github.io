---
title: tmp_Android_finish_task_from_recent
abbrlink: bedeef2c
tags:
---
finish task and remove from recent apps
===
```java
import android.os.Build;

@Override
public void onBackPressed() {
    super.onBackPressed();
    finish();
}

@Override
public void finish() {
    if(Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
        super.finishAndRemoveTask();
    }
    else {
        super.finish();
    }
    android.os.Process.killProcess(android.os.Process.myPid());
}
```