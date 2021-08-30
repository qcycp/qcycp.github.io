---
title: python_gevent
abbrlink: fbf3436c
date: 2021-08-26 09:35:49
categories:
tags:
---
```
def goo():
    while True:
        logger.info('gThread id main = %s' % threading.current_thread().ident)
        gevent.sleep(1)
def foo():
    while True:
        logger.info('fThread id main = %s' % threading.current_thread().ident)
        gevent.sleep(1)
```

```
if __name__ == "__main__":
    logger.info('mThread id main = %s' % threading.current_thread().ident)

    gevent.spawn(goo)
    gevent.spawn(foo)

    while True:
        time.sleep(1)
        logger.info('mThread id main = %s' % threading.current_thread().ident)

'''
2019-07-18 09:41:48,231 - [main.py:174] - INFO mThread id main = 140059510753024
2019-07-18 09:41:49,233 - [main.py:181] - INFO mThread id main = 140059510753024
2019-07-18 09:41:50,235 - [main.py:181] - INFO mThread id main = 140059510753024
'''
```

```
if __name__ == "__main__":
    logger.info('mThread id main = %s' % threading.current_thread().ident)

    gevent.spawn(goo)
    gevent.spawn(foo).run()

    while True:
        time.sleep(1)
        logger.info('mThread id main = %s' % threading.current_thread().ident)

'''
2019-07-18 09:38:31,008 - [main.py:174] - INFO mThread id main = 140436039460608
2019-07-18 09:38:31,009 - [main.py:170] - INFO fThread id main = 140436039460608
2019-07-18 09:38:31,009 - [main.py:166] - INFO gThread id main = 140436039460608
2019-07-18 09:38:32,011 - [main.py:170] - INFO fThread id main = 140436039460608
2019-07-18 09:38:32,011 - [main.py:166] - INFO gThread id main = 140436039460608
'''
```

```
if __name__ == "__main__":
    logger.info('mThread id main = %s' % threading.current_thread().ident)

    gevent.spawn(goo).run()
    gevent.spawn(foo)

    while True:
        time.sleep(1)
        logger.info('mThread id main = %s' % threading.current_thread().ident)

'''
2019-07-18 09:39:38,280 - [main.py:174] - INFO mThread id main = 140345852270336
2019-07-18 09:39:38,281 - [main.py:166] - INFO gThread id main = 140345852270336
2019-07-18 09:39:39,296 - [main.py:166] - INFO gThread id main = 140345852270336
'''
```

```
if __name__ == "__main__":
    logger.info('mThread id main = %s' % threading.current_thread().ident)

    gevent.joinall([
        gevent.spawn(goo),
        gevent.spawn(foo)
    ])

    while True:
        time.sleep(1)
        logger.info('mThread id main = %s' % threading.current_thread().ident)

'''
2019-07-18 09:43:04,408 - [main.py:174] - INFO mThread id main = 139723512018688
2019-07-18 09:43:04,409 - [main.py:166] - INFO gThread id main = 139723512018688
2019-07-18 09:43:04,409 - [main.py:170] - INFO fThread id main = 139723512018688
2019-07-18 09:43:05,410 - [main.py:166] - INFO gThread id main = 139723512018688
2019-07-18 09:43:05,411 - [main.py:170] - INFO fThread id main = 139723512018688
'''
```

```
from gevent import monkey;monkey.patch_all()
if __name__ == "__main__":
    logger.info('mThread id main = %s' % threading.current_thread().ident)

    gevent.spawn(goo)
    gevent.spawn(foo)

    while True:
        time.sleep(1)
        logger.info('mThread id main = %s' % threading.current_thread().ident)

'''
2019-07-18 09:44:59,346 - [main.py:175] - INFO mThread id main = 140233629611272
2019-07-18 09:44:59,346 - [main.py:166] - INFO gThread id main = 140233571852872
2019-07-18 09:44:59,346 - [main.py:170] - INFO fThread id main = 140233571853128
2019-07-18 09:45:00,347 - [main.py:182] - INFO mThread id main = 140233629611272
2019-07-18 09:45:00,347 - [main.py:166] - INFO gThread id main = 140233571852872
2019-07-18 09:45:00,347 - [main.py:170] - INFO fThread id main = 140233571853128
'''
```

--------------------------------------------------------------------------------------------------------

```
def goo():
    time.sleep(10)
    logger.info('gThread id main = %s' % threading.current_thread().ident)

def foo():
    time.sleep(5)
    logger.info('fThread id main = %s' % threading.current_thread().ident)

if __name__ == "__main__":
    logger.info('mThread id main = %s' % threading.current_thread().ident)

    gevent.joinall([
        gevent.spawn(goo),
        gevent.spawn(foo)
    ])

'''
2019-07-18 10:06:19,773 - [main.py:174] - INFO mThread id main = 139665595115264
2019-07-18 10:06:29,785 - [main.py:166] - INFO gThread id main = 139665595115264
2019-07-18 10:06:34,791 - [main.py:170] - INFO fThread id main = 139665595115264
'''
```

```
def goo():
    gevent.sleep(10)
    logger.info('gThread id main = %s' % threading.current_thread().ident)

def foo():
    gevent.sleep(5)
    logger.info('fThread id main = %s' % threading.current_thread().ident)

if __name__ == "__main__":
    logger.info('mThread id main = %s' % threading.current_thread().ident)

    gevent.joinall([
        gevent.spawn(goo),
        gevent.spawn(foo)
    ])

'''
2019-07-18 10:07:05,429 - [main.py:174] - INFO mThread id main = 140126333138688
2019-07-18 10:07:10,434 - [main.py:170] - INFO fThread id main = 140126333138688
2019-07-18 10:07:15,436 - [main.py:166] - INFO gThread id main = 140126333138688
'''
```

```
from gevent import monkey;monkey.patch_all()
def goo():
    time.sleep(10)
    logger.info('gThread id main = %s' % threading.current_thread().ident)

def foo():
    time.sleep(5)
    logger.info('fThread id main = %s' % threading.current_thread().ident)

if __name__ == "__main__":
    logger.info('mThread id main = %s' % threading.current_thread().ident)

    gevent.joinall([
        gevent.spawn(goo),
        gevent.spawn(foo)
    ])

'''
2019-07-18 10:09:27,635 - [main.py:174] - INFO mThread id main = 140478560122120
2019-07-18 10:09:32,636 - [main.py:171] - INFO fThread id main = 140478502363976
2019-07-18 10:09:37,641 - [main.py:167] - INFO gThread id main = 140478502363720
'''
```

```
from gevent import monkey;monkey.patch_all()
def goo():
    gevent.sleep(10)
    logger.info('gThread id main = %s' % threading.current_thread().ident)

def foo():
    gevent.sleep(5)
    logger.info('fThread id main = %s' % threading.current_thread().ident)

if __name__ == "__main__":
    logger.info('mThread id main = %s' % threading.current_thread().ident)

    gevent.joinall([
        gevent.spawn(goo),
        gevent.spawn(foo)
    ])

'''
2019-07-18 10:08:53,700 - [main.py:174] - INFO mThread id main = 140337642030344
2019-07-18 10:08:58,704 - [main.py:171] - INFO fThread id main = 140337584272200
2019-07-18 10:09:03,704 - [main.py:167] - INFO gThread id main = 140337584271944
'''
```