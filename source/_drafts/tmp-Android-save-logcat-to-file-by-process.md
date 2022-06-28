---
title: tmp_Android_save_logcat_to_file_by_process
tags:
---
save logcat to file by process
===

```java
import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public File extractLogToFile(){
    //set a file
    Date datum = new Date();
    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss", Locale.TAIWAN);
    String fullName = df.format(datum)+".log";
    File file = new File (Environment.getExternalStorageDirectory(), fullName);
    Log.d(TAG, "extractLogToFile(): " + file.getAbsolutePath());

    //clears a file
    if(file.exists()){
        file.delete();
    }

    //write log to file
    int pid = android.os.Process.myPid();
    try {
        String command = String.format("logcat -d -v threadtime *:*");
        Process process = Runtime.getRuntime().exec(command);

        BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
        StringBuilder result = new StringBuilder();
        String currentLine = null;

        while ((currentLine = reader.readLine()) != null) {
            if (currentLine != null && currentLine.contains(String.valueOf(pid))) {
                result.append(currentLine);
                result.append("\n");
            }
        }

        FileWriter out = new FileWriter(file);
        out.write(result.toString());
        out.close();

        //Runtime.getRuntime().exec("logcat -d -v time -f "+file.getAbsolutePath());
    } catch (IOException e) {
        Toast.makeText(getApplicationContext(), e.toString(), Toast.LENGTH_SHORT).show();
    }


    //clear the log
    try {
        Runtime.getRuntime().exec("logcat -c");
    } catch (IOException e) {
        Toast.makeText(getApplicationContext(), e.toString(), Toast.LENGTH_SHORT).show();
    }

    return file;
}
```