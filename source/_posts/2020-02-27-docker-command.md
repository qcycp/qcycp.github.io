---
title: docker commands
abbrlink: 374b29bd
date: 2020-02-27 10:43:34
categories: [Software, Docker]
tags:
- docker
---
* How to Keep Docker Containers Running
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