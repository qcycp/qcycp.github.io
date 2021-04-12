---
title: disable_ipv6_on_centos7
abbrlink: 961c40eb
date: 2021-01-21 16:27:43
categories: System
tags:
- Linux
---
```
# ifconfig enp0s8
enp0s8: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.56.11  netmask 255.255.255.0  broadcast 192.168.56.255
        inet6 fe80::a00:27ff:fe16:8ac8  prefixlen 64  scopeid 0x20<link>
        ether 08:00:27:16:8a:c8  txqueuelen 1000  (Ethernet)
        RX packets 303  bytes 27759 (27.1 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 189  bytes 33691 (32.9 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

# echo "net.ipv6.conf.all.disable_ipv6 = 1" >> /etc/sysctl.conf
# echo "net.ipv6.conf.default.disable_ipv6 = 1" >> /etc/sysctl.conf
# sysctl -p
net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
# service network restart
Restarting network (via systemctl):                        [  OK  ]
# ifconfig enp0s8
enp0s8: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.56.11  netmask 255.255.255.0  broadcast 192.168.56.255
        ether 08:00:27:16:8a:c8  txqueuelen 1000  (Ethernet)
        RX packets 467  bytes 42663 (41.6 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 302  bytes 60043 (58.6 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
```