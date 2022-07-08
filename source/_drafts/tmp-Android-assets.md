---
title: tmp_Android_assets
abbrlink: fd4d13b5
tags:
---
Android assets
===
[Android編程: 通過資產管理員(AssetManager)讀取資產(assets)](http://androidbiancheng.blogspot.com/2011/04/assetmanagerassest.html)
```java
AssetManager assetManager = getAssets();
InputStream in = null;
String myStream = null;
try {
    in = assetManager.open(filename);

    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    byte[] bytes = new byte[4096];
    int len;

    while ((len = in.read(bytes)) > 0){
        byteArrayOutputStream.write(bytes, 0, len);
    }

    myStream = new String(byteArrayOutputStream.toByteArray(), "UTF8");

} catch (FileNotFoundException e) {
    Log.d(TAG, "output String: File Not Found");
} catch (IOException e) {
    e.printStackTrace();
    myStream = e.toString();
} finally {
    Log.d(TAG, "output String: " + myStream);
}
public void loadAssetsData() {
    File destFile = new File(path + filename);
    if (destFile.exists()) {
        return;
    }

    AssetManager assetManager = mApp.getAssets();
    InputStream in = null;
    FileOutputStream out = null;
    try {
        in = assetManager.open(filename);
        out = new FileOutputStream(destFile);
    } catch (FileNotFoundException e) {
        Log.d(TAG, "File Not Found");
        //e.printStackTrace();
    } catch (IOException e) {
        e.printStackTrace();
    }

    byte[] buff = new byte[1024];
    int read = 0;
    try {
        if (out != null) {
            while ((read = in.read(buff)) > 0) {
                out.write(buff, 0, read);
            }
        }
    } catch (IOException e) {
        e.printStackTrace();
    } finally {
        try {
            if (in != null) {
                in.close();
            }
            if (out != null) {
                out.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
```

```java
public static String getAssetsData(Context context) {
    String result = "";
    try {
        InputStream mAssets = context.getAssets().open("id_rsa");

        int lenght = mAssets.available();
        byte[] buffer = new byte[lenght];
        mAssets.read(buffer);
        mAssets.close();
        result = new String(buffer);
        return result;
    } catch (IOException e) {
        XLog.e("[%s] %s", TAG, e.getMessage());
        return result;
    }
}
```