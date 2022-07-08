---
title: tmp_Android_StartService_Android_O
abbrlink: 42f1b041
tags:
---
StartService in Android O
===

```sh
java.lang.RuntimeException: Unable to start receiver com.foxconn.monitorservice.receiver.BootCompletedReceiver: java.lang.IllegalStateException: Not allowed to start service Intent { cmp=com.foxconn.monitorservice/.service.MonitorService }: app is in background uid UidRecord{dd26faa u0a16 RCVR idle procs:1 seq(0,0,0)}
        at android.app.ActivityThread.handleReceiver(ActivityThread.java:3259)
        at android.app.ActivityThread.-wrap17(Unknown Source:0)
        at android.app.ActivityThread$H.handleMessage(ActivityThread.java:1677)
        at android.os.Handler.dispatchMessage(Handler.java:105)
        at android.os.Looper.loop(Looper.java:164)
        at android.app.ActivityThread.main(ActivityThread.java:6541)
        at java.lang.reflect.Method.invoke(Native Method)
        at com.android.internal.os.Zygote$MethodAndArgsCaller.run(Zygote.java:240)
        at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:767)
Caused by: java.lang.IllegalStateException: Not allowed to start service Intent { cmp=com.foxconn.monitorservice/.service.MonitorService }: app is in background uid UidRecord{dd26faa u0a16 RCVR idle procs:1 seq(0,0,0)}
        at android.app.ContextImpl.startServiceCommon(ContextImpl.java:1505)
        at android.app.ContextImpl.startService(ContextImpl.java:1461)
        at android.content.ContextWrapper.startService(ContextWrapper.java:644)
        at android.content.ContextWrapper.startService(ContextWrapper.java:644)
        at com.foxconn.monitorservice.receiver.BootCompletedReceiver.onReceive(BootCompletedReceiver.java:19)
        at android.app.ActivityThread.handleReceiver(ActivityThread.java:3252)
        ... 8 more
java.lang.IllegalStateException: Not allowed to start service Intent { cmp=com.foxconn.monitorservice/.service.MonitorService }: app is in background uid UidRecord{dd26faa u0a16 RCVR idle procs:1 seq(0,0,0)}
        at android.app.ContextImpl.startServiceCommon(ContextImpl.java:1505)
        at android.app.ContextImpl.startService(ContextImpl.java:1461)
        at android.content.ContextWrapper.startService(ContextWrapper.java:644)
        at android.content.ContextWrapper.startService(ContextWrapper.java:644)
        at com.foxconn.monitorservice.receiver.BootCompletedReceiver.onReceive(BootCompletedReceiver.java:19)
        at android.app.ActivityThread.handleReceiver(ActivityThread.java:3252)
        at android.app.ActivityThread.-wrap17(Unknown Source:0)
        at android.app.ActivityThread$H.handleMessage(ActivityThread.java:1677)
        at android.os.Handler.dispatchMessage(Handler.java:105)
        at android.os.Looper.loop(Looper.java:164)
        at android.app.ActivityThread.main(ActivityThread.java:6541)
        at java.lang.reflect.Method.invoke(Native Method)
        at com.android.internal.os.Zygote$MethodAndArgsCaller.run(Zygote.java:240)
        at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:767)
```

```java
public class BootCompletedReceiver extends BroadcastReceiver {
    private static final String TAG = BootCompletedReceiver.class.getSimpleName();

    @Override
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction() != null && intent.getAction().equals(Intent.ACTION_BOOT_COMPLETED)) {
            XLog.d("[%s] Receive BOOT_COMPLETED intent", TAG);

            Intent startIntent = new Intent(context, MonitorService.class);
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                context.startForegroundService(startIntent);
            }
            else {
                context.startService(startIntent);
            }
        }
    }
}
```