---
title: tmp_Android_WebVIew_youtube
abbrlink: 5c8bde10
tags:
---
Webview load youtube video and autoplay
===

```java
import android.net.http.SslError;
import android.webkit.SslErrorHandler;

private class MyWebViewClient extends WebViewClient {
    // Ignore SSL certificate errors for loading https webpage
    @Override
    public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
        handler.proceed();
    }
    
    ...
}

public void init() {
    WebView webView = (WebView) findViewById(R.id.webview);
    webView.setWebViewClient(new MyWebViewClient());
 
    WebSettings s = webView.getSettings();
    s.setJavaScriptEnabled(true);
    s.setMediaPlaybackRequiresUserGesture(false);

    // change the UserAgent to auto play youtube videos
    s.setUserAgentString(s.getUserAgentString().replace("Android", ""));
    ....
}
```

如果youtube網頁不是全螢幕的，只需要加上autoplay=1即可
`webView.loadUrl("https://www.youtube.com/watch?v=ROipDjNYK4k&autoplay=1&loop=1&playlist=ROipDjNYK4k");`

如果youtube網頁是全螢幕的，必需要把UserAgent中，Android字樣去掉
`webView.loadUrl("https://www.youtube.com/embed/ROipDjNYK4k?autoplay=1&loop=1&playlist=ROipDjNYK4k");`