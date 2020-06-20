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