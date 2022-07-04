把source code直接掛到docker內，這樣要修改code之後，直接restart docker container就可以看到結果     

```yml
version: '3'

services:

  kangaroo:
    image: deploy_kangaroo:A1.0.0.abcdefg
    container_name: hh_kangaroo
    restart: always
    build: .
    ports:
      - 5000:5000
      - 9160:9001
    depends_on:
      - db
      - redis
    logging:
      driver: "json-file"
      options:
        max-size: "100m"
        max-file: "10"
    volumes:
      - /etc/timezone:/etc/timezone:ro
      - /etc/localtime:/etc/localtime:ro
      - /opt/docker-software/kangaroo:/app/data
    environment:
      - NUCLEUS_WS=ws://10.60.7.77:9010/ws
      - BACKEND_SERVER=http://10.60.7.78:8857
      - REDIS_HOST=10.60.7.78
      - PYTHONUNBUFFERED=1
    command: '/usr/bin/supervisord'

  db:
    image: mysql:5.7.21
    ports:
      - 3306:3306
    volumes:
      - /opt/docker-software/mysql:/var/lib/mysql
    environment:
        MYSQL_ROOT_PASSWORD: 1234
        MYSQL_USER: user
        MYSQL_PASSWORD: 1234
    restart: always
    container_name: hh_mysql

  redis:
    image: "redis"
    ports:
      - 6379:6379
    volumes:
      - /opt/docker-software/redis/6379:/data
    restart: always
    container_name: hh_redis
```

默認情況下容器的 stdout 和 stderr 會被寫入到 /var/lib/docker/containers/[container-id]/[container-id]-json.log 的 json 文件