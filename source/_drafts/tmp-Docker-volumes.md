---
title: tmp_Docker_volumes
tags:
---
docker volumes
===
把source code直接掛到docker內，這樣要修改code之後，直接restart docker container就可以看到結果     
```xml
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
    volumes:
      - \home\nick\data\git\develop\wrapper\wrapper:\app\wrapper
    environment:
      - NUCLEUS_WS=ws:\\10.60.7.77:9010\ws
      - BACKEND_SERVER=http:\\10.60.7.78:8857
      - REDIS_HOST=10.60.7.78
    command: gunicorn -w 1 -k gevent -b :5000 main:app
```