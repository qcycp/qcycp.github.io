---
title: docker-compose.yml for GitLab
abbrlink: cb549ab5
date: 2019-12-02 11:05:17
categories: [Software, GitLab]
tags:
- GitLab
- Docker
---
```yml
version: '3' 

services:
  gitlab:
    image: gitlab/gitlab-ce:latest
    hostname: 192.168.56.5
    container_name: gitlab
    restart: always
    volumes:
      - /etc/timezone:/etc/timezone:ro
      - /etc/localtime:/etc/localtime:ro
      - /opt/docker-software/gitlab/config:/etc/gitlab
      - /opt/docker-software/gitlab/logs:/var/log/gitlab
      - /opt/docker-software/gitlab/data:/var/opt/gitlab
    ports:
      - 443:443
      - 80:80
      - 22:22
```