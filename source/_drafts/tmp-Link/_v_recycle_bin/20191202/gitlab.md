```
version: '3' 

services:
  gitlab:
    image: gitlab/gitlab-ce:latest
    hostname: 192.168.56.4
    container_name: gitlab
    restart: always
    volumes:
      - /opt/docker-software/gitlab/config:/etc/gitlab
      - /opt/docker-software/gitlab/logs:/var/log/gitlab
      - /opt/docker-software/gitlab/data:/var/opt/gitlab
    ports:
      - 443:443
      - 80:80
      - 22:22
```