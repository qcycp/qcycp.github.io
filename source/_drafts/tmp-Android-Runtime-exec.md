---
title: tmp_Android_Runtime_exec
tags:
---
Runtime.getRuntime().exec跟ProcessBuilder的用法
===

Runtime.exec最终是通過調用ProcessBuilder來真正執操作的

Runtime.exec用法如下
```
void do_exec(String cmd) {
    try {
        Runtime rt = Runtime.getRuntime();
        Process pr = rt.exec(cmd);
 
        BufferedReader in = new BufferedReader(new InputStreamReader(pr.getInputStream()));
        String line = null;
        while((line = in.readLine()) != null) {
            System.out.println(line);
        }
    
        int exitVal = pr.waitFor();
        System.out.println("Exited with error code " + exitVal);
    } catch (IOException e) {
        e.printStackTrace();
    }      
}
```

ProcessBuilder用法如下
```
/**
 * Execute shell command via ProcessBuilder
 *
 * @param command executed shell command
 */
public static void processCmd(String[] command) {
    
    //String[] command = { "pm", "install", "-r", filePath };
    ProcessBuilder processBuilder = new ProcessBuilder(command);
    Process process = null;
    BufferedReader successResult = null;
    BufferedReader errorResult = null;
    StringBuilder successMsg = new StringBuilder();
    StringBuilder errorMsg = new StringBuilder();
    try {
        process = processBuilder.start();
        successResult = new BufferedReader(new InputStreamReader(process.getInputStream()));
        errorResult = new BufferedReader(new InputStreamReader(process.getErrorStream()));
        String s;

        while ((s = successResult.readLine()) != null) {
            successMsg.append(s);
        }

        while ((s = errorResult.readLine()) != null) {
            errorMsg.append(s);
        }
    } catch (IOException e) {
        e.printStackTrace();
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (successResult != null) {
                successResult.close();
            }
            if (errorResult != null) {
                errorResult.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        if (process != null) {
            process.destroy();
        }
    }

    Log.d(TAG, "successMsg: " + successMsg + ", ErrorMsg: " + errorMsg);
}
```