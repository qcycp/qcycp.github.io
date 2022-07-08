---
title: tmp_Android_httpclient_download_files
abbrlink: 75d1b83f
tags:
---
HttpClient about download file
===

在一些server上，在接收到user的下載請求時，會先將檔案gzip之後，才傳輸給user

HttpClient的request中，預設會設定Accept-Encoding: gzip
server回傳的header中會顯示Transfer-Encoding: chunked，而將Content-Length去除掉

去除此機制
```java
HttpClient client = getHttpClient();
HttpGet request = new HttpGet();
request.setHeader("Accept-Encoding", "identity");
try {
    request.setURI(new URI(params[1]));
    HttpResponse response = client.execute(request);
 
} catch (URISyntaxException e) {
    e.printStackTrace();
} catch (IOException e) {
    e.printStackTrace();
}
```