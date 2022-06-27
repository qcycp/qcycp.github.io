---
title: tmp_Android_file_checking
tags:
---
Check File Existence
===

```java
public boolean checkFileExistence() {
    String filepath = ...;
    Log.d(TAG, "filepath: " + filepath);
 
    File file = new File(file);
    if (!(file.exists() && file.length() > 0)) {
        Log.d(TAG, "file is not existent");
        return false;
    } else {
        Log.d(TAG, "file is existent");
  return true
    }
}
```