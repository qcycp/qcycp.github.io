---
title: Hello World for Node.js
abbrlink: 3bd1d4df
date: 2020-06-04 16:28:19
categories: [Programming, Node.js]
tags:
- Node.js
---
1. 建立project，過程中一直Enter即可
`$ npm init`
2. 安裝Express
`$ npm install express --save`
3. edit index.js
```js
var express = require('express');
var app = express();

app.get('/', function (req, res) {
  res.send('Hello World!');
});

app.listen(9527, function () {
  console.log('Example app listening on port 9527!');
});
```
4. 執行server
`$ node index.js`
5. 建立`server` folder (後端代碼通常都寫在該目錄下)
6. 用JSON模擬後台數據，create `data` folder
edit server/data/getMessage.js
```js
var MessageList = [
    { "Message":"Hello React"},
    { "Message":"Hello Webpack"},
    { "Message":"Hello Nodejs"},
    { "Message":"Hello Express"}
];
exports.getMessageList = function (callback) {
    callback(MessageList);
};
```
7. 封裝接口
edit server/action/data/getMessage.js
```js
var getMessageList = require('../../data/getMessage');

exports.execute = function (req, res) {
     getMessageList.getMessageList(function (data) {
         res.send(data);
     });
};
```
8. 定義接口並修改路由配置
edit index.js
```js
// 新增接口路由
app.get('/data/:module', function (req, res, next) {
    var c_path = req.params.module;
    var Action = require('./server/action/data/' + c_path);
    Action.execute(req, res);
});
```
9. api
http://ip:9527/
http://ip:9527/data/getMessage

* nodemon，監控server，當有資料修改時，會自動重啟server
`$ sudo npm install -g nodemon --save`
`$ nodemon index.js`