---
title: tmp_ApacheBench
tags:
---
ApacheBench
===

[網頁伺服器監測站！！不能不知道的ApacheBench使用方法 \| Hello Santa web design,drupal and more](https://blog.hellosanta.com.tw/%E7%B6%B2%E7%AB%99%E8%A8%AD%E8%A8%88/%E4%BC%BA%E6%9C%8D%E5%99%A8/%E7%B6%B2%E9%A0%81%E4%BC%BA%E6%9C%8D%E5%99%A8%E7%9B%A3%E6%B8%AC%E7%AB%99%EF%BC%81%EF%BC%81%E4%B8%8D%E8%83%BD%E4%B8%8D%E7%9F%A5%E9%81%93%E7%9A%84apachebench%E4%BD%BF%E7%94%A8%E6%96%B9%E6%B3%95)

[The Will Will Web \| 使用 ApacheBench 進行網站的壓力測試](https://blog.miniasp.com/post/2008/06/30/Using-ApacheBench-ab-to-to-Web-stress-test.aspx)

* Install  
`sudo apt install apache2-utils`  

[對於 ApacheBench 進行測試時出現的 Failed requests 詳解 \| The Will Will Web](https://blog.miniasp.com/post/2009/10/07/Explain-ApacheBench-ab-for-the-Failed-request-field)

只要出現 Failed requests 就會多出現一行要求失敗的各原因的數據統計，分別有 Connect, Receive, Length, 與 Exception 四種，分別代表的意義為：  

Connect    無法送出要求、目標主機連接失敗、要求的過程中連線被中斷  
Receive    接收數據失敗的次數  
Length     回應的內容長度不一致 ( 以 Content-Length 標頭值為判斷依據 )  
Exception  發生無法預期的錯誤  

而從上述說明就可以很明顯看出所有的 Failed requests 都落在 Length 這個類別上，原來這是因為受測網站的首頁是動態的內容，當第一次發出 HTTP request 與後續發出的 HTTP request 所得到回應的 HTML 長度都是不同大小的 ( 每次回應的 Content-Length 大小不一致 )，才會引發 Failed requests 的 Length 問題的失敗，因此這類 Length 不一致的失敗在進行「動態網頁」壓力測試時是合理的，可以不予理會。  

這裡的 Length 是以 "第 1 次" 取得的 Content-Length 為主，如果第 2 次以後的 HTTP Request 所得到的 HTTP Response Header 得到的 Content-Length 與第 1 次取得的長度不一致，就會得到 Length 的錯誤。  

```bash
user@vm:~/docker/kangaroo$ ab -n 10000 -c 10 http://192.168.56.102:8857/api/subject/list
This is ApacheBench, Version 2.3 <$Revision: 1706008 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking 192.168.56.102 (be patient)
Completed 1000 requests
Completed 2000 requests
Completed 3000 requests
Completed 4000 requests
Completed 5000 requests
Completed 6000 requests
Completed 7000 requests
Completed 8000 requests
Completed 9000 requests
Completed 10000 requests
Finished 10000 requests


Server Software:        nginx/1.15.8
Server Hostname:        192.168.56.102
Server Port:            8857

Document Path:          /api/subject/list
Document Length:        339 bytes

Concurrency Level:      10
Time taken for tests:   59.269 seconds
Complete requests:      10000
Failed requests:        0
Non-2xx responses:      10000
Total transferred:      4920000 bytes
HTML transferred:       3390000 bytes
Requests per second:    168.72 [#/sec] (mean)
Time per request:       59.269 [ms] (mean)
Time per request:       5.927 [ms] (mean, across all concurrent requests)
Transfer rate:          81.07 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.3      0      20
Processing:    10   59  15.6     56     323
Waiting:       10   59  15.6     56     323
Total:         10   59  15.6     56     323

Percentage of the requests served within a certain time (ms)
  50%     56
  66%     61
  75%     66
  80%     69
  90%     78
  95%     86
  98%    100
  99%    111
 100%    323 (longest request)

```