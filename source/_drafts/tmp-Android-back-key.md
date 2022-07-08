---
title: tmp_Android_back_key
abbrlink: caa84ee2
tags:
---
back key handling in Launcher
===

寫一個Launcher app
必須增加以下override function，防止按下back鍵時，會跳到上一個activity
@Override
public void onBackPressed() {
}