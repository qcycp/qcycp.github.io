---
title: tmp_Android_file_contents
abbrlink: ebfdea15
tags:
---
Get File Contents
===

```java
public String getFileContents(String inputFile) {
    String text;
    File f = new File(inputFile);
    if(!f.exists()) {
        return null;
    }

    BufferedReader br = null;
    try {
        StringBuilder builder = new StringBuilder();
        br = new BufferedReader(new FileReader(f));
        String line;

        while ((line = br.readLine()) != null) {
            builder.append(line);
        }
        text = builder.toString();
    }
    catch (IOException e) {
        e.printStackTrace();
        return null;
    } finally {
        try {
            if (br != null) {
                br.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    return text;
}
```