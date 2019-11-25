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
$ docker image remove host:5000/myimage:1.0.0 # remove the locally-cached host:5000/myimage:1.0.0
$ docker pull host:5000/myimage:1.0.0
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
    "myimage"
  ]
}

$ curl -X GET http://10.36.94.120:5000/v2/<myimage>/tags/list | jq
{
  "name": "myimage",
  "tags": [
    "1.0.0",
    "1.1.0",
    "1.2.0",
    "1.3.0"
  ]
}
```

# delete images on registry server
1. delete using registry REST API
```bash
$ curl -i -X GET http://host:5000/v2/<myimage>/manifests/<tag>
HTTP/1.1 200 OK
Content-Length: 7106
Content-Type: application/vnd.docker.distribution.manifest.v1+prettyjws
Docker-Content-Digest: sha256:9fe9e9855c395d6cc4c3a27c99ba865c676f807097dd9cd423cc4794d97d12ad
Docker-Distribution-Api-Version: registry/2.0
Etag: "sha256:9fe9e9855c395d6cc4c3a27c99ba865c676f807097dd9cd423cc4794d97d12ad"
X-Content-Type-Options: nosniff
Date: Mon, 25 Nov 2019 10:52:54 GMT

{
   "schemaVersion": 1,
   "name": "myimage",
   "tag": "1.3.0",
...
}

$ curl -v -X DELETE http://host:5000/v2/<myimage>/manifests/sha256:9fe9e9855c395d6cc4c3a27c99ba865c676f807097dd9cd423cc4794d97d12ad
```
2. delete in the file system
```bash
$ docker exec -it registry sh
/ # export NAME="<myimage>"
/ # export VERSION="<tag>"
/ # cd /var/lib/registry/docker/registry/v2
/var/lib/registry/docker/registry/v2 # find . | grep `ls ./repositories/$NAME/_manifests/tags/$VERSION/index/sha256`| xargs rm -rf $1
/var/lib/registry/docker/registry/v2 # rm -rf ./repositories/$NAME/_manifests/tags/$VERSION
/var/lib/registry/docker/registry/v2 # registry garbage-collect  /etc/docker/registry/config.yml
/ # exit
$ docker restart registry
```

# GUI tool via docker image
```bash
$ docker run -d -p 8080:8080 --name registry-web -e REGISTRY_URL=http://host:5000/v2 hyper/docker-registry-web
```