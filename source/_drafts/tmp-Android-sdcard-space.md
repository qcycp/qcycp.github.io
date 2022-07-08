---
title: tmp_Android_sdcard_space
abbrlink: 63d5fb59
tags:
---
Android 讀取SD card儲存空間大小
===

```java
public long getSDCardFreeBytes() {
    String state = Environment.getExternalStorageState();
    if (Environment.MEDIA_MOUNTED.equals(state)) {
        File sdcardDir = Environment.getExternalStorageDirectory();
        StatFs sf = new StatFs(sdcardDir.getPath());
        long blockSize = sf.getBlockSize();
        long availCount = sf.getAvailableBlocks();
        long freeBytes = availCount*blockSize;

        return freeBytes;
    }

    return 0;
}
```