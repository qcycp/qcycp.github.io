---
title: tmp_Android_Nexus_7_development
abbrlink: c3ed2384
tags:
---
Nexus 7 燒錄方式
===

燒錄準備的六個檔案
android-info.txt
boot.img
cache.img
recovery.img
system.img
userdata.img


STEP
adb reboot bootloader
sudo su //切換到root
設定 export ANDROID_PRODUCT_OUT="放img的目錄"
fastboot devices //檢查fastboot是否有抓到devices
fastboot oem unlock //只需執行一次
fastboot -w flashall