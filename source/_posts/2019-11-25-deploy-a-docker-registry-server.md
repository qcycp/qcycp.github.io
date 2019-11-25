---
title: Deploy a docker registry server
abbrlink: 410ebdbd
date: 2019-11-25 17:19:29
categories: [Software, Docker]
tags:
- docker
- ubuntu
- 安裝
description: 建立Private Docker倉庫
---

# pull registry image
```bash
version: '3'

services:
  registry:
    restart: always
    image: registry:2
    container_name: registry
    ports:
      - 5000:5000
    volumes:
      - /etc/timezone:/etc/timezone:ro
      - /etc/localtime:/etc/localtime:ro
      - /opt/docker-software/registry:/var/lib/registry
```

# push/pull images
image push前必須先tag
```bash
$ docker tag myimage host:5000/myimage:1.0.0
$ docker push host:5000/myimage:1.0.0
$ docker pull host:5000/myimage

$ docker image remove host:5000/myimage
```

# client-side docker settings
```bash
$ sudo vim /etc/docker/daemon.json
{
  "live-restore": true,
  "group": "dockerroot",
  "insecure-registries": ["host:5000"]
}
$ sudo service docker restart
```

# get image list from docker registry
```bash
$ curl -X GET http://10.36.94.120:5000/v2/_catalog | jq
{
  "repositories": [
    "ubuntu_python"
  ]
}

$ curl -X GET http://10.36.94.120:5000/v2/ubuntu_python/tags/list | jq
{
  "name": "ubuntu_python",
  "tags": [
    "1.0.0"
  ]
}
```

# GUI tool via docker image
```bash
$ docker run -d -p 8080:8080 --name registry-web -e REGISTRY_URL=http://host:5000/v2 hyper/docker-registry-web
```