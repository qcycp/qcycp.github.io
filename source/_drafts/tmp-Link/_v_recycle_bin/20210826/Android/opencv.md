1. download opencv sdk for Android
https://opencv.org/releases/

https://blog.csdn.net/userhu2012/article/details/89522851

![](_v_images/20190825033126127_1706.png =800x)

![](_v_images/20190825033209012_6396.png =800x)

File -> New -> Import Module...
![](_v_images/20190825033335807_22882.png =546x)

![](_v_images/20190825033413551_27467.png =800x)

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