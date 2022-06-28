---
title: tmp_nodejs_and_ajax_jsonp
tags:
---
ajax jsonp + nodejs
===
```js
$.ajax({
    url: 'http:\\127.0.0.1:5000\agv',
    type: "GET",
    data: {name: 'nick'},
    dataType: 'jsonp',
    error: function (xhr) {
        writeToScreen('ERROR');
    },
    success: function (response) {
        console.log(response.code);
    }
});
```
```node
nodejs + express server
app.get('\agv', (req, res) => {
    name = "";

    if (req.query.name) {
        name = req.query.name;
    }

    res.jsonp({ code: 0, name: name, agv: true });
});
```