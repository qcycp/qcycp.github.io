```
FROM alpine:3.7

COPY kangaroo /app
WORKDIR /app

RUN apk update && \
#    apk add --no-cache --virtual=build-dependencies \
    apk add --no-cache --virtual=build-dependencies \
        g++ \
        python3-dev \
        # for mysqlclient
        mariadb-dev \
        build-base \
        libffi-dev \
        # Pillow dependencies
        jpeg-dev \
        zlib-dev \
        freetype-dev \
        lcms2-dev \
        openjpeg-dev \
        tiff-dev \
        tk-dev \
        tcl-dev \
        harfbuzz-dev \
        fribidi-dev && \
    apk add --no-cache \
        bash \
        python3 \
        nginx \
        supervisor \
        iputils && \
#    libffi openssl ca-certificates \
#    #linux-headers pcre-dev && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
#    if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi && \
    pip install --upgrade pip setuptools && \
    pip install -r /app/requirements.txt --no-cache-dir && \
#    apk del mariadb-dev python3-dev build-base && \
    apk del --purge build-dependencies && \
    rm -rf /root/.cache /tmp/*

COPY wait-for /usr/bin/wait-for

# Setup nginx
#RUN rm /etc/nginx/sites-enabled/default
COPY nginx/nginx.conf /etc/nginx/
COPY nginx/conf.d /etc/nginx/conf.d
RUN adduser -u 1000 -D -S -G www-data www-data
RUN ln -sf /dev/stdout /var/log/nginx/access.log && \
    ln -sf /dev/stderr /var/log/nginx/error.log

RUN echo "/usr/lib/x86_64-linux-gnu" > /etc/ld.so.conf
# Setup supervisord
RUN mkdir -p /var/log/supervisor
RUN apk add --no-cache libjpeg-turbo openjpeg tiff g++ mariadb-client-libs
COPY supervisord.conf /etc/supervisord.conf
```


```
version: '3' 

services:

    kangaroo:
        image: "deploy_kangaroo:test"
        build: .
        ports:
          - 8857:80
        depends_on:
          - redis
          - db
        logging:
          driver: "json-file"
          options:
            max-size: "50m"
            max-file: "10"
        volumes:
          - /opt/docker-software/kangaroo:/app/data
          - /etc/timezone:/etc/timezone:ro
          - /etc/localtime:/etc/localtime:ro
          - /home/user/kangaroo_alpine/kangaroo:/app
        restart: always
        container_name: hh_kangaroo
        environment:
          - PYTHONIOENCODING=utf-8
          - DB_HOST=db:3306
          - DB_DATABASE=kangaroo
          - DB_USERNAME=root
          - DB_PASSWORD=1234
          - DB_CHARSET=utf8mb4
          - PLATFORM=DOCKER
          - NUCLEUS_HOST=http://192.168.2.150:9090
          - FACE_PP_HOST=http://192.168.33.11
          - FACE_PP_LOGIN_USER=face@aptg.com.tw
          - FACE_PP_LOGIN_PASSWORD=123456
          - SYSTEM_TYPE=SMB
          - FACE_ENGINE_TYPE=FACEPP
#        command: sh -c 'wait-for db:3306 -- /usr/bin/supervisord -c /etc/supervisord.conf'
        command: '/usr/bin/supervisord -c /etc/supervisord.conf'

    redis:
        image: "redis"
        ports:
          - 6379:6379
        volumes:
          - /opt/docker-software/redis/6379:/data
        restart: always
        container_name: hh_redis

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

    admin:
        image: adminer
        ports:
          - 5005:8080
        restart: always
        container_name: hh_adminer
```