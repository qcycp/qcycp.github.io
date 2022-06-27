---
title: tmp_Android_APK_install_time
tags:
---
查詢apk安裝時間
===

// 第一種用法
PackageManager pm = MainActivity.this.getPackageManager();
ApplicationInfo appInfo = null;
try {
    appInfo = pm.getApplicationInfo("com.android.settings", 0);
} catch (PackageManager.NameNotFoundException e) {
    e.printStackTrace();
}
String appFile = appInfo.sourceDir;
long installed = new File(appFile).lastModified(); //Epoch Time
Log.i(TAG, "installed time = " + installed);

// 第二種用法
PackageManager pm = MainActivity.this.getPackageManager();
PackageInfo packageInfo = null;
try {
    packageInfo = pm.getPackageInfo("com.android.settings", PackageManager.GET_PERMISSIONS);

    Date installTime = new Date( packageInfo.firstInstallTime );
    Log.d(TAG, "Installed: " + installTime.toString());

    Date updateTime = new Date( packageInfo.lastUpdateTime );
    Log.d(TAG, "Updated: " + updateTime.toString());
} catch (PackageManager.NameNotFoundException e) {
    e.printStackTrace();
}