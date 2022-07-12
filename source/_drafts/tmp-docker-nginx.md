---
title: tmp_docker_nginx
abbrlink: eda6db47
tags:
---
Docker - nginx
===
Dockerfile
```
FROM nginx:stable

RUN rm /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/
RUN rm /etc/nginx/conf.d/default.conf
COPY project.conf /etc/nginx/conf.d/

COPY ./static ./static
```
nginx.conf
```
# Define the user that will own and run the Nginx server
user nginx;

# Define the number of worker processes; recommended value is the number of# cores that are being used by your server
worker_processes 1;

# Define the location on the file system of the error log, plus the minimum# severity to log messages for
error_log /var/log/nginx/error.log warn;

# Define the file that will store the process ID of the main NGINX process
pid /var/run/nginx.pid;


# events block defines the parameters that affect connection processing.
events {
    # Define the maximum number of simultaneous connections that can be opened by a worker process
    worker_connections 1024;
}


# http block defines the parameters for how NGINX should handle HTTP web traffic
http {
    # Include the file defining the list of file types that are supported by NGINX
    include /etc/nginx/mime.types;

    # Define the default file type that is returned to the user
    default_type text/html;

    # Define the format of log messages.
    log_format main '$remote_addr - $remote_user [$time_local] "$request" '
                   '$status $body_bytes_sent "$http_referer" '
                   '"$http_user_agent" "$http_x_forwarded_for"';

    # Define the location of the log of access attempts to NGINX
    access_log /var/log/nginx/access.log main;

    # Define the parameters to optimize the delivery of static content
    sendfile on;
    tcp_nopush on;
    tcp_nodelay on;

    # Define the timeout value for keep-alive connections with the client
    keepalive_timeout 65;

    # Define the usage of the gzip compression algorithm to reduce the amount of data to transmit
    #gzip on;

    # Include additional parameters for virtual host(s)\server(s)
    include /etc/nginx/conf.d/*.conf;
}
```
project.conf
```
server {

listen 80;
server_name docker_flask_gunicorn_nginx;

location / {
    proxy_pass http://localhost:5000;

    # Do not change this
    proxy_set_header Host $host;
    proxy_set_header X-Real-IP $remote_addr;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
}

location /static {
        rewrite ^/static(.*) /$1 break;
        root /static;
    }
}
```