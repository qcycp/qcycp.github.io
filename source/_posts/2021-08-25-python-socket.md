---
title: python socket server
abbrlink: a7a9482c
date: 2021-08-25 18:12:47
categories:
tags:
---
```python
#!/usr/bin/env python3
import socket

serv = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serv.bind(('0.0.0.0', 9527))
serv.listen()

while True:
    conn, addr = serv.accept()
    print('Client from', addr)

    while True:
        data = conn.recv(1024)
        if not data: break
        conn.send(data)

    conn.close()
    print('Client disconnected')
```