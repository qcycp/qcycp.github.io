---
title: android_setup_opencv
abbrlink: 29bb5527
date: 2021-08-26 10:27:36
categories:
tags:
---
1. download opencv sdk for Android
https://opencv.org/releases/

https://blog.csdn.net/userhu2012/article/details/89522851

![](image_01.png)

![](image_02.png)

File -> New -> Import Module...
![](image_03.png)

![](image_04.png)

File -> Project Structure... -> app -> Dependencies -> choose :openCVLibrary411

modify openCVLibrary411 build.gradle
1. apply plugin: 'com.android.application' to apply plugin: 'com.android.library'
2. remove defaultConfig: applicationId "org.opencv"
3. add minSdkVersion and targetSdkVersion in defaultConfig

copy opencv-4.1.1-android-sdk\OpenCV-android-sdk\sdk\native\libs to FacePad\app\src\main\jniLibs

add config in app:build.gradle
```
    sourceSets {
        main {
            jniLibs.srcDirs = ['src/main/jniLibs']
        }
    }
```