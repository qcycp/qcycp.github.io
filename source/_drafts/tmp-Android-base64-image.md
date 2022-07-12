---
title: tmp_Android_base64_image
abbrlink: 9d30c6a9
tags:
---
Display base64 image by ImageView
===

```java
import android.util.Base64;
import android.graphics.BitmapFactory;

ImageView img = findViewById(R.id.img);
byte[] bytes = Base64.decode(base64_img, Base64.DEFAULT);
img.setImageBitmap(BitmapFactory.decodeByteArray(bytes, 0, bytes.length));               
```