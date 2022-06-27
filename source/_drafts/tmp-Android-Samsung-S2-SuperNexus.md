---
title: tmp_Android_Samsung_S2_SuperNexus
tags:
---
SuperNexus for samsung S2
===

CWM-KitKatCompatible-i9100.tar => 使用Odin燒錄的recovery image 
CWM-KitKatCompatible-i9100.tar => 使用recovery mode燒錄的 recovery image 
SuperNexus-4.0-i9100-BUILD1.zip => 在網路上下載的Android 4.4 image，使用recovery mode燒錄 
gapps-kk-20131209.zip => google app，使用recovery mode燒錄 
mira-patched-for-SuperNexus4.0Build1_GT-I9100 => 在網路上下載的關於miracast sink的patch 
SuperNexus-4.0-i9100-BUILD1_sinkwork.zip => Android 4.4 image with nick miracast sink patch and mira-patched-for-SuperNexus4.0Build1_GT-I9100，使用recovery mode燒錄 

下載SuperNexus source code 1. mkdir ~/SuperNexus 
2. cd ~/SuperNexus 
3. repo init -u https://github.com/SuperNexus/android_manifest.git -b kitkat 
4. repo sync build code 

1. Proprietary Files Setting (Connect S2 to PC via usb(adb)) 
2. cd ~/SuperNexus/device/samsung/i9100/ 
3. ./extract-files.sh 
4. cd ~/SuperNexus/ 
5. source build/envsetup.sh 
6. lunch 
7. input to console "17" for 17. i9100-userdebug 
8. make otapackage build完之後會在SuperNexus/out/target/product/i9100/下產生SuperNexus-4.0-i9100-BUILD1.zip 
然後就可以利用recovery mode來更新檔案 p.s. 1~3只需要執行一次 

燒錄方式 
1. press VOL+/Power/Home key to enter recovery mode 
2. wide data/factory reset 
3. install zip (SuperNexus-4.0-i9100-BUILD1_sinkwork.zip) 
4. install zip (gapps-kk-20131209.zip)