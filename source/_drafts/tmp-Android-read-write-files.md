---
title: tmp_Android_read_write_files
abbrlink: 4d49a56f
tags:
---
Read / Write file
===

```java
import android.util.Log;  
  
import java.io.BufferedReader;  
import java.io.File;  
import java.io.FileNotFoundException;  
import java.io.FileReader;  
import java.io.FileWriter;  
import java.io.IOException;

public class Utils {  
    private static final String TAG = "FID_Utils";
    
    public static void writeToFile(String path, String fileName, String data) {
        try {
            FileWriter out = new FileWriter(new File(path, fileName));
            out.write(data);
            out.close();
        } catch (IOException e) {
            Log.d(TAG, e.toString());
        }
    }

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
}
```

Usage  

```java
Utils.writeToFile(getObbDir().getAbsolutePath(), "host", "123abc");  
Log.d(TAG, Utils.readFromFile(getObbDir().getAbsolutePath(), "host"));
```