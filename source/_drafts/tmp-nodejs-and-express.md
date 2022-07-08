---
title: tmp_nodejs_and_express
abbrlink: 90d60a53
tags:
---
nodejs and express
===
在nodejs express中，必須導入body-parser  
才能使用req.body來抓取post\put所傳入的資料  

body-parser 可以解析json、row、文本、URL-encoded格式的表單資料  
```javascript
//json
bodyParser.json()
//urlencoded
bodyParser.urlencoded({ extended: false })

const bodyParser = require('body-parser')
app.use(bodyParser.json());
```

##### Express ( Nodejs ) 取得 GET 、 POST 與 Routing 值
* 要抓取POST值 可以用 body
* 要抓取GET值 可以用 query
* 要抓取Routing值 可以用 params
