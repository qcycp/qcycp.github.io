---
title: tmp_Android_no_ActionBar
abbrlink: b9a97c02
tags:
---
no ActionBar
===

1. 在AndroidManifest.xml中，設定Activity屬性:
android:theme="@android:style/Theme.Black.NoTitleBar"
2. 在Activity的onCreate()中
ActionBar actionBar = getActionBar();
actionBar.hide();