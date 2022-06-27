---
title: tmp_HTML_access_web_api_via_javascript_CORS
tags:
---
Access web api via javascript under cross-domain (CORS)
===

```js
//server.js
var express = require("express");
var multer  = require('multer');
var app     = express();
var port    = process.env.PORT || 1234;
var done    = false;
 
//Configure the multer.
app.use(multer({ dest: './uploads/',
                 rename: function (fieldname, filename) {
                             return filename+Date.now();
                         },
    onFileUploadStart: function (file) {
        console.log(file.originalname + ' is starting ...')},
    onFileUploadComplete: function (file) {
        console.log(file.fieldname + ' uploaded to  ' + file.path)
        done = true;}
}));
 
//Handling routes.
app.get('/', function(req,res){
    res.sendfile("index.html");
});
 
app.post('/file/upload',function(req,res){

    // Website you wish to allow to connect 
    // ("*" for all website, or you can indicate a specific page, such as http://example.com)
    res.header('Access-Control-Allow-Origin', "*");
    // Request methods you wish to allow
    res.header('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE,PATCH,OPTIONS');
    // Request headers you wish to allow
    res.header('Access-Control-Allow-Headers', 'X-Requested-With,Content-Type');
    // Set to true if you need the website to include cookies in the requests sent
    // to the API (e.g. in case you use sessions)
    res.header('Access-Control-Allow-Credentials', true);

    if (done == true) {
        console.log(req.files);
        res.end("File uploaded.");
    }
});
 
//Run the server.
app.listen(port);
```