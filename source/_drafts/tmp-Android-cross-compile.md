---
title: tmp_Android_cross_compile
tags:
---
在Android上執行程式 with cross compile on linux
===
1. 下載android-ndk
[NDK Downloads  \|  Android NDK  |  Android Developers](https://developer.android.com/ndk/downloads/index.html)

2. create script file: agcc
```bash
#!/bin/sh

ANDROIDSDK='android-18'
PROGDIR='/home/nick/android-ndk-r11c/'

PROGDIR=`cd $PROGDIR && pwd`
ARMEABIGCC=$PROGDIR/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/arm-linux-androideabi-gcc
ARMEABILIB=$PROGDIR/platforms/$ANDROIDSDK/arch-arm/usr/lib
ARMEABIINC=$PROGDIR/platforms/$ANDROIDSDK/arch-arm/usr/include
ARMEABICRT=$PROGDIR/platforms/$ANDROIDSDK/arch-arm/usr/lib/crtbegin_dynamic.o

LINKER=/system/bin/linker

echo "GCC:"$ARMEABIGCC "LIB:"$ARMEABILIB "LINKER":$LINKER "PARAMS:"$@

$ARMEABIGCC $@ -Wl,-rpath-link=$ARMEABILIB,-dynamic-linker=$LINKER -L$ARMEABILIB $ARMEABICRT -I$ARMEABIINC -nostdlib -lc
```

3. compile file
```
$./agcc -o file.c file
```

[在Android上運行本地C語言代碼(Hello C on Android) – 夏天人字拖](http://guoh.org/lifelog/2012/02/run-native-c-code-on-android/)