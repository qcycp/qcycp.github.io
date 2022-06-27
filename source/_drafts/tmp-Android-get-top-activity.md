---
title: tmp_Android_get_top_activity
tags:
---
get top activity
===

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