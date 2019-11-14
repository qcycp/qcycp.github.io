---
title: Setup docker-compose
abbrlink: d3e1e91
date: 2019-11-10 00:48:26
categories: [Software, Docker]
tags: 
- docker
- ubuntu
- 安裝
description: 安裝docker-compose
---
Install docker-compose (1.22.0) on ubuntu
```sh
$ rm -rf /usr/local/bin/docker-compose
$ curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
$ chmod +x /usr/local/bin/docker-compose
$ docker-compose --version
docker-compose version 1.22.0, build f46880fe
```