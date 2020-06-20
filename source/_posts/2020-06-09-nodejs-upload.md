---
title: File Server for Upload in Node.js
abbrlink: ee140a30
date: 2020-06-09 18:01:15
categories: [Programming, Node.js]
tags:
- Nodejs
---
* setup server
```bash
$ npm init
$ npm install express multer --save
$ node server.js
```
* server.js
```js
var express = require("express");
var multer  = require('multer');
var path    = require('path')
var app     = express();
var port    = process.env.PORT || 1234;
var storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, __dirname + '/uploads/')
    },
    filename: function (req, file, cb) {
        const extension = path.extname(file.originalname)
        const basename = path.basename(file.originalname, extension)
        cb(null, basename + '-' + Date.now() + extension)
    }
})
var upload  = multer({ storage: storage })

app.get('/', function(req,res){
    res.sendFile(__dirname + "/index.html");
});

app.post('/upload', upload.any(), function (req, res, next) {
    console.log(req.files)
    res.redirect('/');
});

app.listen(port);
```
* index.html
```html
<html>
<header><title>This is title</title></header>
<body>
<form id      =  "uploadForm"
      enctype =  "multipart/form-data"
      action  =  "/upload"
      method  =  "post"
>
    <input type="file" value="Choose Files" name="file" multiple>
    <input type="submit" value="Submit">
</form>
</body>
</html>
```
* 目錄結構
```
.
├── uploads
└── server.js
```
* Android HttpClient
```
HttpPost httpPost = new HttpPost("http://127.0.0.1:1234/upload");
MultipartEntityBuilder builder = MultipartEntityBuilder.create();
builder.setMode(HttpMultipartMode.BROWSER_COMPATIBLE);

final File file = new File("/sdcard/filename");
FileBody fb = new FileBody(file);
builder.addPart("file", fb);

final HttpEntity entity = builder.build();
httpPost.setEntity(entity);

HttpResponse httpResponse = httpClient.execute(httpPost);
```
* Reference
http://expressjs.com/en/resources/middleware/multer.html