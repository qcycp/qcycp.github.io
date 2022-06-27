---
title: tmp_NGinx_port_forward
tags:
---
NGinx forward websocket from 80 to websocket port
===

[NGinx forward websocket from 80 to websocket port - Stack Overflow](https://stackoverflow.com/questions/42491668/nginx-forward-websocket-from-80-to-websocket-port)

nginx.conf settings  
```xml
server {

    listen 80;

    location / {
        root   /usr/share/nginx/html;
        index  index.html index.htm;
    }

    location /ws {
        proxy_pass http://localhost:8889;
        # this magic is needed for WebSocket
        proxy_http_version  1.1;
        proxy_set_header    Upgrade $http_upgrade;
        proxy_set_header    Connection "upgrade";
        proxy_set_header    Host $http_host;
        proxy_set_header    X-Real-IP $remote_addr;
    }
}
```