---
title: Add Secondary IP in Network Interface Config for CentOS
abbrlink: 9c6ed8e8
date: 2021-01-19 14:04:02
categories: System
tags:
- Linux
---
* network interface information
```
# cat ifcfg-enp97s0f0
TYPE=Ethernet
PROXY_METHOD=none
BROWSER_ONLY=no
BOOTPROTO=dhcp
DEFROUTE=yes
IPV4_FAILURE_FATAL=no
IPV6INIT=yes
IPV6_AUTOCONF=yes
IPV6_DEFROUTE=yes
IPV6_FAILURE_FATAL=no
IPV6_ADDR_GEN_MODE=stable-privacy
NAME=enp97s0f0
UUID=1bb41bf3-dc2c-448b-92dd-44f7059c056a
DEVICE=enp97s0f0
ONBOOT=no
# ip a | grep enp
6: enp97s0f0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq state DOWN qlen 1000
```
* 新增 ip
```
# cat ifcfg-enp97s0f0
TYPE=Ethernet
PROXY_METHOD=none
BROWSER_ONLY=no
BOOTPROTO=static
IPADDR="192.168.56.100"
DEFROUTE=yes
IPV4_FAILURE_FATAL=no
IPV6INIT=yes
IPV6_AUTOCONF=yes
IPV6_DEFROUTE=yes
IPV6_FAILURE_FATAL=no
IPV6_ADDR_GEN_MODE=stable-privacy
NAME=enp97s0f0
UUID=1bb41bf3-dc2c-448b-92dd-44f7059c056a
DEVICE=enp97s0f0
ONBOOT=no
# service network restart
Restarting network (via systemctl):                        [  OK  ]
# ip a | grep enp
6: enp97s0f0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq state DOWN qlen 1000
    inet 192.168.56.100/24 brd 192.168.56.255 scope global enp97s0f0
```
* 更名
```
# cat ifcfg-enp97s0f0
TYPE=Ethernet
PROXY_METHOD=none
BROWSER_ONLY=no
BOOTPROTO=static
IPADDR="192.168.56.100"
DEFROUTE=yes
IPV4_FAILURE_FATAL=no
IPV6INIT=yes
IPV6_AUTOCONF=yes
IPV6_DEFROUTE=yes
IPV6_FAILURE_FATAL=no
IPV6_ADDR_GEN_MODE=stable-privacy
NAME=enp97s0f0:NgC
UUID=1bb41bf3-dc2c-448b-92dd-44f7059c056a
DEVICE=enp97s0f0:NgC
ONBOOT=no
# service network restart
Restarting network (via systemctl):                        [  OK  ]
# ip a | grep enp
6: enp97s0f0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq state DOWN qlen 1000
    inet 192.168.56.100/24 brd 192.168.56.255 scope global enp97s0f0:NgC
```
* 新增多組 ip
```
# cat ifcfg-enp97s0f0
TYPE=Ethernet
PROXY_METHOD=none
BROWSER_ONLY=no
BOOTPROTO=static
IPADDR0="192.168.56.100"
IPADDR1="192.168.56.101"
#GATEWAY1="192.168.56.1"
#NETMASK1="255.255.255.0"
DEFROUTE=yes
IPV4_FAILURE_FATAL=no
IPV6INIT=yes
IPV6_AUTOCONF=yes
IPV6_DEFROUTE=yes
IPV6_FAILURE_FATAL=no
IPV6_ADDR_GEN_MODE=stable-privacy
NAME=enp97s0f0
UUID=1bb41bf3-dc2c-448b-92dd-44f7059c056a
DEVICE=enp97s0f0
ONBOOT=no
# service network restart
Restarting network (via systemctl):                        [  OK  ]
# ip a
6: enp97s0f0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq state DOWN qlen 1000
    inet 192.168.56.100/24 brd 192.168.56.255 scope global enp97s0f0
    inet 192.168.56.101/24 brd 192.168.56.255 scope global secondary enp97s0f0
```
* duplicate 多份 network interface config
```
# ls
ifcfg-enp97s0f0
ifcfg-enp97s0f0:NgC
ifcfg-enp97s0f0:NgU
# cat ifcfg-enp97s0f0:NgC
TYPE=Ethernet
PROXY_METHOD=none
BROWSER_ONLY=no
BOOTPROTO=static
IPADDR="192.168.56.100"
DEFROUTE=yes
IPV4_FAILURE_FATAL=no
IPV6INIT=yes
IPV6_AUTOCONF=yes
IPV6_DEFROUTE=yes
IPV6_FAILURE_FATAL=no
IPV6_ADDR_GEN_MODE=stable-privacy
NAME=enp97s0f0:NgC
UUID=1bb41bf3-dc2c-448b-92dd-44f7059c056a
DEVICE=enp97s0f0:NgC
ONBOOT=no
# cat ifcfg-enp97s0f0:NgU
TYPE=Ethernet
PROXY_METHOD=none
BROWSER_ONLY=no
BOOTPROTO=static
IPADDR="192.168.56.101"
DEFROUTE=yes
IPV4_FAILURE_FATAL=no
IPV6INIT=yes
IPV6_AUTOCONF=yes
IPV6_DEFROUTE=yes
IPV6_FAILURE_FATAL=no
IPV6_ADDR_GEN_MODE=stable-privacy
NAME=enp97s0f0:NgU
UUID=1bb41bf3-dc2c-448b-92dd-44f7059c056a
DEVICE=enp97s0f0:NgU
ONBOOT=no
# ip a
6: enp97s0f0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq state DOWN qlen 1000
    inet 192.168.56.100/24 brd 192.168.56.255 scope global enp97s0f0:NgC
    inet 192.168.56.101/24 brd 192.168.56.255 scope global secondary enp97s0f0:NgU
```
* Reference
https://www.opencli.com/linux/centos-7-add-multiple-ip-addresses
https://ma.ttias.be/how-to-add-secondary-ip-alias-on-network-interface-in-rhel-centos-7/