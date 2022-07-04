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