---
title: tmp_Android_clear_application_data
tags:
---
Clear Application Data
===
```java
public void clearApplicationData() {
    //cache: /data/data/com.tpv.smartcms/cache
    File cache = getCacheDir();
    //appDir: /data/data/com.tpv.smartcms
    File appDir = new File(cache.getParent());

    if (appDir.exists()) {
        String[] children = appDir.list();
        for (String s : children) {
            if (!s.equals("lib")) {
                deleteDir(new File(appDir, s));
            }
        }
    }

    ContextWrapper c = new ContextWrapper(this);
    //externalFilesDir: /storage/emulated/0/Android/data/com.tpv.smartcms/files
    File externalFilesDir = c.getExternalFilesDir(null);
    if (externalFilesDir != null) {
        //appDataDir: /storage/emulated/0/Android/data/com.tpv.smartcms
        File appDataDir = new File(externalFilesDir.getParent());
        if (appDataDir.exists()) {
            deleteDir(appDataDir);
        }
    }
}

public boolean deleteDir(File dir) {
    if (dir != null) {
        if (dir.isDirectory()) {
            String[] children = dir.list();
            for (int i = 0; i < children.length; i++) {
                boolean success = deleteDir(new File(dir, children[i]));
                if (!success) {
                    return false;
                }
            }
        }

        return dir.delete();
    } else {
        return false;
    }
}
```