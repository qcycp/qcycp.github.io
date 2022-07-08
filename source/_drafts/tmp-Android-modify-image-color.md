---
title: tmp_Android_modify_image_color
abbrlink: '85122393'
tags:
---
更改image顏色 change the image color programmatically
===

* Method 1
```java
Drawable myIcon = getResources().getDrawable(R.drawable.color);
myIcon.setColorFilter(0xFFFF0000, PorterDuff.Mode.SRC_ATOP);
img_color.setImageDrawable(myIcon);
```

* Method 2
```java
img_color.setColorFilter(new LightingColorFilter(0xFFFF0000, 0xFFFF0000));
```