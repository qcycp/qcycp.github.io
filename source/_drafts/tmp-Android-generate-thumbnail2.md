---
title: tmp_Android_generate_thumbnail2
abbrlink: ba654e4e
tags:
---
Generate thumbnail
===

```java
import android.media.ThumbnailUtils;

private Bitmap getImageThumbnail(String imagePath, int width, int height) {
    Bitmap bitmap = null;
    BitmapFactory.Options options = new BitmapFactory.Options();
    options.inJustDecodeBounds = true;
    bitmap = BitmapFactory.decodeFile(imagePath, options);
    options.inJustDecodeBounds = false;
    int h = options.outHeight;
    int w = options.outWidth;
    int beWidth = w / width;
    int beHeight = h / height;
    int be = 1;
    if (beWidth < beHeight) {
        be = beWidth;
    } else {
        be = beHeight;
    }
    if (be <= 0) {
        be = 1;
    }
    options.inSampleSize = be;
    bitmap = BitmapFactory.decodeFile(imagePath, options);
    bitmap = ThumbnailUtils.extractThumbnail(bitmap, width, height, ThumbnailUtils.OPTIONS_RECYCLE_INPUT);
    return bitmap;
}
```

轉錄自http://blog.csdn.net/ouyang_peng/article/details/16864975