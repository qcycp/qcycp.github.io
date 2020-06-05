---
title: call API in nodejs
abbrlink: c81ebda3
date: 2020-06-05 14:42:39
categories: [Programming, nodejs]
tags:
- nodejs
---
```js
var request = require('request');

app.post('/api', function (req, res) {
    var payload = {"name":req.body.name, "password":req.body.password}
    request.post({url:'http://192.168.21.84:8080/api', form:payload}, function(err, response, body) {
        if (!err && response.statusCode == 200) {
            console.log(body);
            res.send(body);
        }
    });
});

app.get('/api', function (req, res) {
    request('http://192.168.21.84:8080/api?abc=123', function (error, response, body) {
        if (!err && response.statusCode == 200) {
            console.log(body);
            res.send(body);
        }
    });
});
```