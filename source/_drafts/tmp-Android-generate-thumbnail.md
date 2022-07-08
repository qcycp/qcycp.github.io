---
title: tmp_Android_generate_thumbnail
abbrlink: ba123be0
tags:
---
Generate thumbnail
===

```java
private int calculateInSampleSize(BitmapFactory.Options options, int reqWidth, int reqHeight) {
    final int height = options.outHeight;
    final int width = options.outWidth;
    int inSampleSize = 1;
    if (height > reqHeight || width > reqWidth) {
        final int halfHeight = height / 2;
        final int halfWidth = width / 2;
        while ((halfHeight / inSampleSize) > reqHeight && (halfWidth / inSampleSize) > reqWidth) {
            inSampleSize *= 2;
        }   
    }   
    return inSampleSize;
}

int reqWidth = (int) (100*getResources().getDisplayMetrics().density);
int reqHeight = (int) (100*getResources().getDisplayMetrics().density);
final BitmapFactory.Options options = new BitmapFactory.Options();
options.inJustDecodeBounds = true;
//option.inPurgeable = true;
BitmapFactory.decodeFile(path, options);
options.inSampleSize = calculateInSampleSize(options, reqWidth, reqHeight);
options.inJustDecodeBounds = false;
Bitmap bmp = BitmapFactory.decodeFile(path, options);
```