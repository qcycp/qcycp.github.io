---
title: tmp_Android_get_bitmap_from_ImageView
abbrlink: 587678b6
tags:
---
將image view的bitmap抓出來畫在canvas上
===

會將imageView上的bitmap，根據確切的位置跟大小畫在canvas上
```java
imageView.buildDrawingCache();
Bitmap bmap = imageView.getDrawingCache();
canvas.drawBitmap(bmap, 0, 0, null);
```