---
title: tmp_firefox_OS
tags:
---
firefox os note
===

Firefox OS 以 Linux 與部份 Android 開放原始碼專案為核心，
以 Gecko 這個 JavaScript Engine 為系統執行的環境，
並在最上層用 HTML, CSS, JavaScript 實作出代號為 Gaia 的 使用者介面例如 OS 主介面，設定頁面，撥號等介面。

https://developer.mozilla.org/en-US/Firefox_OS/Preparing_for_your_first_B2G_build
https://developer.mozilla.org/en-US/Firefox_OS/Firefox_OS_build_prerequisites
https://developer.mozilla.org/en-US/Firefox_OS/Building
https://developer.mozilla.org/en-US/Firefox_OS?redirectlocale=en-US&redirectslug=Mozilla%2FBoot_to_Gecko
https://developer.mozilla.org/en-US/Firefox_OS/Installing_on_a_mobile_device

https://developer.mozilla.org/en-US/Firefox_OS/Platform/Architecture

http://tech.mozilla.com.tw/posts/3433/gonk-misc-a-bridge-from-aosp-build-system-to-building-firefox-os
http://tech.mozilla.com.tw/posts/2786/easy-3-steps-to-build-firefox-os

https://developer.mozilla.org/en-US/Firefox_OS
https://wiki.mozilla.org/B2G

build code for emulator (法一)
1) git clone git://github.com/mozilla-b2g/B2G.git
2) ./config.sh emulator-x86
3) sudo ln -s /usr/lib/i38emuglGLESv2_enc6-linux-gnu/mesa/libGL.so.1 /usr/lib/i386-linux-gnu/libGL.so
4) sudo ln -s /usr/lib/i386-linux-gnu/libX11.so.6 /usr/lib/i386-linux-gnu/libX11.so
5) edit gecko/nsprpub/pr/src/Makefile.in #133，將OS_LIBS += -lrt註解掉
6) ./build.sh
7) ./run-emulator.sh

build code for emulator (法二)
sudo apt-get update
sudo apt-get install autoconf2.13 bison bzip2 ccache curl flex gawk gcc g++ g++-multilib git ia32-libs lib32ncurses5-dev lib32z1-dev libgl1-mesa-dev libx11-dev make zip
sudo apt-get install libgl1-mesa-dev libglapi-mesa:i386 libgl1-mesa-glx:i386
sudo ln -s /usr/lib/i386-linux-gnu/libX11.so.6 /usr/lib/i386-linux-gnu/libX11.so
sudo ln -s /usr/lib/i386-linux-gnu/mesa/libGL.so.1 /usr/lib/i386-linux-gnu/libGL.so
sudo apt-get install binutils-gold
ccache --max-size 3GB
git clone git://github.com/mozilla-b2g/B2G.git
cd B2G
./config.sh emulator
./build.sh

build code for samsung-s2
1) git clone git://github.com/mozilla-b2g/B2G.git
2) cd B2G
3) ./config.sh galaxy-s2
4) 安裝android SDK, and update
    a) 從下列網站下載
        http://developer.android.com/sdk/index.html
        DOWNLOAD FOR OTHER PLATFORMS
        android-sdk_r22.3-linux.tgz
    b) 更新 (更新後才會有platform-tools)
        tools/android update sdk --no-ui
5) export PATH=/home/nick/android-sdk-linux/platform-tools:$PATH
6) 插著s2，並確認adb能連上
7) ./build.sh

burn code
1) usb裝置連上ubuntu
2) ./flash.sh
3) 重開機後， 再將usb裝置重新連上ubuntu
4) 修改flash.sh中的指令
    --FACTORYFS out/target/product/$DEVICE/system.img --KERNEL device/samsung/$DEVICE/kernel --DATAFS out/target/product/$DEVICE/userdata.img
5) ./flash.sh

init.rc
原本執行zygote的要改成
service b2g /system/bin/b2g.sh
    class main
    onrestart restart media

build failed
1)
Blob setup script has changed, re-running
Pulling files from device
./extract-files.sh: line 27: adb: command not found
Your device has unknown firmware
==> export PATH=/home/nick/data/firefox/B2G/tools/update-tools/bin/linux-x86:$PATH

2) configure: error: ccache not found
apt-get install ccache

3)
Couldn't find heimdall.
Install Heimdall v1.3.1 from http://www.glassechidna.com.au/products/heimdall/
http://glassechidna.com.au/heimdall/

4) No package 'libusb-1.0' found
sudo apt-get install libusb-1.0-0 libusb-1.0-0-dev

5)
ERROR: Failed to detect compatible download-mode devices.
Heimdall flash failed.
Make sure you have a line like
SUBSYSTEM=="usb", ATTRS{idVendor}=="04e8", MODE="0666"
in /etc/udev/rules.d/android.rules

create /etc/udev/rules.d/51-android.rules
SUBSYSTEM=="usb", ATTRS{idVendor}=="0bb4", MODE="0666"
SUBSYSTEM=="usb", ATTRS{idVendor}=="0e79", MODE="0666"
SUBSYSTEM=="usb", ATTRS{idVendor}=="0502", MODE="0666"
SUBSYSTEM=="usb", ATTRS{idVendor}=="0b05", MODE="0666"
SUBSYSTEM=="usb", ATTRS{idVendor}=="413c", MODE="0666"
SUBSYSTEM=="usb", ATTRS{idVendor}=="0489", MODE="0666"
SUBSYSTEM=="usb", ATTRS{idVendor}=="091e", MODE="0666"
SUBSYSTEM=="usb", ATTRS{idVendor}=="18d1", MODE="0666"
SUBSYSTEM=="usb", ATTRS{idVendor}=="0bb4", MODE="0666"
SUBSYSTEM=="usb", ATTRS{idVendor}=="12d1", MODE="0666"
SUBSYSTEM=="usb", ATTRS{idVendor}=="24e3", MODE="0666"
SUBSYSTEM=="usb", ATTRS{idVendor}=="2116", MODE="0666"
SUBSYSTEM=="usb", ATTRS{idVendor}=="0482", MODE="0666"
SUBSYSTEM=="usb", ATTRS{idVendor}=="17ef", MODE="0666"
SUBSYSTEM=="usb", ATTRS{idVendor}=="1004", MODE="0666"
SUBSYSTEM=="usb", ATTRS{idVendor}=="22b8", MODE="0666"
SUBSYSTEM=="usb", ATTRS{idVendor}=="0409", MODE="0666"
SUBSYSTEM=="usb", ATTRS{idVendor}=="2080", MODE="0666"
SUBSYSTEM=="usb", ATTRS{idVendor}=="0955", MODE="0666"
SUBSYSTEM=="usb", ATTRS{idVendor}=="2257", MODE="0666"
SUBSYSTEM=="usb", ATTRS{idVendor}=="10a9", MODE="0666"
SUBSYSTEM=="usb", ATTRS{idVendor}=="1d4d", MODE="0666"
SUBSYSTEM=="usb", ATTRS{idVendor}=="0471", MODE="0666"
SUBSYSTEM=="usb", ATTRS{idVendor}=="04da", MODE="0666"
SUBSYSTEM=="usb", ATTRS{idVendor}=="05c6", MODE="0666"
SUBSYSTEM=="usb", ATTRS{idVendor}=="1f53", MODE="0666"
SUBSYSTEM=="usb", ATTRS{idVendor}=="04e8", MODE="0666"
SUBSYSTEM=="usb", ATTRS{idVendor}=="04dd", MODE="0666"
SUBSYSTEM=="usb", ATTRS{idVendor}=="0fce", MODE="0666"
SUBSYSTEM=="usb", ATTRS{idVendor}=="0930", MODE="0666"
SUBSYSTEM=="usb", ATTRS{idVendor}=="19d2", MODE="0666"

sudo chmod 644   /etc/udev/rules.d/51-android.rules
sudo chown root /etc/udev/rules.d/51-android.rules
sudo service udev restart

6)
ERROR: Partition "factoryfs" does not exist in the specified PIT.
Ending session...
Rebooting device...
Releasing device interface...
Re-attaching kernek driver...
=>把flash.sh中的小寫都改成大寫
$HEIMDALL flash --factoryfs out/target/product/$DEVICE/$project.img => $HEIMDALL flash --FACTORYFS out/target/product/$DEVICE/$project.img
$HEIMDALL flash --kernel device/samsung/$DEVICE/kernel => $HEIMDALL flash --KERNEL device/samsung/$DEVICE/kernel
$HEIMDALL flash --factoryfs out/target/product/$DEVICE/system.img --kernel  device/samsung/$DEVICE/kernel && =>
$HEIMDALL flash --FACTORYFS out/target/product/$DEVICE/system.img --KERNEL device/samsung/$DEVICE/kernel &&

7) 下了./flash.sh後會重開機成download mode
此時要重新設定usb的連線

8) 要安裝下列三個image，才能work
--FACTORYFS out/target/product/$DEVICE/system.img --KERNEL device/samsung/$DEVICE/kernel --DATAFS out/target/product/$DEVICE/userdata.img

9)
/B2G/gecko/security/sandbox/linux/Sandbox.cpp:53: error: '__NR_sendto' was not declared in this scope
/B2G/gecko/security/sandbox/linux/Sandbox.cpp:53: error: '__NR_recvfrom' was not declared in this scope
/B2G/gecko/security/sandbox/linux/Sandbox.cpp:59: error: too many initializers for 'sock_filter'
/B2G/gecko/security/sandbox/linux/Sandbox.cpp:59: error: too many initializers for 'sock_filter'
==>
sock_filter的初始化有問題

10) run emulator時會有下列錯誤
sdk/emulator/opengl/host/libs/Translator/GLES_V2/GLESv2Imp.cpp:glCompileShader:351 error 0x501
sdk/emulator/opengl/host/libs/Translator/GLES_V2/GLESv2Imp.cpp:glGetShaderiv:1215 error 0x501
sdk/emulator/opengl/host/libs/Translator/GLES_V2/GLESv2Imp.cpp:glGetShaderiv:1215 error 0x501
sdk/emulator/opengl/host/libs/Translator/GLES_V2/GLESv2Imp.cpp:glGetShaderInfoLog:1238 error 0x501
sdk/emulator/opengl/host/libs/Translator/GLES_V2/GLESv2Imp.cpp:glCompileShader:351 error 0x501
sdk/emulator/opengl/host/libs/Translator/GLES_V2/GLESv2Imp.cpp:glGetShaderiv:1215 error 0x501
sdk/emulator/opengl/host/libs/Translator/GLES_V2/GLESv2Imp.cpp:glGetShaderiv:1215 error 0x501
sdk/emulator/opengl/host/libs/Translator/GLES_V2/GLESv2Imp.cpp:glGetShaderInfoLog:1238 error 0x501

sdk/emulator/opengl/host/libs/Translator/GLcommon/GLDispatch.cpp:22: fatal error: GL/glx.h: No such file or directory
=>sudo apt-get install libgl1-mesa-dev

/usr/bin/ld: cannot find -lX11
=>sudo ln -s /usr/lib/i386-linux-gnu/libX11.so.6.3.0 /usr/lib32/libX11.so

/usr/bin/ld: cannot find -lGL
=>
ldconfig -p | grep libGL.so
     libGL.so.1 (libc6,x86-64, OS ABI: Linux 2.4.20) => /usr/lib/x86_64-linux-gnu/mesa/libGL.so.1
     libGL.so.1 (libc6, OS ABI: Linux 2.4.20) => /usr/lib/i386-linux-gnu/mesa/libGL.so.1
     libGL.so (libc6,x86-64, OS ABI: Linux 2.4.20) => /usr/lib/x86_64-linux-gnu/libGL.so
     libGL.so (libc6,x86-64, OS ABI: Linux 2.4.20) => /usr/lib/x86_64-linux-gnu/mesa/libGL.so
ln -s /home/nick/data/firefox/B2G/prebuilt/linux-x86/toolchain/i686-linux-glibc2.7-4.4.3/sysroot/usr/lib/libGL.so.1 /usr/lib/libGL.so.1
ln -s /home/nick/data/firefox/B2G/prebuilt/linux-x86/toolchain/i686-linux-glibc2.7-4.4.3/sysroot/usr/lib/libGL.so /usr/lib/libGL.so

介紹影片
http://www.youtube.com/watch?v=PhlxZQEX-pg


Valid devices to configure are:
- galaxy-s2
- galaxy-nexus
- nexus-4
- nexus-5
- nexus-s
- nexus-s-4g
- flo (Nexus 7 2013)
- otoro
- unagi
- inari
- keon
- peak
- leo
- hamachi
- helix
- wasabi
- fugu
- tarako
- tara
- pandaboard
- emulator
- emulator-jb
- emulator-kk
- emulator-x86
- emulator-x86-jb
- emulator-x86-kk