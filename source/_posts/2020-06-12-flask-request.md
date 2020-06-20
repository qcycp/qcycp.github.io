---
title: Information of flask.request
abbrlink: f4d5bb19
date: 2020-06-12 09:18:54
categories: [Programming, Python]
tags:
- Python
- Flask
---
* GET api request
`curl -X GET http://127.0.0.1:5000/api/test?x=abc`

* Information of flask.request
```
request.method:              GET
request.url:                 http://127.0.0.1:5000/api/test?x=abc
request.base_url:            http://127.0.0.1:5000/api/test
request.url_charset:         utf-8
request.url_root:            http://127.0.0.1:5000/
str(request.url_rule):       /api/test
request.host_url:            http://127.0.0.1:5000/
request.host:                127.0.0.1:5000
request.script_root:
request.path:                /api/test
request.full_path:           /api/test?x=abc
request.args:                ImmutableMultiDict([('x', 'abc')])
request.args.get('x'):       abc
```