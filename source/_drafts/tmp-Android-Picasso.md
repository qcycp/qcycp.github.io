---
title: tmp_Android_Picasso
abbrlink: f26d001f
tags:
---
Picasso
===
[Android Picasso Image Downloading and Caching Library Tutorial](http://www.zoftino.com/android-picasso-image-downloading-and-caching-library-tutorial)
[Picasso](http://square.github.io/picasso/)

build.gradle

    implementation 'com.squareup.picasso:picasso:2.71828'

usage

    Picasso.get().load(productImageUrl).into(imageView);
    


Set cache size

```java
int maxSize = MAX_CACHE_SIZE;
Picasso picasso = new Picasso.Builder(context)
                             .memoryCache(new LruCache(maxSize))
                             .build();
```

This example use OkHttp as http client for Picasso and setup max Disk cache size and also memory cache.

```java
 // Size in bytes (10 MB)
 private static final long PICASSO_DISK_CACHE_SIZE = 1024 * 1024 * 10;

 // Use OkHttp as downloader
 Downloader downloader = new OkHttpDownloader(getApplicationContext(), PICASSO_DISK_CACHE_SIZE);

 // Create memory cache
 Cache memoryCache = new LruCache(maxSize);

 mPicasso = new Picasso.Builder(getApplicationContext())
                       .downloader(downloader).memoryCache(memoryCache).build();
```