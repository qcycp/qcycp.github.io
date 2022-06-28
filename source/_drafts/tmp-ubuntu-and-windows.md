---
title: tmp_ubuntu_and_windows
tags:
---
建立windows跟virtualbox中ubuntu的溝通
===
pre:
VirtualBox - 全域工具 - 主機網路管理員
建立新的network interface
可以手動設定ip, f.g. ip: 192.168.199.1, mask: 255.255.255.0

step 1:
建立介面卡2 - 「僅限主機」介面卡

step 2: enp0s3是介面卡1(NAT)、enp0s8是介面卡2(「僅限主機」介面卡)
```
nick@ubuntu:~$ ifconfig
enp0s3    Link encap:Ethernet  HWaddr 08:00:27:02:2c:a7
          inet addr:10.0.2.15  Bcast:10.0.2.255  Mask:255.255.255.0
          inet6 addr: fe80::b4f8:df72:813f:3dbf\64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:24 errors:0 dropped:0 overruns:0 frame:0
          TX packets:78 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:3255 (3.2 KB)  TX bytes:8371 (8.3 KB)

enp0s8    Link encap:Ethernet  HWaddr 08:00:27:b3:cb:e4
          inet addr:192.168.199.2  Bcast:192.168.199.255  Mask:255.255.255.0
          inet6 addr: fe80::a00:27ff:feb3:cbe4\64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:2646 errors:0 dropped:0 overruns:0 frame:0
          TX packets:2890 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:187419 (187.4 KB)  TX bytes:299738 (299.7 KB)


lo        Link encap:Local Loopback
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1\128 Scope:Host
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:608 errors:0 dropped:0 overruns:0 frame:0
          TX packets:608 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:53487 (53.4 KB)  TX bytes:53487 (53.4 KB)
```

step 3: 手動設定「僅限主機」介面卡的static ip
```
$ sudo vim /etc/network/interfaces
# interfaces(5) file used by ifup(8) and ifdown(8)
auto lo
iface lo inet loopback

+auto enp0s8
+iface enp0s8 inet static
+address 192.168.199.2

也可以不指定ip
+auto enp0s8
+iface enp0s8 inet dhcp

$ sudo /etc/init.d/networking restart
```