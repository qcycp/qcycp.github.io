---
title: file server for download in nodejs
abbrlink: c3baede7
date: 2020-06-09 18:01:25
categories: [Programming, nodejs]
tags:
- nodejs
---
* setup server
```bash
$ npm init
$ npm install express --save
$ node server.js
```
* server.js
```js
var express = require('express');
var app     = express();
var port    = process.env.PORT || 1234;

//files in the public folder(and sub-folders in the public) can be downloaded via url directly
app.use(express.static(__dirname + '/public'));

//or you can add any subpath
//app.use('/static', express.static(__dirname + '/public'));

app.listen(port);
```
* 目錄結構
```
.
├── public
│   ├── image
│   │   └── test.jpg
│   ├── test.txt
│   └── video
│       └── test.mp4
└── server.js
```
* 下載網址：
http://127.0.0.1:1234/test.txt
http://127.0.0.1:1234/video/test.mp4
http://127.0.0.1:1234/image/test.jpg
如果有設定subpath：
http://127.0.0.1:1234/static/test.txt
http://127.0.0.1:1234/static/video/test.mp4
http://127.0.0.1:1234/static/image/test.jpg