---
title: jaeger in flask
abbrlink: cbe29751
date: 2020-06-10 16:57:34
categories: [Programming, python]
tags:
- python
- flask
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
import requests
from flask import Flask, request
from flask_opentracing import FlaskTracing
from flask_sqlalchemy import SQLAlchemy
from jaeger_client import Config
from opentracing_instrumentation.client_hooks import install_all_patches

def initTracer():
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

#Tracing MySQL and Redis automatically
install_all_patches()

#Trace all requests automatically, it's necessary to create span manually
tracer = FlaskTracing(initTracer, trace_all_requests=True, app=app)

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

@app.route('/')
def index():
    with opentracing.tracer.start_active_span(request.path) as span:
        print("do something...")
    return 'Hello World!!'

@app.route('/extract')
def extract():
    span_context = opentracing.tracer.extract(
                       format=opentracing.Format.HTTP_HEADERS,
                       carrier=request.headers)
    span = opentracing.tracer.start_span(request.path, child_of=span_context)
    print("do something...")
    span.finish()

    return 'Hello World!!'

@app.route('/inject')
def inject():
    span = tracer.get_span(request)
    http_header_carrier = {}
    opentracing.global_tracer().inject(span_context=span,
                                       format=opentracing.Format.HTTP_HEADERS,
                                       carrier=http_header_carrier)
    requests.get('http://192.168.56.5:8888/extract', headers=http_header_carrier)

    return 'Hello World!!'

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
* tag and log
```python
span.set_tag('key', 'value')
span.log_kv({'key1': 'value1', 'key2': value2})
```
* 建立一個單純tracing api功能的server
```python
from flask import Flask
from flask_opentracing import FlaskTracing
from jaeger_client import Config

def initTracer():
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
tracer = FlaskTracing(initTracer, trace_all_requests=True, app=app)

@app.route('/')
def index():
    return 'Hello World!!'

if __name__ == '__main__':
    app.run()
```