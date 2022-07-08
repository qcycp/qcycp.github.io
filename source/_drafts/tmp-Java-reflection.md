---
title: tmp_Java_reflection
abbrlink: 500ab001
tags:
---
Java reflection
===
/frameworks/base/core/java/android/view/SurfaceControl.java
android.view.SurfaceControl is a hide class
在Android Studio中，如果apk需要使用到android.view.SurfaceControl的function，必須使用reflection的方式
```java
import android.view.SurfaceControl;

Bitmap mScreenBitmap = SurfaceControl.screenshot((int) dims[0], (int) dims[1]);
if (mScreenBitmap == null) {
    notifyScreenshotError(mContext);
    finisher.run();
    return;
}
// Take the screenshot via reflection
try {
    Class hideClass = Class.forName("android.view.SurfaceControl");
    Method hideMethod = hideClass.getMethod("screenshot", int.class, int.class);
    Bitmap mScreenBitmap = (Bitmap) hideMethod.invoke(null, (int) dims[0], (int) dims[1]);

    if (mScreenBitmap == null) {
        notifyScreenshotError(mContext);
        finisher.run();
        return;
    }
} catch (NoSuchMethodException e) {
    e.printStackTrace();
} catch (ClassNotFoundException e) {
    e.printStackTrace();
} catch (InvocationTargetException e) {
    e.printStackTrace();
} catch (IllegalAccessException e) {
    e.printStackTrace();
}
```
#### Reflection on Android
```java
import java.lang.reflect.Method;

try {
    Method getString = Build.class.getDeclaredMethod("getString", String.class);
    getString.setAccessible(true);
    Log.d(TAG, "Serialno: " + getString.invoke(null, "ro.serialno").toString());
} catch (Exception e) {
    e.printStackTrace();
}
```
```java
import java.lang.reflect.Method;

try {
    Class<?> c = Class.forName("android.os.SystemProperties");
    Method get = c.getMethod("get", String.class);
    Log.d(TAG, "Serialno: " + get.invoke(c, "ro.serialno").toString());
} catch (Exception e) {
    e.printStackTrace();
}
```