---
title: tmp_Android_WebVIew_and_url
abbrlink: da4be3e4
tags:
---
webview and html
===
[click 通過Android WebView中的javascript檢測點擊HTML按鈕 - CODE Q&A 解決了](https://code.i-harness.com/zh-TW/q/3e0820)

```java
WebSettings ws = wv.getSettings();
ws.setJavaScriptEnabled(true);
wv.addJavascriptInterface(new Object()
{
  public void performClick()
  {
    // Deal with a click on the OK button
  }
}, "ok");
```

```html
<button type="button" onclick="ok.performClick();">OK</button>
```

```java
WebView browser = new WebView(this);
browser.getSettings().setJavaScriptEnabled(true);
browser.loadUrl("file:///android_asset/page.html");
setContentView(browser);
WebSettings ws = browser.getSettings();
ws.setJavaScriptEnabled(true);
browser.addJavascriptInterface(new Object()
{
    @JavascriptInterface           // For API 17+
    public void performClick(String strl)
    {

        Toast.makeText (MainActivity.this, strl, Toast.LENGTH_SHORT).show();

    }
}, "ok");
```

```html
<html>
<body>

    First name: <input type="text" name="fname" id="txtfname"><br>
    Last name: <input type="text" name="lname" id="txtlname"><br>

    <script>
    function getValues() {
    document.getElementById("btnOK").value = document.getElementById("txtfname").value+" "+document.getElementById("txtlname").value;
    }
    </script>

    <button type="button" value="" id="btnOK" onclick="getValues();ok.performClick(this.value);">OK</button>
</body>
</html>
```