---
title: Setup a file server quickly
abbrlink: dbaaf77f
date: 2020-04-30 10:00:37
categories: Linux
tags:
- 教學
- linux
- nodejs
---
透過nodejs，在ubuntu中快速建立一個File server
```
$ sudo apt install nodejs
$ sudo apt install npm
$ sudo npm install http-server -g
$ http-server
Starting up http-server, serving ./
Available on:
  http://127.0.0.1:8080
  http://10.0.2.15:8080
  http://192.168.96.4:8080
Hit CTRL-C to stop the server

```