---
title: tmp_Android_httpclient
abbrlink: 6c434f39
tags:
---
Android HttpClient
===

```
package com.example.httpclient;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;

import com.example.httpclient.myApplication;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.HttpStatus;
import ch.boye.httpclientandroidlib.NameValuePair;
import ch.boye.httpclientandroidlib.client.ClientProtocolException;
import ch.boye.httpclientandroidlib.client.HttpClient;
import ch.boye.httpclientandroidlib.client.config.RequestConfig;
import ch.boye.httpclientandroidlib.client.entity.UrlEncodedFormEntity;
import ch.boye.httpclientandroidlib.client.methods.HttpDelete;
import ch.boye.httpclientandroidlib.client.methods.HttpGet;
import ch.boye.httpclientandroidlib.client.methods.HttpPost;
import ch.boye.httpclientandroidlib.client.methods.HttpPut;
import ch.boye.httpclientandroidlib.client.methods.HttpUriRequest;
import ch.boye.httpclientandroidlib.entity.mime.HttpMultipartMode;
import ch.boye.httpclientandroidlib.entity.mime.MultipartEntityBuilder;
import ch.boye.httpclientandroidlib.entity.mime.content.FileBody;
import ch.boye.httpclientandroidlib.impl.client.CloseableHttpClient;
import ch.boye.httpclientandroidlib.impl.client.HttpClientBuilder;
import ch.boye.httpclientandroidlib.protocol.HTTP;

public class myHttpClient {

    private static final String TAG = "myHttpClient";
    private static CloseableHttpClient customerHttpClient;

    public static boolean isNetwowrkAvailable() {
        boolean result;
        ConnectivityManager connManager =
                (ConnectivityManager) myApplication.getInstance().getSystemService(Context.CONNECTIVITY_SERVICE);
        NetworkInfo info = connManager.getActiveNetworkInfo();
        if (info == null || !info.isConnected()) {
            Log.d(TAG, "info == null || !info.isConnected()");
            result = false;
        } else {
            if (!info.isAvailable()) {
                Log.d(TAG, "!info.isAvailable()");
                result = false;
            } else {
                Log.d(TAG, "info.isAvailable()");
                result = true;
            }
        }
        return result;
    }

    public static String doGet(String webapi) {
        if (!isNetwowrkAvailable()) {
            return "network_disconnection";
        }

        Log.d(TAG, "url = " + webapi);
        HttpGet httpGet = new HttpGet(webapi);
        return getResponseFromWebServer(httpGet);
    }

    public static String doPost(String webapi, NameValuePair... params) {
        if (!isNetwowrkAvailable()) {
            return "network_disconnection";
        }

        HttpPost httpPost = new HttpPost(webapi);

        List formparams = new ArrayList();
        for (NameValuePair p : params) {
            formparams.add(p);
        }
        Log.d(TAG, "formparams = " + formparams.toString());
        UrlEncodedFormEntity formEntity = null;
        try {
            formEntity = new UrlEncodedFormEntity(formparams, HTTP.UTF_8);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return "exception";
        }
        httpPost.setEntity(formEntity);

        return getResponseFromWebServer(httpPost);
    }

    public static String doMultiPost(String webapi, String... fileNames) {
        if (!isNetwowrkAvailable()) {
            return "network_disconnection";
        }

        HttpPost httpPost = new HttpPost(webapi);
        MultipartEntityBuilder builder = MultipartEntityBuilder.create();
        builder.setMode(HttpMultipartMode.BROWSER_COMPATIBLE);

        final File file = new File(fileNames[0]);
        FileBody fb = new FileBody(file);
        builder.addPart("filepath", fb);

        final HttpEntity entity = builder.build();
        httpPost.setEntity(entity);
        return getResponseFromWebServer(httpPost);
    }

    public String doPut(String webapi, NameValuePair... params) {
        if (!isNetwowrkAvailable()) {
            return "network_disconnection";
        }

        HttpPut httpPut = new HttpPut(webapi);

        List formparams = new ArrayList();
        for (NameValuePair p : params) {
            formparams.add(p);
        }

        UrlEncodedFormEntity formEntity = null;
        try {
            formEntity = new UrlEncodedFormEntity(formparams, HTTP.UTF_8);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return "exception";
        }
        httpPut.setEntity(formEntity);

        return getResponseFromWebServer(httpPut);
    }

    public static String doDelete(String webapi) {
        if (!isNetwowrkAvailable()) {
            return "network_disconnection";
        }

        HttpDelete httpDelete = new HttpDelete(webapi);
        return getResponseFromWebServer(httpDelete);
    }

    private static String getResponseFromWebServer(HttpUriRequest request) {
        InputStream is = null;
        StringBuilder response = new StringBuilder();
        HttpClient httpClient = getHttpClient();

        try {
            HttpResponse httpResponse = httpClient.execute(request);

            if (httpResponse.getStatusLine().getStatusCode() != HttpStatus.SC_OK) {
                request.abort();
                return "exception";
            }

            HttpEntity entity = httpResponse.getEntity();
            if (entity != null) {
                is = entity.getContent();
                BufferedReader reader = new BufferedReader(new InputStreamReader(is));

                String readLine = null;
                while ((readLine = reader.readLine()) != null) {
                    response.append(readLine);
                }
            }
            return response.toString();
        } catch (ClientProtocolException e) {
            request.abort();
            e.printStackTrace();
            return "exception";
        } catch (IOException e) {
            request.abort();
            e.printStackTrace();
            return "exception";
        } finally {
            if (is != null){
                try {
                    is.close();
                } catch (IOException e) {
                    e.printStackTrace ();
                }
            }
        }
    }

    public static synchronized HttpClient getHttpClient() {
        if (null == customerHttpClient) {
            RequestConfig config = RequestConfig.custom()
                    .setConnectTimeout(10 * 1000)
                    .setSocketTimeout(10 * 1000)
                    .setConnectionRequestTimeout(5 * 1000)
                    .build();

            customerHttpClient =
                    HttpClientBuilder
                            .create()
                            .setDefaultRequestConfig(config)
                                    //.setConnectionManager(httpClientConnectionManager)
                            .build();
        }
        return customerHttpClient;
    }
}
```

使用方式：
```
//GET
final StringBuilder request = new StringBuilder("http://192.168.1.1:1234/getapi");
request.append("?param1=").append("param1");
request.append("&param2=").append("param2");
String result = myHttpClient.doGet(request.toString());
//POST
NameValuePair param1 = new BasicNameValuePair("param1", "param1");
NameValuePair param2 = new BasicNameValuePair("param2", "param2");
String result = myHttpClient.doPost("http://192.168.1.1:1234/postapi", param1, param2);
```