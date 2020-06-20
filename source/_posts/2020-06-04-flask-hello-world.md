---
title: Hello World for Flask
abbrlink: d5faf89c
date: 2020-06-04 16:44:46
categories: [Programming, Python]
tags:
- Python
- Flask
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
$ flask run --host 0.0.0.0 --port 3000
```
5. 在debug模式下，有任何修改都會自動reload server
```bash
(venv) $ set FLASK_APP=main.py
(venv) $ set FLASK_DEBUG=1
(venv) $ flask run --host 0.0.0.0 --port 3000
 * Environment: production
   WARNING: This is a development server. Do not use it in a production deployment.
   Use a production WSGI server instead.
 * Debug mode: on
 * Running on http://0.0.0.0:5000/ (Press CTRL+C to quit)
 * Restarting with stat
 * Debugger is active!
 * Debugger PIN: 369-389-049
```