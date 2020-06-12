---
title: jaeger_in_flask
abbrlink: cbe29751
date: 2020-06-10 16:57:34
categories: [Programming, python]
tags:
- python
- jaeger
---
* package
```bash
(venv) $ pip install flask flask-sqlalchemy redis
(venv) $ pip install opentracing_instrumentation jaeger-client flask-opentracing
```
* app.py
```python
import opentracing
import os
import redis
from flask import Flask
from flask_opentracing import FlaskTracing
from flask_sqlalchemy import SQLAlchemy
from jaeger_client import Config
from opentracing_instrumentation.client_hooks import install_all_patches

def init_tracer():
  config = Config(
      config={
          'sampler': {'type': 'const', 'param': 1},
          'local_agent': {
              'reporting_host': '192.168.56.5',
              'reporting_port': 6831,
          },
      },
      service_name='flask')
  return config.initialize_tracer()

app = Flask(__name__)
conn = redis.Redis(host='192.168.56.5', port=6379)
install_all_patches()
tracer = FlaskTracing(init_tracer, True, app)

pjdir = os.path.abspath(os.path.dirname(__file__))
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///' + os.path.join(pjdir, 'data.sqlite')
db = SQLAlchemy(app)

class User(db.Model):
    __tablename__ = 'users'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(20))
    def __init__(self, name):
        self.name = name

db.create_all()
db.session.commit()

@app.route('/get')
def get():
    redis_data = conn.get('test')
    user = User.query.filter_by(name='test').first()
    return 'GET'

@app.route('/set')
def set():
    conn.set(name='test', value='data')
    user = User(name='test')
    db.session.add(user)
    db.session.commit()
    return 'SET'

if __name__ == '__main__':
    app.run()
```
* Tracing api requests
  * 若跟jaeger-agent在同一網域，不需要設定local_agent
```python
def init_tracer():
  config = Config(
      config={
          'sampler': {'type': 'const', 'param': 1}
      },
      service_name='flask')
  return config.initialize_tracer()
```
  * Trace all requests automatically
`tracer = FlaskTracing(init_tracer, True, app)`
* Tracing MySQL and Redis automatically
`install_all_patches()`