---
title: tmp_Android_dpi
abbrlink: 5a8b211b
tags:
---
Android get dpi
===

``java
DisplayMetrics metrics = getResources().getDisplayMetrics();
int densityDpi = (int)(metrics.density * 160f);
```