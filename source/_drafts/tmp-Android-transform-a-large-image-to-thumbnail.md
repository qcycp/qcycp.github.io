---
title: tmp_Android_transform_a_large_image+to_thumbnail
abbrlink: c9bf1882
tags:
---
Transfrom a large image to thumbnail
===

```java
//BitmapCacheHelper.java

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.ThumbnailUtils;
import android.os.AsyncTask;

import java.io.File;
import java.io.FileOutputStream;

public class BitmapCacheHelper extends AsyncTask {
    private final File fileRef;
    private final String cachePath;
    private final String fileName;

    public BitmapCacheHelper(File file, String pathToCache, String nameOfFile) {
        fileRef = file;
        cachePath = pathToCache;
        fileName = nameOfFile;
    }   

    @Override
    protected String doInBackground(Integer... params) {
        try {
            Bitmap resized = ThumbnailUtils.extractThumbnail(BitmapFactory.decodeFile(fileRef.getPath()), params[1], params[0]);
            File fileNew = new File(cachePath, fileName);
            FileOutputStream fOutStream = new FileOutputStream(fileNew);
            resized.compress(Bitmap.CompressFormat.JPEG, params[2], fOutStream);
            fOutStream.flush();
            fOutStream.close();
            resized.recycle();
        } catch (Exception e) {

        }   
        return null;
    }   

    @Override
    protected void onPostExecute(String string) {

    }   
}
//usage

private void generateCached(File file, String cachePath, String fileName) {
    try {
        BitmapCacheHelper helper = new BitmapCacheHelper(file, cachePath, fileName);
        helper.execute(100, 56, 60);
    } catch (Exception e) {
    }
}

generateCached(new File(imagepath), thumbpath, name);
```