---
title: Deploy a docker registry server
abbrlink: 410ebdbd
date: 2019-11-25 17:19:29
categories: [Software, Docker]
tags:
- docker
- ubuntu
- 安裝
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
    environment:
      - REGISTRY_STORAGE_DELETE_ENABLED="true"
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
error message when push images to registry server
```bash
The push refers to repository [host:5000/myimage]
Get https://host:5000/v2/: http: server gave HTTP response to HTTPS client
```
* Insecure Registries
If this registry is insecure and doesn't hide behing SSL certificates then you will need to configure your Docker client to allow pushing to this insecure registry.
Edit or you may even need to create the following file on your Linux server:
```bash
/etc/docker/daemon.json
```
And save the following content:
```bash
{
  "insecure-registries": ["host:5000"]
}
```
You will need to restart your Docker service before these changes will take effect.
```bash
$ sudo service docker restart
```

# get image list from docker registry
```bash
$ curl -X GET http://host:5000/v2/_catalog | jq
{
  "repositories": [
    "myimage"
  ]
}

$ curl -X GET http://host:5000/v2/<myimage>/tags/list | jq
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

# delete images in registry server
1. delete using registry REST API
* REGISTRY_STORAGE_DELETE_ENABLED必須設定為true，DELETE API才支援
* DELETE API僅會刪除link資料，影響API查詢的結果，但實際上的layer data還是存在，必須再執行garbage-collect才能刪除
* 一定要設定header的Accept為application/vnd.docker.distribution.manifest.v2+json，收到的Content才會是對的
```bash
$ curl -I -H "Accept: application/vnd.docker.distribution.manifest.v2+json" http://host:5000/v2/<myimage>/manifests/<tag>
HTTP/1.1 200 OK
Content-Length: 1362
Content-Type: application/vnd.docker.distribution.manifest.v2+json
Docker-Content-Digest: sha256:7185dc9a13a5178f5d33654ebe5cf5982e51c9bfff0b1e227e3735dffffe7226
Docker-Distribution-Api-Version: registry/2.0
Etag: "sha256:7185dc9a13a5178f5d33654ebe5cf5982e51c9bfff0b1e227e3735dffffe7226"
X-Content-Type-Options: nosniff
Date: Tue, 26 Nov 2019 13:47:34 GMT

$ curl -v -X DELETE http://host:5000/v2/<myimage>/manifests/sha256:7185dc9a13a5178f5d33654ebe5cf5982e51c9bfff0b1e227e3735dffffe7226
$ docker exec -it registry registry garbage-collect /etc/docker/registry/config.yml
$ docker restart registry
```
2. delete in the file system
```bash
$ docker exec -it registry sh
/ # export NAME="<myimage>"
/ # export VERSION="<tag>"
/ # cd /var/lib/registry/docker/registry/v2
/var/lib/registry/docker/registry/v2 # find . | grep `ls ./repositories/$NAME/_manifests/tags/$VERSION/index/sha256`| xargs rm -rf $1
/var/lib/registry/docker/registry/v2 # rm -rf ./repositories/$NAME/_manifests/tags/$VERSION
/var/lib/registry/docker/registry/v2 # registry garbage-collect /etc/docker/registry/config.yml
/ # exit
$ docker restart registry
```

# Cleaning up the Registry
When you delete an image from the registry, this won't actually remove the blob layers as you might expect. For this reason you have to run this command on your docker registry host to perform garbage collection:
```bash
docker exec -it registry registry garbage-collect /etc/docker/registry/config.yml
```
And if you wanted to make a cron job that runs every 30 mins:
```bash
0,30 * * * * docker exec -it registry registry garbage-collect /etc/docker/registry/config.yml >> /dev/null 2>&1
```

# GUI tool via docker image
```bash
$ docker run -d -p 8080:8080 --name registry-web -e REGISTRY_URL=http://host:5000/v2 hyper/docker-registry-web
```
* by docker-compose.yml
```bash
version: '3'

services:
  registry-web:
    restart: always
    image: hyper/docker-registry-web
    container_name: registry-web
    ports:
      - 8080:8080
    volumes:
      - /etc/timezone:/etc/timezone:ro
      - /etc/localtime:/etc/localtime:ro
    environment:
      - REGISTRY_URL=http://host:5000/v2
```