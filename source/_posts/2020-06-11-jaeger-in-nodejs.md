---
title: Jaeger in Node.js
abbrlink: 9a34aaf2
date: 2020-06-11 10:58:23
categories: [Programming, Node.js]
tags:
- Node.js
- Jaeger
---
* package
```bash
$ npm install express --save
$ npm install opentracing jaeger-client --save
```
* server.js
```js
var express = require('express');
var app = express();
var initJaegerTracer = require('jaeger-client').initTracer;
var opentracing = require('opentracing')

function initTracer() {
  const config = {
    serviceName: 'nodejs',
    sampler: {type: 'const', param: 1}
  };
  const options = {
    logger: {
      info(msg) {console.log('INFO ', msg);},
      error(msg) {console.log('ERROR', msg);}
    }
  };
  return initJaegerTracer(config, options);
}

var tracer = initTracer();

app.get('/', function (req, res) {
  const span = tracer.startSpan(req.url);
  res.send('Hello World!');
  span.finish();
});

app.get('/extract', function (req, res) {
  const parentSpanContext = tracer.extract(opentracing.FORMAT_HTTP_HEADERS, req.headers);
  const span = tracer.startSpan(req.url, { childOf: parentSpanContext });
  res.send('Hello World!');
  span.finish();
});

app.get('/inject', function (req, res) {
  res.send('Hello World!');
});

app.listen(9527, function () {
  console.log('Example app listening on port 9527!');
});
```
* tag
```golang
span.setTag("key", "value")
```
* Reference
https://rainmakerho.github.io/2019/01/15/2019004/