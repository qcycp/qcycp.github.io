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

# trouble shooting
error message then push images to registry server
```bash
The push refers to repository [host:5000/myimage]
Get https://10.36.94.120:5000/v2/: http: server gave HTTP response to HTTPS client
```
by default，registry server必須支援TLS憑證
若沒有設定TLS憑證，則必須要在client端的docker配置中，加入以下設定
```bash
$ sudo vim /etc/docker/daemon.json
{
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