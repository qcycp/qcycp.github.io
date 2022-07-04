WebView造成記憶體泄露

關於WebView的記憶體泄露，因為WebView在加載網頁後會長期占用記憶體而不能被釋放，因此我們在Activity銷毀後要調用它的destory()方法來銷毀它以釋放記憶體。
最終的解決方案是：在銷毀WebView之前需要先將WebView從父容器中移除，然後在銷毀WebView。

```java
@Override
protected void onDestroy(){
    super.onDestroy();
    // 先從父控件中移除WebView
    mWebViewContainer.removeView(mWebView);
    mWebView.stopLoading();
    mWebView.getSettings().setJavaEnabled(false);
    mWebView.clearHistory();
    mWebView.removeAllViews();
    mWebView.destroy();
}
```