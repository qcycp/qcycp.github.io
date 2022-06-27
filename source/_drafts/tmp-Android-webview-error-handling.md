---
title: tmp_Android_webview_error_handling
tags:
---
Android webView error handling
===
```
private void checkWebViewUrl(final WebView webView, final String url) {  
    if (url==null||url.equals("")) {  
        return;  
    }  
    new AsyncTask() {  
  
        @Override  
        protected Integer doInBackground(String... params) {  
            int responseCode = -1;  
            try {  
                URL url = new URL(params[0]);  
                HttpURLConnection connection = (HttpURLConnection) url.openConnection();  
                responseCode = connection.getResponseCode();  
            } catch (Exception e) {  
                log.e("Loading webView error:" + e.getMessage());  
            }  
            return responseCode;  
        }  
  
        @Override  
        protected void onPostExecute(Integer result) {  
            if (result != 200) {  
                webView.setVisibility(View.GONE);  
            } else {  
                webView.setVisibility(View.VISIBLE);
                webView.loadUrl(url);  
            }  
        }  
    }.execute(url);  
}
```