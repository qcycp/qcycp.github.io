---
title: tmp_NGinx_upload.conf
tags:
---
upload.conf
===

2019/02/18 11:11:21 [error] 11#11: *78 client intended to send too large body: 641033857 bytes, client: 172.18.0.1, server: , request: "POST /api/subject/import.zip HTTP/1.1", host: "192.168.56.102:8857" 172.18.0.1 - - [18/Feb/2019:11:11:22 +0000] "POST /api/subject/import.zip HTTP/1.1" 413 208 "-" "python-requests/2.21.0" "-"  

必須設定nginx的client_max_body_size  
否則上傳檔案的size如果太大，會返回error 413

set upload.conf to /etc/nginx/conf.d/  
```xml
client_max_body_size 0;
```
