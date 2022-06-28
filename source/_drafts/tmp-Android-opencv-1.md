---
title: tmp_Android_opencv
tags:
---
compile opencv for android
===
[Compiling and Using OpenCV on Android from C++ (Without OpenCVManager) \| sisik](https://www.sisik.eu/blog/android/ndk/opencv-without-java)

1. download opencv
user@vm-docker:~/android_opencv$ git clone https://github.com/opencv/opencv.git

2. download android NDK
[NDK Downloads  \|  Android NDK  |  Android Developers](https://developer.android.com/ndk/downloads/)
user@vm-docker:~/android/android-ndk-r19$

3. install cmake
CMake 3.6.0 or higher is required.
[Download \| CMake](https://cmake.org/download/)
a. download cmake-3.13.3-Linux-x86_64.sh
b. user@vm-docker:~$ chmod +x cmake-3.13.3-Linux-x86_64.sh
c. user@vm-docker:~$ sudo sh cmake-3.13.3-Linux-x86_64.sh
```xml
Do you accept the license? [yN]:
y
By default the CMake will be installed in:
  "/home/user/cmake-3.13.3-Linux-x86_64"
Do you want to include the subdirectory cmake-3.13.3-Linux-x86_64?
Saying no will install in: "/home/user" [Yn]:
y

Using target directory: /home/user/cmake-3.13.3-Linux-x86_64
Extracting, please wait...

Unpacking finished successfully
user@vm-docker:~$
```
d. user@vm-docker:~$ sudo ln -s /home/user/cmake-3.13.3-Linux-x86_64/bin/* /usr/local/bin

4. compile
user@vm-docker:~/android_opencv/opencv/android_build$ cmake .. -DCMAKE_TOOLCHAIN_FILE=/home/user/android/android-ndk-r19/build/cmake/android.toolchain.cmake -DANDROID_NDK=/home/user/android/android-ndk-r19 -DANDROID_NATIVE_API_LEVEL=android-21 -DBUILD_JAVA=OFF -DBUILD_ANDROID_EXAMPLES=OFF -DBUILD_ANDROID_PROJECTS=OFF -DANDROID_STL=c++_shared -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX:PATH=/home/user/android_opencv/opencv/android_build/out -DANDROID_ABI=arm64-v8a

cmake -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_TOOLCHAIN_FILE=/home/user/android/android-ndk-r18b/build/cmake/android.toolchain.cmake -DANDROID_NDK=/home/user/android/android-ndk-r18b -DANDROID_NATIVE_API_LEVEL=android-21 -DBUILD_JAVA=OFF -DWITH_FFMPEG=ON -DBUILD_ANDROID_EXAMPLES=OFF -DBUILD_ANDROID_PROJECTS=OFF -DANDROID_STL=c++_shared -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX:PATH=/home/user/android_opencv/opencv/android_build/out -DANDROID_ABI=armeabi-v7a ..

5. make
6. make install