---
title: redis in Flask
abbrlink: 602ee73a
date: 2020-06-09 14:49:30
categories: [Programming, Python]
tags:
- Python
- Redis
---
1. setup redis server in ubuntu
`$ sudo apt install redis-server`
2. redis package for python
`$ pip install redis`
3. Hello World for redis
```python
import redis
from flask import Flask

app = Flask(__name__)
conn = redis.Redis(host='192.168.56.5', port=6379)

@app.route('/get')
def redis_get():
    data = conn.get('key')
    if data is not None:
        return data
    return 'no data found'

@app.route('/set')
def redis_set():
    conn.set(name='key', value='value')
    return 'OK'

if __name__ == '__main__':
    app.run()
```
```bash
(venv) $ curl -X GET http://192.168.56.5:5000/get
no data found
(venv) $ curl -X GET http://192.168.56.5:5000/set
OK
(venv) $ curl -X GET http://192.168.56.5:5000/get
value
```