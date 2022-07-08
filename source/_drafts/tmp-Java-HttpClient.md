---
title: tmp_Java_HttpClient
abbrlink: 1635fbc9
tags:
---
HttpClient
===
[Chapter 2. Connection management](http://hc.apache.org/httpcomponents-client-ga/tutorial/html/connmgmt.html#d5e639)

```java
import ch.boye.httpclientandroidlib.client.HttpClient;
import ch.boye.httpclientandroidlib.client.config.RequestConfig;
import ch.boye.httpclientandroidlib.impl.client.CloseableHttpClient;
import ch.boye.httpclientandroidlib.impl.client.HttpClientBuilder;
import ch.boye.httpclientandroidlib.impl.conn.PoolingHttpClientConnectionManager;

public class SingleHttpClient {
    private static final String TAG = "SmartCMS_SingleHttpClient";
    private static CloseableHttpClient customerHttpClient = null;

    public static synchronized HttpClient getHttpClient() {
        if (customerHttpClient == null) {
            PoolingHttpClientConnectionManager cm = new PoolingHttpClientConnectionManager();
            cm.setMaxTotal(20);// Increase max total connection to 20
            cm.setDefaultMaxPerRoute(10);// Increase default max connection per route to 10

            RequestConfig config = RequestConfig.custom()
                    .setConnectTimeout(5 * 1000)
                    .setSocketTimeout(10 * 1000)
                    .setConnectionRequestTimeout(5 * 1000)
                    .build();

            customerHttpClient =
                    HttpClientBuilder
                            .create()
                            .setDefaultRequestConfig(config)
                            .setConnectionManager(cm)
                            .build();
        }   

        return customerHttpClient;
    }   
}
```