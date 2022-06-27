---
title: tmp_Android_activity_closed
tags:
---
Close Activity manually
===

public static Activity Activity_main;

onCreate() {
    Activity_main = this;
}

在其他地方就可以
MainActivity.Activity_main.finish();