---
title: tmp_Android_opencv
abbrlink: 8c299fae
tags:
---
opencv for android
===
[Building OpenCV & OpenCV Extra Modules For Android From Source \| You, Myself and Community](https://zami0xzami.wordpress.com/2016/03/17/building-opencv-for-android-from-source/)

1. download opencv  
[GitHub - opencv/opencv: Open Source Computer Vision Library](https://github.com/opencv/opencv)
git clone https://github.com/opencv/opencv.git

2. download opencv extra module  
[GitHub - opencv/opencv_contrib: Repository for OpenCV's extra modules](https://github.com/opencv/opencv_contrib)


[[Android] Android Studio OPENCV 安裝步驟 @ Saioyan梟夜 :: 痞客邦 ::](http://kk665403.pixnet.net/blog/post/403248824-%5Bandroid%5D-android-studio-opencv-%E5%AE%89%E8%A3%9D%E6%AD%A5%E9%A9%9F)

```java
//load native library: libopencv_java3.so
    static {
        System.loadLibrary("opencv_java3");
    }
```