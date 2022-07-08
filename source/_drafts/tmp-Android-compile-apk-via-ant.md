---
title: tmp_Android_compile_apk_via_ant
abbrlink: 2863a3ef
tags:
---
Compile apk via ant
===
Android NDK
https:\\developer.android.com\ndk\downloads\index.html

Android SDK
1. download sdk
https:\\developer.android.com\studio\index.html#download
2. update sdk
tools\android update sdk --no-ui

Apache Ant
1. sudo apt-get install ant
2. http:\\ant.apache.org\bindownload.cgi

Generate build.xml
1. cd \AndroidProject
2. \android-sdk-linux\tools\android update project --path . --target android-19

Compile
1. ant release
2. ant debug
