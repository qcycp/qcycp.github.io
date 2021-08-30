---
title: download_file
abbrlink: 996f0d2c
date: 2021-08-26 09:32:04
categories:
tags:
---
```python
from flask import Flask
from flask import send_file
app = Flask(__name__)

@app.route('/download')
def downloadFile ():
    #For windows you need to use drive name [ex: F:/example.pdf]
    path = "/examples.pdf"
    return send_file(path, as_attachment=True, cache_timeout=-1)
```