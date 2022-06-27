---
title: tmp_Android_memory_test
tags:
---
Android memory test
===

```java
import android.app.ActivityManager;

@Override
protected void onResume() {
    super.onResume();
    Log.d(TAG, "onResume()");

    int count = getAllowAllocatedMemory();
    Log.d(TAG, "Count = " + count);//200000000

    try {
        byte[] bigData = new byte[getAllowAllocatedMemory()];
    } catch (OutOfMemoryError e) {
        Log.e(TAG, "OutOfMemory Exception");
    }
}
    
public int getAllowAllocatedMemory() {
    ActivityManager am = (ActivityManager)  getSystemService(ACTIVITY_SERVICE);
    // unit return from system is megabyte.
    int realAllowMemory = am.getMemoryClass();
    // we convert back to byte
    return realAllowMemory * 1000 * 1000;
}
```