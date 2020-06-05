---
title: File Access
abbrlink: cc7d2dc0
date: 2018-01-01 00:00:00
categories: Android
tags:
- Android
---
```java
public static String readFromFile(String path, String fileName) {
    StringBuilder stringBuilder = new StringBuilder();
    String line;
    BufferedReader in = null;

    try {
        in = new BufferedReader(new FileReader(new File(path, fileName)));
        while ((line = in.readLine()) != null) stringBuilder.append(line);
    } catch (FileNotFoundException e) {
        Log.d(TAG, e.toString());
    } catch (IOException e) {
        Log.d(TAG, e.toString());
    }

    return stringBuilder.toString();
}

public static boolean deleteFile(File file) {
    boolean deletedAll = true;
    if (file != null) {
        if (file.isDirectory()) {
            String[] children = file.list();
            for (int i = 0; i < children.length; i++) {
                deletedAll = deleteFile(new File(file, children[i])) && deletedAll;
            }
        } else {
            deletedAll = file.delete();
        }
    }

    return deletedAll;
}
```