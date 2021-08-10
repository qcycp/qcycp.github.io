---
title: ssh Tunnel
abbrlink: 85f67f4e
date: 2021-07-06 08:47:07
categories:
tags:
---
* Command
`ssh -N -L 9999:192.168.56.102:8080 user@192.168.56.11`
`ssh -N -L 0.0.0.0:9999:192.168.56.102:8080 user@192.168.56.11`
![](image01.png)
1. proxy server: user@192.168.56.11
2. remote server application: 192.168.56.102:8080
3. on local PC: You can access 192.168.56.102:8080 via user@192.168.56.11 on localhost http://localhost:9999

* reference
https://blog.rex-tsou.com/2017/10/%E5%88%A9%E7%94%A8-ssh-tunnel-%E5%81%9A%E8%B7%B3%E6%9D%BFaka.-%E7%BF%BB%E7%89%86/