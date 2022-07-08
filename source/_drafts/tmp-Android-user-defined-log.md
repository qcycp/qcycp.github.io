---
title: tmp_Android_user_defined_log
abbrlink: f9548b10
tags:
---
User-defined Log instead of Android Log
===

//Log.java
```
public class Log {
    private static final boolean DEBUG = true;
    public static void v(java.lang.String tag, java.lang.String msg) {
        if (DEBUG) {
            android.util.Log.v(tag, msg);
        }
    }

    public static void v(java.lang.String tag, java.lang.String msg, java.lang.Throwable tr) {
        if (DEBUG) {
            android.util.Log.v(tag, msg, tr);
        }
    }

    public static void d(java.lang.String tag, java.lang.String msg) {
        if (DEBUG) {
            android.util.Log.d(tag, msg);
        }
    }

    public static void d(java.lang.String tag, java.lang.String msg, java.lang.Throwable tr) {
        if (DEBUG) {
            android.util.Log.d(tag, msg, tr);
        }
    }

    public static void i(java.lang.String tag, java.lang.String msg) {
        if (DEBUG) {
            android.util.Log.i(tag, msg);
        }
    }

    public static void i(java.lang.String tag, java.lang.String msg, java.lang.Throwable tr) {
        if (DEBUG) {
            android.util.Log.i(tag, msg, tr);
        }
    }

    public static void w(java.lang.String tag, java.lang.String msg) {
        if (DEBUG) {
            android.util.Log.w(tag, msg);
        }
    }

    public static void w(java.lang.String tag, java.lang.String msg, java.lang.Throwable tr) {
        if (DEBUG) {
            android.util.Log.w(tag, msg, tr);
        }
    }

    public static void e(java.lang.String tag, java.lang.String msg) {
        if (DEBUG) {
            android.util.Log.e(tag, msg);
        }
    }

    public static void e(java.lang.String tag, java.lang.String msg, java.lang.Throwable tr) {
        if (DEBUG) {
            android.util.Log.e(tag, msg, tr);
        }
    }
}
```

將原本的
`import android.util.Log;`
取代成
`import com.example.Log;`
就可以自己控制在程式中的Log，要不要顯示在Logcat中