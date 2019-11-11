---
title: jsonify v.s. json.dumps
categories: [Programming, python]
tags:
- python
abbrlink: 39e057a1
date: 2019-11-11 17:22:22
---
主要的差異在於response的Content-Type不同
```python
from flask import Flask, jsonify

app = Flask(__name__)
  
@app.route('/test', methods=['GET'])
def test():
    return jsonify({"code": 0, "data": "test"})
```

```sh
user@vm-docker:~$ curl -i -X GET http://localhost:5000/test
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Mon, 11 Nov 2019 09:14:21 GMT
Content-Type: application/json
Content-Length: 180
Connection: keep-alive
Access-Control-Allow-Origin: *

{"code":0,"data":"test"}
```

```python
import json
from flask import Flask

app = Flask(__name__)
  
@app.route('/test', methods=['GET'])
def test():
    return json.dumps({"code": 0, "data": "test"})
```

```sh
user@vm-docker:~$ curl -i -X GET http://localhost:5000/test
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Mon, 11 Nov 2019 09:17:14 GMT
Content-Type: text/html; charset=utf-8
Content-Length: 198
Connection: keep-alive
Access-Control-Allow-Origin: *

{"code":0,"data":"test"}
```
