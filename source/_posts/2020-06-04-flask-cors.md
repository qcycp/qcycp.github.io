---
title: flask cors
abbrlink: 22884ce3
date: 2020-06-04 17:25:26
categories: [Programming, python]
tags:
- python
---
* document
https://flask-cors.readthedocs.io/en/latest/
* 全域設定
```python
from flask import Flask
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

@app.route("/")
def index():
    return "Hello, cross-origin-world!"
```
* api個別設定
```python
from flask import Flask
from flask_cors import cross_origin

app = Flask(__name__)

@app.route("/")
@cross_origin()
def index():
    return "Hello, cross-origin-world!"
```
