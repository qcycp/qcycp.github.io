---
title: jaeger_in_python
abbrlink: af8f76b
date: 2020-06-22 08:36:55
categories: [Programming, Python]
tags:
- Python
- Jaeger
---
* package
```bash
(venv) $ pip install jaeger-client flask-opentracing
```
* example for multiprocess tracing
  * reference from https://github.com/jaegertracing/jaeger-client-python/issues/210 @ [illogikus](https://github.com/illogikus)
```python
import logging
import opentracing
import os
import time
from jaeger_client import Config
from multiprocessing import Pool

def pidprint(s):
    print("[%s] %s" % (os.getpid(),s))

def pidlog(s):
    active = opentracing.tracer.scope_manager.active
    pidprint(s)
    active.span.log_kv({os.getpid(): s})

def f(x, context):
    with opentracing.global_tracer().start_active_span('span_%s' % x, child_of=context):
        pidlog("Hello %s" % x)
        time.sleep(float(x)/10)
        pidlog("Bye %s" % x)
    return x

def get_jaeger_config():
    config = Config(
        config={
            'sampler': {
                'type': 'const',
                'param': 1,
            },
            'local_agent': {
                'reporting_host': '192.168.56.5',
                'reporting_port': 6831,
            },
            'logging': True,
        },
        service_name='my-service'
    )
    return config

def init_jaeger_tracer():
    logging.getLogger('').handlers = []
    logging.basicConfig(format='%(message)s', level=logging.DEBUG)
    return get_jaeger_config().initialize_tracer()

def subprocess_initializer():
    config = get_jaeger_config()
    Config._initialized = False
    config.initialize_tracer()

if __name__ == '__main__':
    tracer = init_jaeger_tracer()
    pool = Pool(processes=4, initializer=subprocess_initializer)

    with opentracing.global_tracer().start_active_span('master_span') as scope:
        for x in range(10):
            pidprint("Sending %s ..." % x)
            pool.apply_async(f,(x, scope.span.context))

    time.sleep(3)
    pool.close()
    pool.join()
    tracer.close()
```
![](multiprocessing_tracing.jpg)