---
title: tmp_Docker_docker-compose.xml
tags:
---
docker log設定
===
[為 Docker 容器設置日誌輪替 /| Boatswain 部落格](https://blog.boatswain.io/zh/post/docker-container-log-rotation/)  

```yml
version: '3'

services:
    wrapper:
      container_name: hh_wrapper
      restart: always
      build: .\deploy\wrapper
      ports:
        - 5000:5000
        - 9160:9001
      logging:
        driver: "json-file"
        options:
          max-size: "100m"
          max-file: "10"
      environment:
        - NUCLEUS_WS=ws:\\10.60.7.77:9010\ws
        - BACKEND_SERVER=http:\\10.60.7.78:8857
        - REDIS_HOST=10.60.7.78
      command: gunicorn -w 1 -k gevent -b :5000 main:app
```