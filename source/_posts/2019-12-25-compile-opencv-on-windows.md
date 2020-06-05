---
title: Compile opencv on windows
abbrlink: f3c7f3
date: 2019-12-25 17:44:44
categories: [Software, opencv]
tags:
- opencv
---
#### 更新Visual Studio套件
1. 打開Visual Studio 2019
2. 工具->取得工具與功能->使用C++的桌面開發，主要是要更新CMAKE工具

#### 安裝cmake
https://github.com/Kitware/CMake/releases/download/v3.16.2/cmake-3.16.2-win64-x64.msi
下載Windows win64-x64 Installer: cmake-3.16.2-win64-x64.msi

#### 執行script
CMAKE_CONFIG_GENERATOR設定方式
根據你安裝的Visual Studio來設定，如果不確定版本，可以參考Visual Studio Installer顯示的資訊
![](Visual_Studio_Installer.png)
Visual Studio 15 2017 Win64
![](Visual_Studio_15_2017_WIn64.jpg)
Visual Studio 16 2019
![](Visual_Studio_16_2019.jpg)

```
#!/bin/bash -e
myRepo=$(pwd)
CMAKE_CONFIG_GENERATOR="Visual Studio 16 2019"
if [  ! -d "$myRepo/opencv"  ]; then
    echo "cloning opencv"
    git clone https://github.com/opencv/opencv.git
    mkdir -p Build/opencv
    mkdir -p Install/opencv
else
    cd opencv
    git pull --rebase
    cd ..
fi
if [  ! -d "$myRepo/opencv_contrib"  ]; then
    echo "cloning opencv_contrib"
    git clone https://github.com/opencv/opencv_contrib.git
    mkdir -p Build/opencv_contrib
else
    cd opencv_contrib
    git pull --rebase
    cd ..
fi
RepoSource=opencv
pushd Build/$RepoSource
CMAKE_OPTIONS='-DBUILD_PERF_TESTS:BOOL=OFF -DBUILD_TESTS:BOOL=OFF -DBUILD_DOCS:BOOL=OFF -DWITH_CUDA:BOOL=OFF -DBUILD_EXAMPLES:BOOL=OFF -DINSTALL_CREATE_DISTRIB=ON -DWITH_MFX=ON'
cmake -G"$CMAKE_CONFIG_GENERATOR" $CMAKE_OPTIONS -DOPENCV_EXTRA_MODULES_PATH="$myRepo"/opencv_contrib/modules -DCMAKE_INSTALL_PREFIX="$myRepo"/install/"$RepoSource" "$myRepo/$RepoSource"
echo "************************* $Source_DIR -->debug"
cmake --build .  --config debug
echo "************************* $Source_DIR -->release"
cmake --build .  --config release
cmake --build .  --target install --config release
cmake --build .  --target install --config debug
popd
```