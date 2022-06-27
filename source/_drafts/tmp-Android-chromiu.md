---
title: tmp_Android_chromiu
tags:
---
Chromium
===

http://www.chromium.org/Home
https://code.google.com/p/chromium/wiki/AndroidBuildInstructions#Build_and_install_the_APKs
http://www.chromium.org/developers/how-tos/get-the-code

[Install depot tools]
~/chromium$ svn co http://src.chromium.org/svn/trunk/tools/depot_tools
~/chromium$ export PATH=~/data/chromium/depot_tools:$PATH
~/chromium$ gclient config http://src.chromium.org/svn/trunk/src
~/chromium$ echo "target_os = ['android']" >> .gclient
~/chromium$ echo "{ 'GYP_DEFINES': 'OS=android', }" > chromium.gyp_env

[Checkout source code]
~/chromium$ fetch android
~/chromium$ cd src
~/chromium/src$ git checkout master
~/chromium/src$ build/install-build-deps-android.sh # Update the system packages required to build for Android
~/chromium/src$ gclient sync

[Configure GYP]
~/chromium$ gclient runhooks

[Updating the code]
~/chromium/src$ git pull
~/chromium/src$ gclient sync

[Build Content shell and install]
~/chromium/src$ ninja -C out/Release content_shell_apk
~/chromium/src$ build/android/adb_install_apk.py --apk ContentShell.apk --release

[Build Chrome shell]
~/chromium/src$ ninja -C out/Release chrome_shell_apk
~/chromium/src$ build/android/adb_install_apk.py --apk ChromeShell.apk --release

[Build WebView shell]
~/chromium/src$ ninja -C out/Release android_webview_apk
~/chromium/src$ build/android/adb_install_apk.py --apk AndroidWebView.apk --apk_package org.chromium.android_webview.shell --release

[Running these apks]
~/chromium/src$ . build/android/envsetup.sh  # Prepare the environment

For Content shell:
~/chromium/src$ build/android/adb_run_content_shell  http://example.com

For Chrome shell:
~/chromium/src$ build/android/adb_run_chrome_shell  http://example.com

For Android WebView shell:
~/chromium/src$ adb_run_android_webview_shell http://example.com
