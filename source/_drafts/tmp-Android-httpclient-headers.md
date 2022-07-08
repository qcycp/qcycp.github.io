---
title: tmp_Android_httpclient_headers
abbrlink: 7e8401b0
tags:
---
HttpClient get headers of request and response
===

```java
HttpClient client = getHttpClient();
HttpGet request = new HttpGet();
try {
    request.setURI(new URI(params[1]));
    HttpResponse response = client.execute(request);

    Header[] requestHeaders = request.getAllHeaders();
    for(Header header : requestHeaders) {
        Log.d("Request", header.getName() + ": " + header.getValue());
    }
    
    Header[] responseHeaders = response.getAllHeaders();
    for (Header header : responseHeaders) {
        Log.d("Response", header.getName() + ": " + header.getValue());
    }

} catch (URISyntaxException e) {
    request.abort();
    e.printStackTrace();
} catch (IOException e) {
    request.abort();
    e.printStackTrace();
}
```