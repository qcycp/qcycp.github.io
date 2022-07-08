---
title: tmp_Android_WebViewClient
abbrlink: a9b716ff
tags:
---
WebViewClient
===

使用自己的WebView加載網頁，不要啟動系統的Browser
如果沒有提供 WebViewClient 對象，則 WebView 會請求 Activity 管理者選擇合適的 URL 處理方式，一般情況就是啟動瀏覽器來加載URL
1. 沒必要自定義 WebViewClient 並重寫其 shouldOverrideUrlLoading 方法，因為 WebViewClient 源碼中 shouldOverrideUrlLoading 方法已經返回 false
WebView myWebView = (WebView) findViewById(R.id.webview);  
myWebView.setWebViewClient(new WebViewClient()); 

2. 如果提供了 WebViewClient 對象且shouldOverrideUrlLoading 方法返回 false，則由當前 WebView 處理URL
```java
WebView myWebView = (WebView) findViewById(R.id.webview);  
myWebView.setWebViewClient(new MyWebViewClient()); 

private class MyWebViewClient extends WebViewClient {
    @Override
    public boolean shouldOverrideUrlLoading(WebView view, String url) {
        return false;
    }
}
```

3. 如果提供了 WebViewClient 對象且shouldOverrideUrlLoading 方法返回 true，依照shouldOverrideUrlLoading 裡自訂的方法來處理
```java
WebView myWebView = (WebView) findViewById(R.id.webview);  
myWebView.setWebViewClient(new MyWebViewClient()); 

private class MyWebViewClient extends WebViewClient {
    @Override
    public boolean shouldOverrideUrlLoading(WebView view, String url) {
        view.loadUrl(url);
        return true;
    }
}
```

http://blog.csdn.net/zhyh1986/article/details/42169159