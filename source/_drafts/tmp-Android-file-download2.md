---
title: tmp_Android_file_download2
tags:
---
Download file via asynctask and HttpGet
===

```java
import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.PowerManager;

import com.tpv.smartcms.SmartCMSApplication;
import com.tpv.smartcms.utils.Log;
import com.tpv.smartcms.utils.SingleHttpClient;

import java.io.BufferedOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.HttpStatus;
import ch.boye.httpclientandroidlib.StatusLine;
import ch.boye.httpclientandroidlib.client.HttpClient;
import ch.boye.httpclientandroidlib.client.methods.HttpGet;

public class DownloadTask extends AsyncTask {

    private static final String TAG = "SmartCMS_DownloadTask";
    private Context context;
    private Handler mHandler = null;
    private PowerManager.WakeLock mWakeLock;

    public DownloadTask(Context context, Handler handler) {
        this.context = context;
        this.mHandler = handler;
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

        HttpClient client = SingleHttpClient.getHttpClient();
        HttpGet request = new HttpGet();
        try {
            BufferedOutputStream bos;
            try {
                bos = new BufferedOutputStream(new FileOutputStream(params[0]));
            } catch (FileNotFoundException e) {
                e.printStackTrace();
                return "exception";
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

                entity.writeTo(bos);
                bos.flush();
                bos.close();
            }

            return "successfully";
        } catch (URISyntaxException e) {
            request.abort();
            e.printStackTrace();
        } catch (IOException e) {
            request.abort();
            e.printStackTrace();
        }

        return "exception";
    }

    @Override
    protected void onPostExecute(String result) {
        super.onPostExecute(result);

        mWakeLock.release();

        if (result.equals("exception")) {
            Log.d(TAG, "Download file failed.");
        } else {
            Log.d(TAG, "Download file successfully.");
        }
    }
}
import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.PowerManager;

import com.tpv.smartcms.SmartCMSApplication;
import com.tpv.smartcms.utils.Log;
import com.tpv.smartcms.utils.SingleHttpClient;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;

import ch.boye.httpclientandroidlib.Header;
import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.HttpStatus;
import ch.boye.httpclientandroidlib.StatusLine;
import ch.boye.httpclientandroidlib.client.HttpClient;
import ch.boye.httpclientandroidlib.client.methods.HttpGet;

public class DownloadTask extends AsyncTask {

    private static final String TAG = "SmartCMS_DownloadTask";
    private Context context;
    private Handler mHandler = null;
    private PowerManager.WakeLock mWakeLock;

    public DownloadTask(Context context, Handler handler) {
        this.context = context;
        this.mHandler = handler;

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

        HttpClient client = SingleHttpClient.getHttpClient();
        HttpGet request = new HttpGet();
        try {
            request.setURI(new URI(params[1]));

            HttpResponse response = client.execute(request);
            StatusLine status = response.getStatusLine();
            Log.d(TAG, "Statusline: " + status);
            if (response.getStatusLine().getStatusCode() != HttpStatus.SC_OK) {
                request.abort();
                return "exception";
            }

            HttpEntity entity = response.getEntity();
            Header[] clHeaders = response.getHeaders("Content-Length");
            Header header = clHeaders[0];
            long totalSize = Integer.parseInt(header.getValue());
            Log.d(TAG, "totalSize: " + totalSize);

            long downloadedSize = 0;
            if (entity != null) {
                InputStream stream = entity.getContent();
                byte buf[] = new byte[1024 * 1024];
                int numBytesRead;

                BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(params[0]));
                do {
                    numBytesRead = stream.read(buf);
                    if (numBytesRead > 0) {
                        fos.write(buf, 0, numBytesRead);
                        downloadedSize += numBytesRead;
                        int progress = (int) (downloadedSize * 100 / totalSize);
                        publishProgress(progress);
                    }
                } while (numBytesRead > 0);
                fos.flush();
                fos.close();
                stream.close();
            }

            return "successfully";
        } catch (URISyntaxException e) {
            request.abort();
            e.printStackTrace();
        } catch (IOException e) {
            request.abort();
            e.printStackTrace();
        }

        return "exception";
    }

    @Override
    protected void onProgressUpdate(Integer... progress) {
        mHandler.obtainMessage(FILE_DOWNLOAD_PROGRESS,
                String.valueOf(progress[0])).sendToTarget();
    }

    //
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
}
```