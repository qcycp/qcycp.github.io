---
title: How to use redis in docker
abbrlink: 787ab444
date: 2019-12-13 08:59:15
categories: [Software, redis]
tags:
- redis
- docker
---
1. in Dockerfile
```
FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install --no-install-recommends -y redis-server
```

2. in supervisord.conf
```
[program:redis-server]
command=redis-server
autorestart=true

stdout_logfile_maxbytes = 0
stdout_logfile = /dev/stdout
stderr_logfile_maxbytes = 0
stderr_logfile = /dev/stderr
```