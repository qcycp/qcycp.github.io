---
title: tmp_Android_installed_APK
abbrlink: 3c063864
tags:
---
查詢installed apk
===

```
/*
* Get all installed application on mobile and return a list
* @param c Context of application
* @return list of installed applications
*/
public static List<Applicationinfo> getInstalledApplication(Context c) {
    return c.getPackageManager().getInstalledApplications(PackageManager.GET_SERVICES);
}
```

使用方式
```
List<Applicationinfo> list = getInstalledApplication(this);
for (ApplicationInfo aList : list) {
    Log.d(TAG, aList.packageName);
}
```