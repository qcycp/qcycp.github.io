---
title: tmp_Android_file_download
abbrlink: 271d7912
tags:
---
Download file using Asynctask
===
```
package com.tpv.pdcontrol.asynctask;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Environment;
import android.os.PowerManager;

import com.tpv.pdcontrol.utils.Log;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;

import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.HttpStatus;
import ch.boye.httpclientandroidlib.StatusLine;
import ch.boye.httpclientandroidlib.client.ClientProtocolException;
import ch.boye.httpclientandroidlib.client.HttpClient;
import ch.boye.httpclientandroidlib.client.config.RequestConfig;
import ch.boye.httpclientandroidlib.client.methods.HttpGet;
import ch.boye.httpclientandroidlib.impl.client.CloseableHttpClient;
import ch.boye.httpclientandroidlib.impl.client.HttpClientBuilder;

public class DownloadTask extends AsyncTask {

    private static final String TAG = "PD_DownloadTask";
    private Context context;
    private PowerManager.WakeLock mWakeLock;

    public DownloadTask(Context context) {
        this.context = context;
    }

    @Override
    protected void onPreExecute() {
        super.onPreExecute();

        PowerManager pm = (PowerManager) context.getSystemService(Context.POWER_SERVICE);
        mWakeLock = pm.newWakeLock(PowerManager.PARTIAL_WAKE_LOCK, getClass().getName());
        mWakeLock.acquire();
    }

    //params[0]: stored file name
    //params[1]: downloaded file url
    @Override
    protected String doInBackground(String... params) {

        HttpClient client = getHttpClient();
        HttpGet request = new HttpGet();
        try {
            File root = Environment.getExternalStorageDirectory();
            BufferedOutputStream bos = null;
            try {
                bos = new BufferedOutputStream(
                        new FileOutputStream(root.getAbsolutePath() + "/" + params[0]));
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            }

            request.setURI(new URI(params[1]));

            HttpResponse response = client.execute(request);
            StatusLine status = response.getStatusLine();
            Log.d(TAG, "Statusline: " + status);
            if (response.getStatusLine().getStatusCode() != HttpStatus.SC_OK) {
                request.abort();
                return "exception";
            }

            HttpEntity entity = response.getEntity();

            if (entity != null) {
                Log.d(TAG, "Length: " + entity.getContentLength());
                Log.d(TAG, "type: " + entity.getContentType());

                if (bos != null) {
                    entity.writeTo(bos);

                    bos.flush();
                    bos.close();
                }
            }
            return "successfully";
        } catch (URISyntaxException e) {
            request.abort();
            e.printStackTrace();
            return "exception";
        } catch (ClientProtocolException e) {
            request.abort();
            e.printStackTrace();
            return "exception";
        } catch (IOException e) {
            request.abort();
            e.printStackTrace();
            return "exception";
        }
    }

    @Override
    protected void onPostExecute(String result) {
        super.onPostExecute(result);

        mWakeLock.release();

        if (result.equals("exception")) {
            Log.d(TAG, "Download file failed");
        } else {
            Log.d(TAG, "Download file successfully");
        }
    }

    public static synchronized HttpClient getHttpClient() {
        RequestConfig config = RequestConfig.custom()
                .setConnectTimeout(10 * 1000)
                .setSocketTimeout(10 * 1000)
                .setConnectionRequestTimeout(5 * 1000)
                .build();

        CloseableHttpClient customerHttpClient =
                HttpClientBuilder
                        .create()
                        .setDefaultRequestConfig(config)
                        //.setConnectionManager(httpClientConnectionManager)
                        .build();

        return customerHttpClient;
    }
}
```

使用方式：
```
DownloadTask downloadTask = new DownloadTask(MainActivity.this);
downloadTask.execute("filename", "fileurl");
```

在AndroidManifest.xml中要增加以下權限
```
<uses-permission android:name="android.permission.INTERNET" />
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
<uses-permission android:name="android.permission.WAKE_LOCK" />
```