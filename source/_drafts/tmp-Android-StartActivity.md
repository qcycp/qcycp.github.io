---
title: tmp_Android_StartActivity
abbrlink: 8ca6e9a8
tags:
---
```java
Intent intent = getPackageManager().getLaunchIntentForPackage("com.foxconn.webfrontend");
if (intent != null) {
    intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
    startActivity(intent);
}
```

```java
Intent intent = new Intent(Intent.ACTION_MAIN);
intent.setComponent(new ComponentName("com.foxconn.webfrontend","com.foxconn.webfrontend.activity.MainActivity"));
intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
startActivity(intent);
```