---
title: tmp_Android_UncaughtExceptionHandler
abbrlink: 8653a157
tags:
---
android UncaughtExceptionHandler
===

[android 异常捕获-UncaughtExceptionHandler - 简书](https://www.jianshu.com/p/2ca67f354bc7)
捕捉任何沒有catch到的exception
然後自動重啟apk

```java
public class myApplication extends Application {
    private static final String TAG = "myApplication";

    @Override
    public void onCreate() {
        super.onCreate();
        Log.d(TAG, "onCreate()");
        CrashHandler.getInstance().init(this);
    }
}
```

```java
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Environment;
import android.os.Looper;
import android.util.Log;
import android.widget.Toast;

import com.foxconn.facepad.activity.SplashActivity;

import java.io.File;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class CrashHandler implements Thread.UncaughtExceptionHandler {
    private static final String TAG = "hh_CrashHandler";

    private Thread.UncaughtExceptionHandler mDefaultHandler;
    private Context mContext;
    private Map<String, String> paramsMap = new HashMap<>();
    private SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss");
    private static CrashHandler mInstance;
    private CrashHandler() {
    }

    public static synchronized CrashHandler getInstance() {
        if (null == mInstance) {
            mInstance = new CrashHandler();
        }
        return mInstance;
    }

    public void init(Context context) {
        mContext = context;
        mDefaultHandler = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    @Override
    public void uncaughtException(Thread thread, Throwable ex) {
        if (!handleException(ex) && mDefaultHandler != null) {
            mDefaultHandler.uncaughtException(thread, ex);
        } else {
            try {
                Thread.sleep(5000);
            } catch (InterruptedException e) {
                Log.e(TAG, "error : ", e);
            }

            Intent intent = new Intent(mContext, SplashActivity.class);
            intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TASK | Intent.FLAG_ACTIVITY_NEW_TASK);
            mContext.startActivity(intent);

            try {
                android.os.Process.killProcess(android.os.Process.myPid());
                System.exit(0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private boolean handleException(Throwable ex) {
        if (ex == null) {
            return false;
        }
        collectDeviceInfo(mContext);

        new Thread() {
            @Override
            public void run() {
                Looper.prepare();
                Toast.makeText(mContext, "App crash with unexpected exception!", Toast.LENGTH_SHORT).show();
                Looper.loop();
            }
        }.start();

        saveCrashInfo2File(ex);
        return true;
    }

    public void collectDeviceInfo(Context ctx) {
        try {
            PackageManager pm = ctx.getPackageManager();
            PackageInfo pi = pm.getPackageInfo(ctx.getPackageName(), PackageManager.GET_ACTIVITIES);
            if (pi != null) {
                String versionName = pi.versionName == null ? "null" : pi.versionName;
                String versionCode = pi.versionCode + "";
                paramsMap.put("versionName", versionName);
                paramsMap.put("versionCode", versionCode);
            }
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(TAG, "an error occured when collect package info", e);
        }
        Field[] fields = Build.class.getDeclaredFields();
        for (Field field : fields) {
            try {
                field.setAccessible(true);
                paramsMap.put(field.getName(), field.get(null).toString());
            } catch (Exception e) {
                Log.e(TAG, "an error occured when collect crash info", e);
            }
        }
    }

    private void saveCrashInfo2File(Throwable ex) {
        StringBuffer sb = new StringBuffer();
        for (Map.Entry<String, String> entry : paramsMap.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            sb.append(key + "=" + value + "\n");
        }

        Writer writer = new StringWriter();
        PrintWriter printWriter = new PrintWriter(writer);
        ex.printStackTrace(printWriter);
        Throwable cause = ex.getCause();
        while (cause != null) {
            cause.printStackTrace(printWriter);
            cause = cause.getCause();
        }
        printWriter.close();
        String result = writer.toString();
        sb.append(result);
        try {
            String time = format.format(new Date());
            String fileName = "crash-" + time + ".log";
            if (Environment.getExternalStorageState().equals(Environment.MEDIA_MOUNTED)) {
                String path = mContext.getObbDir().getAbsolutePath() + File.separator;
                File dir = new File(path);
                if (!dir.exists()) {
                    dir.mkdirs();
                }
                FileOutputStream fos = new FileOutputStream(path + fileName);
                fos.write(sb.toString().getBytes());
                fos.close();
            }
        } catch (Exception e) {
            Log.e(TAG, "An error occured while writing file...", e);
        }
    }
}

```