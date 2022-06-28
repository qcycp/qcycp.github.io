---
title: tmp_Android_take_screenshot
tags:
---
Take screenshot within an apk
===
```java
private void takeScreenshot(Context context) {
    File folder = context.getExternalFilesDir(null);
    if (folder != null) {
        String mPath = folder.getAbsolutePath() + "/screen.jpg";

        // create bitmap screen capture
        View v1 = getWindow().getDecorView().getRootView();
        v1.setDrawingCacheEnabled(true);
        Bitmap bitmap = Bitmap.createBitmap(v1.getDrawingCache());
        v1.setDrawingCacheEnabled(false);

        try {
            File imageFile = new File(mPath);

            FileOutputStream outputStream = new FileOutputStream(imageFile);
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, outputStream);
            outputStream.flush();
            outputStream.close();

            openScreenshot(imageFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

private void openScreenshot(File imageFile) {
    Intent intent = new Intent();
    intent.setAction(Intent.ACTION_VIEW);
    Uri uri = Uri.fromFile(imageFile);
    intent.setDataAndType(uri, "image/*");
    startActivity(intent);
}
```