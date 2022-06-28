---
title: tmp_Android_ffmpeg
tags:
---
compile ffmpeg for android
===
[Cross Compiling FFmpeg 4.0 for Android – Karthik Veenam – Medium](https://medium.com/@karthikcodes1999/cross-compiling-ffmpeg-4-0-for-android-b988326f16f2)

1. download ffmpeg
user@vm-docker:~/android_opencv$ git clone https://git.ffmpeg.org/ffmpeg.git ffmpeg

2. Edit output shared library file name
Find these codes in configure:
```script
SLIBNAME_WITH_MAJOR='$(SLIBNAME).$(LIBMAJOR)'
LIB_INSTALL_EXTRA_CMD='＄＄(RANLIB) "$(LIBDIR)/$(LIBNAME)"'
SLIB_INSTALL_NAME='$(SLIBNAME_WITH_VERSION)'
SLIB_INSTALL_LINKS='$(SLIBNAME_WITH_MAJOR) $(SLIBNAME)'
```
And modify into these ones:
```script
SLIBNAME_WITH_MAJOR='$(SLIBPREF)$(FULLNAME)-$(LIBMAJOR)$(SLIBSUF)'
LIB_INSTALL_EXTRA_CMD='＄＄(RANLIB)"$(LIBDIR)/$(LIBNAME)"'
SLIB_INSTALL_NAME='$(SLIBNAME_WITH_MAJOR)'
SLIB_INSTALL_LINKS='$(SLIBNAME)'
```

3. build script
ffmpeg_android.sh
```script
#!/bin/bash
NDK=/home/user/android/android-ndk-r18b
SYSROOT=$NDK/platforms/android-21/arch-arm/
TOOLCHAIN=$NDK/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64
PREFIX=/home/user/android_opencv/ffmpeg/android/arm
ADDI_CFLAGS="-marm"

build_one()
{
    ./configure --prefix=$PREFIX --enable-shared --disable-static --disable-doc --disable-ffplay --disable-ffprobe --disable-doc --disable-symver --enable-protocol=concat --enable-protocol=file --enable-muxer=mp4 --enable-demuxer=mpegts --cross-prefix=$TOOLCHAIN/bin/arm-linux-androideabi- --target-os=linux --arch=arm --enable-cross-compile --sysroot=$SYSROOT --extra-cflags="-Os -fpic $ADDI_CFLAGS" --extra-ldflags="$ADDI_LDFLAGS" $ADDITIONAL_CONFIGURE_FLAG

    make clean all
    make -j3
    make install
}

build_one
```
4. Running the script file
user@vm-docker:~/android_opencv/ffmpeg$ sudo ./ffmpeg_android.sh
configure 如果出現以下錯誤，先安裝yasm
nasm/yasm not found or too old. Use --disable-x86asm for a crippled build.
sudo apt-get install yasm
