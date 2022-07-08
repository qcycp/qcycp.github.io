---
title: tmp_nodejs_swig_example
abbrlink: 9b1889e5
tags:
---
swig example
===


For http module, 
```
var http = require('http');
var app = require('express');
var swig = require('swig');

http.createServer(function (req, res) {
  var template = swig.compileFile(__dirname + '/templates/page.html'),
    renderedHtml = template({
      people: [
        { name: 'Paul', age: 28 },
        { name: 'Jane', age: 26 },
        { name: 'Jimmy', age: 45 }
      ],
      title: 'Basic Example'
    });

  res.writeHead(200, { 'Content-Type': 'text/html' });
  res.end(renderedHtml);
}).listen(1234);

console.log('Application Started on http://localhost:1234/');
```

For express module,
```
var express = require('express');
var swig = require('swig');

var template = swig.compileFile(__dirname + '/templates/page.html');
var output = template({
 title: 'Template02',
 content: '啾~啾~啾~',
    image: '01.jpg'
});

var app = express();
app.use(express.static(__dirname + '/images'));

app.get('/', function (req, res) {
 res.end(output);
});

app.listen(1234);
console.log('Application Started on http://localhost:1234/');
```