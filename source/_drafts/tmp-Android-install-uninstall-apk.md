---
title: tmp_Android_install_uninstall_apk
tags:
---
Install/Uninstall APK
===
http://www.trinea.cn/android/android-install-silent/


1. 在adb shell中，直接執行pm來安裝/反安裝APK

Install
    -r: reinstall an exisiting app, keeping its data.
`pm install -r /path/apkName.apk`
 Uninstall
`pm uninstall package.name.xxx`

2. 静默安裝
使用Runtime.exec或ProcessBuilder，在APK中執行pm指令
APK需要有系統權限，並且要在Android source code中編譯

a. 在AndroidManifest.xml中，加入以下權限
    android:sharedUserId="android.uid.system"
    <uses-permission android:name="android.permission.INSTALL_PACKAGES">
    <uses-permission android:name="android.permission.DELETE_PACKAGES">
b. 在Android.mk中，加入以下權限
    LOCAL_CERTIFICATE := platform

3. 普通模式安装，調用系统Intent
安裝
```
String filePath = "/sdcard/android_file_manager.apk";
File file = new File(filePath);
if (file.exists() && file.isFile()) {
    Intent intent = new Intent();
    intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
    intent.setAction(Intent.ACTION_VIEW);
    intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
    startActivity(intent);
}
```

卸載 
```
Uri packageURI = Uri.parse("package:com.example.android_file_manger");
Intent uninstallIntent = new Intent(Intent.ACTION_DELETE, packageURI);
startActivity(uninstallIntent);
```