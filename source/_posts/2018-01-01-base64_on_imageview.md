---
title: Display base64 image on ImageView
abbrlink: 81c75dee
date: 2018-01-01 00:00:00
categories: Android
tags:
- Android
---
```java
import android.util.Base64;
import android.graphics.BitmapFactory;

ImageView img = findViewById(R.id.img);
byte[] bytes = Base64.decode(base64_img, Base64.DEFAULT);
img.setImageBitmap(BitmapFactory.decodeByteArray(bytes, 0, bytes.length));
```