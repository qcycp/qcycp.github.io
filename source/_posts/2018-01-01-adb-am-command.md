---
title: adb commands
abbrlink: 2da5a158
date: 2018-01-01 00:00:00
categories: Android
tags:
- Android
- adb
---
https://developer.android.com/studio/command-line/adb

##### adb
```
adb kill-server                         // 關掉 adb 伺服器
adb start-server                        // 啟動 adb 伺服器

adb reboot                              // 重開機
adb reboot bootloader                   // 重開機後，進入bootloader mode
adb root                                // 以root權限登入
adb remount                             // 將系統(/system)重新掛載成 R/W 模式
adb devices                             // 查看目前連線的裝置
adb shell                               // shell登入
adb -s devicename shell                 // 指定要連結的device

adb push local_source /path/to/phone    // 將檔案複製到android裝置
adb pull /path/from/phone local_source  // 將檔案從android裝置上複製回本機端
adb install test.apk
adb install -r test.apk                 // 保留資料，重新安裝test.apk
adb uninstall package.name.xxx          // 移除程式
adb uninstall -k package.name.xxx       // 移除程式時，保留資料
adb shell getprop                       // 讀取android中build.prop的值
adb shell setprop                       // 修改系统属性
adb shell getevent /dev/input/event0
adb shell setevent /dev/input/event0
adb shell dmesg                         // 印出Linux kernel log
adb shell cat /proc/kmsg                // 持續印出 kernel log
adb shell dumpsys                       // 顯示系統資訊
adb shell dumpsys SurfaceFlinger        /* battery: 列出基本的電池資訊
                                           batteryinfo: 各種功能使用 power 的狀況，同About Phone 裡面的電池使用狀況。
                                           SurfaceFlinger: 系統的 Surface 使用情況
                                           power: 列出 Power Manager 的參數，如 wakelock 時間等
                                           alarm: 列出目前有註冊 alarm 者
                                        */
```

##### am
* am broadcast
```
[-a <ACTION>]
[-d <DATA_URI>]
[-t <MIME_TYPE>] 
[-c <CATEGORY> [-c <CATEGORY>] ...] 
[-e|--es <EXTRA_KEY> <EXTRA_STRING_VALUE> ...] 
[--ez <EXTRA_KEY> <EXTRA_BOOLEAN_VALUE> ...] 
[-e|--ei <EXTRA_KEY> <EXTRA_INT_VALUE> ...] 
[-n <COMPONENT>]
[-f <FLAGS>] [<URI>]

$ adb shell am broadcast -a android.intent.action.BOOT_COMPLETED
$ adb shell am broadcast -a android.intent.action.BOOT_COMPLETED -n com.example/.MainActivity
$ adb shell am broadcast -a android.intent.action.BOOT_COMPLETED -c android.intent.category.DEFAULT -n com.example/.MainActivity
$ adb shell am broadcast -a intent.action.UPDATE_APK --es filePath "/sdcard/Download/simple.apk" --ez keep true
```
* am start
```
# StartActivity
$ adb shell am start -n com.mtreat.faceid/.server.ServerMainActivity
# 啟動瀏覽器，打開目標網址
$ am start -a android.intent.action.VIEW -d http://www.google.com
# launch Settings
$ am start -a android.intent.action.MAIN -n com.android.settings/.Settings
```
* StartService
```
$ adb shell am startservice -n com.foxconn.monitorservice/.service.MonitorServie
$ adb shell am startforegroundservice -n com.foxconn.monitorservice/.service.MonitorServie
$ adb shell am stopservice -n com.foxconn.monitorservice/.service.MonitorServie
```

##### pm
* pm list packages
```
prints all packages, optionally only those whose package name contains the text in FILTER. Options:
-f: see their associated file.
-d: filter to only show disbled packages.
-e: filter to only show enabled packages.
-s: filter to only show system packages.
-3: filter to only show third party packages.
-i: see the installer for the packages.
-u: also include uninstalled packages.

$ adb shell pm list packages com.google
package:com.google.android.youtube
package:com.google.android.ext.services
...
```