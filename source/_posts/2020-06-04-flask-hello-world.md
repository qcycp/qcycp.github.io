---
title: Hello World in flask
abbrlink: d5faf89c
date: 2020-06-04 16:44:46
categories: [Programming, python]
tags:
- python
- flask
---
1. setup virtual environment
`$ virtualenv venv`
`$ source venv/bin/activate`
2. install flask
`(venv)$ pip install flask`
3. edit main.py
```python
from flask import Flask
app = Flask(__name__)

@app.route('/')
def index():
    return 'Hello World!'

if __name__ == '__main__':
    app.run()
```
4. start server
```bash
$ export FLASK_APP=main.py
$ export FLASK_DEBUG=1
$ flask run --host 0.0.0.0 --port 3000
```