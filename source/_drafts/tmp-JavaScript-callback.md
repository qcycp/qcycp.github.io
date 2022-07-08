---
title: tmp_JavaScript_callback
abbrlink: 994072b6
tags:
---
JavaScript callback in Android
===
```java
//in MainActivity.java
class JsObject {
    @JavascriptInterface
    public void NativeMethod(final String a, final String b) {
        mHandler.post(new Runnable() {
            @Override
            public void run() {
                Log.d(TAG, "a: " + a);// Test
                Log.d(TAG, "b: " + b);// 123
            }
        });
    }
}

WebView webView = (WebView) findViewById(R.id.webview);
WebSettings websettings = webView.getSettings();
websettings.setJavaScriptEnabled(true);

webView.addJavascriptInterface(new JsObject(), "Android");
```

```html
<!--index.html-->
<script type="text/javascript" language="javascript">
$(document).ready(function() {
    var a = "Test";
    var b = 123;
    Android.NativeMarquee(a, b);
}); 
</script>
```