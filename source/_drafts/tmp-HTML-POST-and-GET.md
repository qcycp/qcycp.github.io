---
title: tmp_HTML_POST_and_GET
tags:
---
POST與GET的不同
===
http://marsping.blogspot.tw/2009/01/scwcd-postget.html

GET及POST都是HTML中表單傳送的方式，而兩者有什麼差異呢?

"GET"的特性：

會顯示於網址列上，如：http://test.web.com/hellowolrd.jsp?name=ping，紅色部分為GET傳遞方式
有傳遞參數有內容長度限制約255位元
是冪等(idempotent)的方法，意指多次傳遞參數請求所得到的結果仍時一樣，並不會影響伺服器上的資料內容，(冪等為何物?後面會再加以說明)

"POST"的特性：

傳遞參數內容放置在傳送資料中，並不會顯示於網址列上
傳遞參數內容並無限制大小

若資料內容過多或是須要隱藏顯示，建議是"POST"方式傳遞參數。

冪等 idempotent：
多次傳遞參數請求所得到的結果仍時一樣，並不會影響伺服器上的資料內容，
使用"GET"方式傳遞參數，因參數內容放置在網址列上，
所以將該網址重覆執行並不會影響顯示結果，
但"POST"是將參數內容放置在傳遞的資料格式中，
若將顯示結果的網址重覆執行並不會得到相同結果。
http://blog-ping.appspot.com/get 網頁中的form是以 "GET"方式傳遞，
在username輸入名字"Test"後,
頁面網址會轉至http://blog-ping.appspot.com/get/helloworld?username=Test,
在頁面中會看到"Hello World, Test",
若將網址直接copy再執行, 頁面仍舊會顯示"Hello World, Test"。

http://blog-ping.appspot.com/post 網頁中的form則是以 "POST"方式傳遞，
在username輸入名字"Test"後,
頁面網址會轉至http://blog-ping.appspot.com/post/helloworld，
在頁面中會看到"Hello World, Test",
將網址copy再執行，卻不會顯示"Hello World, Test"。
