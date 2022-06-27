---
title: tmp_AVD
tags:
---
新增/設定 Android Virtual Machine (AVD) 掛載我們自己編譯的android system
===

在linux環境下
1. 下載安裝android SDK in http://downloads.puresoftware.org/files/android/SDK/

a) cd android-sdk-linux/tools/
b) ./android update sdk --no-ui //下載、更新SDK

2. create avd device
a) cd android-sdk-linux/tools/
b) ./android list avd      //查詢目前所有的avd
c) ./android list targets  //查詢目前可建立的avd種類
d) ./android create avd -n myavd -t 21 -c 512M --abi armeabi-v7a
   // -n設定avd name
   //建立avd，-t 21代表要建立的avd type是android-15
   //若是該種avd的abi有超過一種，就需要再用--abi來指定

3. 執行avd
a) cd android-sdk-linux/tools/
b) ./emulator -avd myavd  //使用內建的android system
c) ./emulator -avd myavd -system imgs/system.img -ramdisk imgs/ramdisk.img -data imgs/userdata.img
   //使用我們自己編譯的android system