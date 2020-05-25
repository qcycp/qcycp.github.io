---
title: 快速建立 Docker image
abbrlink: 6a707551
date: 2020-05-25 14:16:13
categories: [Software, Docker]
tags:
- docker
---
* Dockerfile
```
FROM python:3.6-alpine

RUN pip install --no-cache-dir docker
CMD tail -f /dev/null
```
* build & run
```sh
$ docker build --no-cache -t myimage .
$ docker images
REPOSITORY                  TAG                  IMAGE ID                  CREATED                  SIZE
myimage                     latest               2afb69df98d1              27 minutes ago           79MB
$ docker run -d --name mycontainer -v /var/run/docker.sock:/var/run/docker.sock myimage
$ docker ps -a
CONTAINER ID        IMAGE                  COMMAND                  CREATED                  STATUS                  PORTS                  NAMES
9a2daa815404        myimage                "/bin/sh -c 'tail -f…"   18 minutes ago           Up 18 minutes                                  mycontainer
```