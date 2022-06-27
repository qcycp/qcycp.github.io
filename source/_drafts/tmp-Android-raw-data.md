---
title: tmp_Android_raw_data
tags:
---
Android raw data
===

檔案會放在//app/src/main/res/raw下
```
public void loadRawData() {
    File destFile = new File(path + filename);
    if (destFile.exists()) {
        return;
    }

    InputStream in = mContext.getResources().openRawResource(R.raw.data);
    FileOutputStream out = null;
    try {
        out = new FileOutputStream(destFile);
    } catch (FileNotFoundException e) {
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
            in.close();
            if (out != null) {
                out.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
```