---
title: tmp_Android_screenshot
tags:
---
How to programatically take a screenshot
===
https://stackoverflow.com/questions/2661536/how-to-programmatically-take-a-screenshot

```
private void captureScreen() {
    View v = getWindow().getDecorView().getRootView();
    v.setDrawingCacheEnabled(true);
    Bitmap bmp = Bitmap.createBitmap(v.getDrawingCache());
    v.setDrawingCacheEnabled(false);
    try {
        FileOutputStream fos = new FileOutputStream(new File(Environment
                .getExternalStorageDirectory().toString(), "SCREEN"
                + System.currentTimeMillis() + ".png"));
        bmp.compress(CompressFormat.PNG, 100, fos);
        fos.flush();
        fos.close();
    } catch (FileNotFoundException e) {
        e.printStackTrace();
    } catch (IOException e) {
        e.printStackTrace();
    }
}
```