---
title: tmp_android_aosp
abbrlink: '8080e920'
tags:
---
Android aosp download/build code
===

Download source code
apt-get install git-core curl
mkdir ~/bin
PATH=~/bin:$PATH
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
mkdir WORKING_DIRECTORY
cd WORKING_DIRECTORY
repo init -u https://android.googlesource.com/platform/manifest -b help // 查詢版號
repo init -u https://android.googlesource.com/platform/manifest   // 下載最新版本
repo init -u https://android.googlesource.com/platform/manifest -b android-4.0.1_r1 // 下載指定版本
repo sync

Build full package
in root folder
$ . build/envsetup.sh
$ lunch //compile setting selection
$ make

build target apk
1.  $ mmm packages/apps/apk_folder_name
2.
$ cd packages/apps/apk_folder_name
$ mm

Error
1) 若repo init發生錯誤，可以將repo相關資料全都刪除，再重複上述動作
2) 調用repo sync後，會出現下列錯誤
fatal: '../platform/abi/cpp.git' does not appear to be a git repository
fatal: The remote end hung up unexpectedly
error: Cannot fetch platform/abi/cpp
==>
打開.repo目錄下的manifest.xml文件並找到fetch屬性
原本的設定為fetch=".."
將fetch修改為fetch="git://Android.git.linaro.org/"

android-4.4.4_r2
下載code之後，要先執行以下動作，才能編譯成功
touch frameworks/opt/telephony/src/java/android/telephony/gsm/SmsMessage.java
touch frameworks/opt/telephony/src/java/android/telephony/gsm/SmsManager.java

init錯誤時有可能會要求輸入以下資料
git config --global user.email "you@example.com"
git config --global user.name "Your Name"