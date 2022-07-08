---
title: tmp_Android_launch_aluncher
abbrlink: 21bff349
tags:
---
Android叫出Launcher的方式
===

[Method1]
Intent intent = new Intent();
ComponentName comp_applist = new ComponentName("com.android.launcher","com.android.launcher2.Launcher");
intent.setComponent(comp_applist);
intent.addCategory(Intent.CATEGORY_HOME);
intent.addCategory(Intent.CATEGORY_DEFAULT);
intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
startActivity(intent);

[Method2]
Intent intent = new Intent();
intent.setAction("android.intent.action.MAIN");
intent.addCategory(Intent.CATEGORY_HOME);
intent.addCategory(Intent.CATEGORY_DEFAULT);
intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
startActivity(intent);