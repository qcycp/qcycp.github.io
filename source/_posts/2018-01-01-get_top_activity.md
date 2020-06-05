---
title: get top activity
abbrlink: 4089bb19
date: 2018-01-01 00:00:00
categories: Android
tags:
- Android
---
```java
import android.app.ActivityManager;

public Class getTopActivity() {
    ActivityManager manager = (ActivityManager) getSystemService(ACTIVITY_SERVICE);
    String classname = manager.getRunningTasks(1).get(0).topActivity.getClassName();
    Class cls = null;
    try {
        cls = Class.forName(classname);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

    return cls;
}
```