---
title: ping and nc in python
abbrlink: dfaf3d8a
date: 2020-06-05 17:36:17
categories: [Programming, python]
tags:
- python
---
linux與windows中，ping的參數不一樣
* the ping will stop afer 1 package is replied
  * in linux
`-c`
  * in windows
`-n`
* timeout
  * in linux
`-W` 單位為秒
  * in windows
`-w` 單位為毫秒

* ping
```python
import subprocess

def ping(ip):
    ping = subprocess.call(["ping", "-c", "1", ip])
    if ping == 0:
        print("ping to " + ip + " OK")
    elif ping == 2:
        print("no response from " + ip)
    else:
        print("ping to " + ip + " failed")
```
* netcat
```python
import socket

def netcat(ip, port):
    try:
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.connect((ip, int(port)))
        s.shutdown(socket.SHUT_WR)
        s.close()
        print(ip + ":" + str(port) + " can be connected")
    except ConnectionRefusedError:
        print(ip + ":" + str(port) + " cannot be connected")
```