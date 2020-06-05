---
title: gitlab建置CI/CD流程
abbrlink: d96b0415
date: 2019-12-02 15:34:12
categories: [Software, gitlab]
tags:
- gitlab
- cicd
---

#### 建立gitlab-runner
```yml
version: '3'

services:
  gitlab-runner:
    restart: always
    image: gitlab/gitlab-runner:latest
    container_name: gitlab-runner
    volumes:
      - /etc/timezone:/etc/timezone:ro
      - /etc/localtime:/etc/localtime:ro
      - /var/run/docker.sock:/var/run/docker.sock
      - /opt/docker-software/gitlab-runner/config:/etc/gitlab-runner
```

#### 註冊runner
```sh
$ docker exec -it gitlab-runner gitlab-runner register
Runtime platform                                    arch=amd64 os=linux pid=165 revision=577f813d version=12.5.0
Running in system-mode.                            
                                                   
Please enter the gitlab-ci coordinator URL (e.g. https://gitlab.com/):
http://192.168.56.5/
Please enter the gitlab-ci token for this runner:
zS9KDv5_puTCKS32UbyM
Please enter the gitlab-ci description for this runner:
[c420481843b4]: test-runner
Please enter the gitlab-ci tags for this runner (comma separated):
docker
Registering runner... succeeded                     runner=zS9KDv5_
Please enter the executor: shell, ssh, virtualbox, docker-ssh+machine, kubernetes, custom, docker-ssh, parallels, docker, docker+machine:
docker
Please enter the default Docker image (e.g. ruby:2.6): #當.gitlab-ci.yml沒有指定image時，預設要用哪個docker image
docker:19.03.5
Runner registered successfully. Feel free to start it, but if it's running already the config should be automatically reloaded!
```
1. Please enter the gitlab-ci coordinator URL
輸入gitlab網站的URL
2. Please enter the gitlab-ci token for this runner
在gitlab CI/CD settings中，Specific/Shared Runners的identification
3. Please enter the gitlab-ci description for this runner
指定runner的名稱
4. Please enter the gitlab-ci tags for this runner
指定此runner的tag，在.gitlab-ci.yml中，必須指定對應的tag，才能使用此runner

#### docker image release page
https://github.com/docker/docker-ce/releases

#### 完成之後，config.toml內容如下
```sh
$ cat /opt/docker-software/gitlab-runner/config/config.toml
concurrent = 1
check_interval = 0

[session_server]
  session_timeout = 1800

[[runners]]
  name = "test-runner"
  url = "http://192.168.56.5/"
  token = "zS9KDv5_puTCKS32UbyM"
  executor = "docker"
  [runners.custom_build_dir]
  [runners.docker]
    tls_verify = false
    image = "docker:19.03.5"
    privileged = false
    disable_entrypoint_overwrite = false
    oom_kill_disable = false
    disable_cache = false
    volumes = ["/cache"]
    shm_size = 0
  [runners.cache]
    [runners.cache.s3]
    [runners.cache.gcs]
```

#### remove Runner
```sh
$ docker exec -it gitlab-runner gitlab-runner unregister --all-runners
$ docker exec -it gitlab-runner gitlab-runner unregister -n test-runner
```

#### Trouble Shooting
1. Cannot connect to the Docker daemon at tcp://docker:2375. Is the docker daemon running?
`method 1`
```
$ vim .gitlab-ci.yml
variables:
  DOCKER_TLS_CERTDIR: ""
```
`method 2`
```
$ vim config.toml
[[runners]]
  environment = ["DOCKER_TLS_CERTDIR="]
```

2. Cannot connect to the Docker daemon at unix:///var/run/docker.sock. Is the docker daemon running?
執行docker:dind，gitlab-runner config.toml中的privileged要設定為true，否則會有error

3. docker image download failed
```
Step 1/13 : FROM 10.36.94.120:50000/kaluta:1.0.0
Get https://10.36.94.120:50000/v2/: http: server gave HTTP response to HTTPS client
```
在gitlab-runner config.toml中的volume要加入/etc/docker/daemon.json的設定
volumes = ["/cache", "/etc/docker/daemon.json:/etc/docker/daemon.json"]

4. /bin/sh: eval: line 87: docker-compose: not found
```
$ vim .gitlab-ci.yml
build:
  stage: build
  before_script:
    - apk add --update libffi-dev openssl-dev py-pip python python-dev build-base
    - pip install docker-compose
```

#### final config.toml
```sh
$ cat /opt/docker-software/gitlab-runner/config/config.toml
concurrent = 1
check_interval = 0

[session_server]
  session_timeout = 1800

[[runners]]
  name = "test-runner"
  url = "http://192.168.56.5/"
  token = "zS9KDv5_puTCKS32UbyM"
  executor = "docker"
  [runners.custom_build_dir]
  [runners.docker]
    tls_verify = false
    image = "docker:19.03.5"
    privileged = true
    disable_entrypoint_overwrite = false
    oom_kill_disable = false
    disable_cache = false
    volumes = ["/cache", "/etc/docker/daemon.json:/etc/docker/daemon.json"]
    shm_size = 0
  [runners.cache]
    [runners.cache.s3]
    [runners.cache.gcs]
```

#### 建立Base image
```
FROM docker:19.03.5

ADD daemon.json /etc/docker/daemon.json
RUN apk add --update libffi-dev openssl-dev py-pip python python-dev build-base rsync git xz sshpass openssh-client && \
    pip install docker-compose
```

1. 在.gitlab-ci.yml中可以直接使用這個base image `image: 10.36.94.120:50000/docker:19.03.5`，這樣可以省略安裝package的步驟
2. 在config.toml中可以不用設定volumes: "/etc/docker/daemon.json:/etc/docker/daemon.json"

#### Note
1. GitLab 的 build 都是在 Docker 上執行的，因此一開始會需要定義 image 名稱，而它將會成為下面執行 build 的環境
2. artifacts 會把裡面編譯或程式的產出物存放起來，提供介面給其他需要的人使用
3. dependencies 設定意思是指，test job 要取用 build job 的 artifacts，每個 job 都是獨立的 container ，互不相關，因此要靠這些設定來傳遞 artifacts
4. image 和 service 雖然有全域定義，但也能 job 各自定義
5. services:
   - docker:dind
   用 docker run 啟動 docker:dind 並把上面定義的 image 起的容器連結至 docker:dind