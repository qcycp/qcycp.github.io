---
title: docker commands
abbrlink: 374b29bd
date: 2020-02-27 10:43:34
categories: [Software, Docker]
tags:
- docker
---
* How to Keep Docker Containers Running
add following command at end of Dockerfile
```
CMD tail -f /dev/null
```

* There is an experimental build flag --squash to summarize everything into one layer.
For example, `docker build --squash -t <tag> .`

* How to enable experimental features in the daemon?
edit /etc/docker/daemon.json configuration file:
```
{
    "experimental": true
}
```

* Check experimental status
```
$ docker version -f '{{.Server.Experimental}}'
true
```

### container data
* docker的資料在本機端會存在/var/lib/docker
* 每個container的資料會在/var/lib/docker/containers裡
* 每個container的log會存在/var/lib/docker/containers/hash/hash-json.log

### image size and Dockerfile
[Refactoring a Dockerfile for image size](https://blog.replicated.com/refactoring-a-dockerfile-for-image-size/)
1. 每一個RUN都會產生一個Layer
2. 多個指令分成多個Layer來執行，比起多個指令在同一個Layer執行，所佔的空間要大
3. install package跟remove package如果在不同Layer執行，image size並不會變小，必須要在同一個Layer內執行，remove package才能縮減image size

### commands
$ docker exec -i hh_mysql /usr/bin/mysql -u root -p1234 <<< 'use kangaroo;show tables;'
$ docker exec -i hh_mysql /usr/bin/mysql -u root -p1234 -e 'use kangaroo;show tables;'