---
title: python_udp_server
abbrlink: 1cc9d7a9
date: 2021-08-26 10:10:03
categories:
tags:
---
```
import threading
from gevent import socket

PORT1 = 5000
PORT2 = 12345

def udp_server1(host='0.0.0.0', port=PORT1):
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    print("Listening on udp %s:%s" % (host, port))
    s.bind((host, port))

    while True:
        (data, addr) = s.recvfrom(1024)
        if data:
            print("reveive %s from %s" % (data, addr))
    s.close()

def udp_server2(host='0.0.0.0', port=PORT2):
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    print("Listening on udp %s:%s" % (host, port))
    s.bind((host, port))

    while True:
        (data, addr) = s.recvfrom(1024)
        if data:
            print("reveive %s from %s" % (data, addr))
            sent = s.sendto(data, addr)
    s.close()

if __name__ == "__main__":
    a = threading.Thread(target=udp_server1, daemon=True, args=())
    b = threading.Thread(target=udp_server2, daemon=True, args=())
    a.start()
    b.start()
    a.join()
    b.join()
```