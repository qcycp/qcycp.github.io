---
title: Docker Notes
abbrlink: 374b29bd
date: 2020-02-27 10:43:34
categories: [Software, Docker]
tags:
- Docker
---
* How to keep docker container running
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

### Container data
* docker的資料會在HOST的/var/lib/docker目錄下
* 每個container的資料會在/var/lib/docker/containers裡
* 每個container的log會存在/var/lib/docker/containers/hash/hash-json.log
```sh
$ docker inspect --format='{{.LogPath}}' 847d0eb77dfe
/var/lib/docker/containers/847d0eb77dfe7169a68bd7e6c7cf37f0b237689714a91c3debecb162e7c6eccf/847d0eb77dfe7169a68bd7e6c7cf37f0b237689714a91c3debecb162e7c6eccf-json.log
```

### Image size and Dockerfile
[Refactoring a Dockerfile for image size](https://blog.replicated.com/refactoring-a-dockerfile-for-image-size/)
1. 每一個RUN指令都會產生一個Layer
2. 多個指令分成多個Layer來執行，比起多個指令在同一個Layer執行，所佔的空間要大
3. install package跟remove package如果在不同Layer執行，image size並不會變小，必須要在同一個Layer內執行，remove package才能縮減image size

### Commands
https://docs.docker.com/engine/reference/commandline/docker/
* display docker version and info
`docker --version`
`docker version`
`docker info`
* search docker image on docker-hub
`docker search dlib`
* list docker images
`docker images`
* list docker containers
`docker ps -a`
* build and run
`docker build --no-cache -t myimage .`
`docker run -d -p 1337:80 myimage`
`docker run -d --restart=always --name mycontainer -e PYTHONUNBUFFERED=0 -p 1337:80 myimage`
`docker run -d --restart=always --name mycontainer -e REMOTE_HOST_IP=172.18.71.12:8857 -p 1337:80 myimage`
可以使用update更新指令中的參數
`docker update --restart=always myimage`
* docker-compose
`docker-compose up`
`docker-compose up -d`
`docker-compose up -d service_name`
`docker-compose down`
`docker-compose images`
`docker-compose restart -d service_name`
`docker-compose -f tmp_docker-compose_ci.yml up -d`
* save docker image
`docker save myimage > myimage.tar`
`docker save -o myimage.tar myimage`
`docker save myimage | gzip > myimage.tgz`
`docker export myimage | gzip > myimage.tgz`
* load docker image
`docker load -i myimage.tar`
`gunzip -c myimage.tgz | docker load`
* container operations
`docker stop container_id`
`docker rm container_id`
`docker rm -f container_id`
`docker restart container_id`
* image operations
`docker tag source_image_name:tag target_image_name:tag`
`docker rmi target_image_name:tag`
`docker rmi image_id`
* show logs
`docker logs -f container_id`
* bash operations
`docker exec -it container_id bash`
`docker exec -i mysql /usr/bin/mysql -u root -p1234 <<< 'use dbname;show tables;'`
`docker exec -i mysql /usr/bin/mysql -u root -p1234 -e 'use dbname;show tables;'`
`docker exec -it mycontainer ls`
`docker exec -it mycontainer sh -c 'ls'`
* copy file from/to container
`docker cp nginx.conf mycontainer:/etc/nginx/conf.d/`
`docker cp mycontainer:/app/file /home/user/`
* docker container stats
`docker stats --no-stream`
```sh
$ docker stats --no-stream
CONTAINER ID        NAME                       CPU %               MEM USAGE / LIMIT     MEM %               NET I/O             BLOCK I/O           PIDS
b753136fd716        mycontainer                37.76%              144.7MiB / 1.953GiB   7.24%               107MB / 2.05MB      7.64MB / 0B         31
```
* get a shell on the host
`$ docker run --privileged --pid=host -it alpine:3.8 nsenter -t 1 -m -u -n -i sh`
* Links
[Container Namespaces](https://platform9.com/blog/container-namespaces-deep-dive-container-networking/)
* 清理系統
  * 刪除沒有 tag 的 image
```sh
$ docker image prune
WARNING! This will remove all dangling images.
Are you sure you want to continue? [y/N] y
Total reclaimed space: 0B
```
  * 刪除沒有 running container 參考到的 image
```sh
$ docker image prune --all
WARNING! This will remove all images without at least one container associated to them.
Are you sure you want to continue? [y/N] y
Deleted Images:
untagged: 10.36.94.120:50000/node:12.2.0-alpine
untagged: 10.36.94.120:50000/node@sha256:44833e4939cae1d429eaf303db96df2a7676114822e50c77ddcb888fc40d2e55
deleted: sha256:f391dabf9dce53bfc184823f18b7703db8dfead7f25e5b376865e690433bec78
deleted: sha256:336cfdd902c9e424a9ddf5d12f844ea7657bb93fff1ac480f2f58d03a0d61712
deleted: sha256:8e16b58e2279476d2b32eac06400116114fb9facbd8205409d2285e1bdcb7312

Total reclaimed space: 3.704GB
```
  * 刪除 image 及 container
```sh
$ docker system prune
WARNING! This will remove:
        - all stopped containers
        - all networks not used by at least one container
        - all dangling images
        - all dangling build cache
Are you sure you want to continue? [y/N] y
Total reclaimed space: 0B

$ docker system prune --all
WARNING! This will remove:
        - all stopped containers
        - all networks not used by at least one container
        - all images without at least one container associated to them
        - all build cache
Are you sure you want to continue? [y/N] y
Total reclaimed space: 0B
```
* Get information of docker system
```sh
$ docker system df
TYPE                TOTAL               ACTIVE              SIZE                RECLAIMABLE
Images              5                   5                   2.023GB             0B (0%)
Containers          5                   5                   3.54MB              0B (0%)
Local Volumes       3                   1                   1.66GB              30.44MB (1%)
Build Cache         0                   0                   0B                  0B
```
* Reference
https://peihsinsu.gitbooks.io/docker-note-book/content/dockerfile-env-vs-arg.html