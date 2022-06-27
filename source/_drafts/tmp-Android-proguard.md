---
title: tmp_Android_proguard
tags:
---
proguard
===

Q : 為什麼需要 ProGuard ?
A : http://magiclen.org/android-decompiler/
簡單的說就是被反組譯的時候 , 可以讓別人比較看不懂 , 避免Source Code被偷走
用了 ProGuard 可以讓程式碼混淆 , 甚麼是混淆 ? 比如說 Class Name , Function Name , 變程等會被改名

Q : ProGuard Enable 後 , Complied 過程中發生啥事
A : https://www.guardsquare.com/blog/the_upcoming_jack_and_jill_compilers_in_android


Q : ProGuard 會引發甚麼災難 ?
A : http://www.uml.org.cn/mobiledev/201211094.asp
程式內若有使用到 reflect or Class.forName機制 , 需要關閉 ProGuard 或是設定 ProGuard flag , 把這些 class skip (某些 class 不做 ProGuard)

Q : Example ?
A : android source code packages/apps/setting/Android.mk 中就有設定 ProGuard flags file

LOCAL_PROGUARD_FLAG_FILES := proguard.flags

Proguard flags file 如下 , 做 ProGuard時, 對以下 class skip (即不做 ProGuard)
# Keep all Fragments in this package, which are used by reflection.
-keep class com.android.settings.*Fragment
-keep class com.android.settings.*Picker
-keep class com.android.settings.*Settings
-keep class com.android.settings.wifi.*Settings
-keep class com.android.settings.deviceinfo.*
-keep class com.android.settings.bluetooth.*
-keep class com.android.settings.applications.*
-keep class com.android.settings.inputmethod.*
-keep class com.android.settings.MasterClear
-keep class com.android.settings.MasterClearConfirm
-keep class com.android.settings.accounts.*
-keep class com.android.settings.fuelgauge.*
-keep class com.android.settings.users.*
-keep class com.android.settings.NotificationStation
-keep class com.android.settings.nfc.*
# Keep click responders
-keepclassmembers class com.android.settings.inputmethod.UserDictionaryAddWordActivity {
*** onClick*(...);
}