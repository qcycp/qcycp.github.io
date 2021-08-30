---
title: gevent_spawn
abbrlink: 9d8d8ccf
date: 2021-08-26 09:36:25
categories:
tags:
---
```
spawns = []
for i in range(GEVENT_NUM):
    spawns.append(gevent.spawn(do_something, i))
gevent.joinall(spawns)
```

```
gevent.joinall([
    gevent.spawn(foo, 1),
    gevent.spawn(goo, 2)
])
```