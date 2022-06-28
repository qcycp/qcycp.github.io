---
title: tmp_Android_foreground_service
tags:
---
Foreground Service
===

[Android 探索之備忘錄 [Day21-Foreground Service] - iT 邦幫忙::一起幫忙解決難題，拯救 IT 人的一天](https://ithelp.ithome.com.tw/articles/10159301)

當app有背景service在運行時, 可以利用foreground service的特性來提醒使用者目前有正在運行的背景服務,
這種方式也可以讓系統在記憶體不足時不會先被系統給砍掉

(先被砍掉的通常是那些看不到的背景服務)

[Android Foreground Service (前台服務) - 掃文資訊](https://hk.saowen.com/a/6eed89d451a49bfabea374948431375e012ab306e33c9c6fd246f359ad20ee1e)


```java
@Override
public int onStartCommand(Intent intent, int flags, int startId) {
    XLog.d("[%s] onStartCommand()", TAG);

    Notification.Builder builder = new Notification.Builder(this.getApplicationContext());
    Intent nfIntent = new Intent(this, MainActivity.class);
    builder.setContentIntent(PendingIntent.getActivity(this, 0, nfIntent, 0))
           .setLargeIcon(BitmapFactory.decodeResource(this.getResources(), R.mipmap.logo))
           .setContentTitle(getResources().getString(R.string.app_name))
           .setSmallIcon(R.mipmap.logo)
           .setContentText(getResources().getString(R.string.monitor))
           .setWhen(System.currentTimeMillis());
    Notification notification = builder.build();
    notification.defaults = Notification.DEFAULT_SOUND;

    startForeground(1392, notification);

    return super.onStartCommand(intent, flags, startId);
}
```

![foreground.png](:storage\dc208928-f5ad-437b-b8c1-8ef13a06a2b8\e8823195.png)