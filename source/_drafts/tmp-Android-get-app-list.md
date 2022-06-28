---
title: tmp_Android_get_app_list
tags:
---
get app list
===
取出系統中安裝的app list
```java
PackageManager pm = getPackageManager();
List app = pm.getInstalledApplications(0);
for (ApplicationInfo info : app) {
    Log.d(TAG, "packageName: " + info.packageName);
    Log.d(TAG, "Label: " + info.loadLabel(pm).toString());
}
```
取出系統中安裝，並且設定會列在All Apps中的app list
```java
List apps;
PackageManager pm = getPackageManager();
Intent mainIntent = new Intent(Intent.ACTION_MAIN, null);
mainIntent.addCategory(Intent.CATEGORY_LAUNCHER);
apps = pm.queryIntentActivities(mainIntent, 0);
for (ResolveInfo info : apps) {
    Log.d(TAG, "packageName: " + info.activityInfo.packageName);
    Log.d(TAG, "Label: " + info.activityInfo.loadLabel(pm).toString());
}
```