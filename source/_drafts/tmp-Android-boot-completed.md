---
title: tmp_Android_boot_completed
tags:
---
```xml
<action android:name="android.intent.action.BOOT_COMPLETED" />
<action android:name="android.intent.action.QUICKBOOT_POWERON" />
```

BootCompleted BroadcastReceiver
===


//AndroidManifest.xml
```
<receiver android:name="com.tpv.scalarservice.BootCompletedReceiver" >
    <intent-filter>
        <action android:name="android.intent.action.BOOT_COMPLETED" />
    </intent-filter>
</receiver>
```

//BootCompletedReceiver.java
```
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class BootCompletedReceiver extends BroadcastReceiver {
    private static final String TAG = "BootCompletedReceiver";

    @Override
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals(Intent.ACTION_BOOT_COMPLETED)) {
            Log.d(TAG, "Receive BOOT_COMPLETED intent");

            //do something...
        }
    }
}
```