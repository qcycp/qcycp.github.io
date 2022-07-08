---
title: tmp_Android_Nexus_7
abbrlink: 2684f3c4
tags:
---
Nexus 7 抓code、build code
===

抓 source code, build source code,燒 source code, 參考網址
Nexus 7 (Wi-Fi) binaries for Android 4.4.2 (KOT49H)
https://github.com/catalinionita/Ecryptfs-Tools-for-Android/wiki/Building-AOSP-4.4_r1.2-with-efs-tools-on-Nexus-7-Tablet
https://developers.google.com/android/nexus/drivers
https://developers.google.com/android/nexus/images

在build code前，要先下載相對應的driver
1. asus-flo-kot49h-a9532596.tgz
2. broadcom-flo-kot49h-c33beb3d.tgz
3. qcom-flo-kot49h-f92d75b1.tgz

build code指令 for Nexus 7 第二代Wi-Fi版
1. source build/envsetup.sh
2. lunch 選aosp_flo-userdebug
3. make

build code指令 for Nexus 7 第二代LTE版
1. source build/envsetup.sh
2. lunch 選aosp_deb-userdebug
3. make