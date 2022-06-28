---
title: tmp_port_forward_on_VirtualBox
tags:
---
port forwarding on VirtualBox
===
[VirtualBox 設定 Port 轉發功能教學-以 SSH 和 HTTP 為例 \| PcSetting Blog](https://www.pcsetting.com/devtools/77)
on VirtualBox
enp0s3是NAT的node、enp0s8是「僅限主機」介面卡的node
```bash
user@vm-docker:~$ ifconfig
enp0s3    Link encap:Ethernet  HWaddr 08:00:27:ad:ed:89
          inet addr:10.0.2.15  Bcast:10.0.2.255  Mask:255.255.255.0
          inet6 addr: fe80::a00:27ff:fead:ed89/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:1675361 errors:0 dropped:0 overruns:0 frame:0
          TX packets:385491 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:1948996004 (1.9 GB)  TX bytes:27714086 (27.7 MB)

enp0s8    Link encap:Ethernet  HWaddr 08:00:27:60:82:04
          inet addr:192.168.56.3  Bcast:192.168.56.255  Mask:255.255.255.0
          inet6 addr: fe80::a00:27ff:fe60:8204/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:104355 errors:0 dropped:0 overruns:0 frame:0
          TX packets:81503 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:85412203 (85.4 MB)  TX bytes:171174220 (171.1 MB)
```
on Windows
```bash
D:\
$ ipconfig

Windows IP 設定


乙太網路卡 vEthernet (預設切換):

   連線特定 DNS 尾碼 . . . . . . . . :
   連結-本機 IPv6 位址 . . . . . . . : fe80::e4a6:7cde:29f7:ec35%11
   IPv4 位址 . . . . . . . . . . . . : 172.26.120.209
   子網路遮罩 . . . . . . . . . . . .: 255.255.255.240
   預設閘道 . . . . . . . . . . . . .:

乙太網路卡 vEthernet (nat):

   連線特定 DNS 尾碼 . . . . . . . . :
   連結-本機 IPv6 位址 . . . . . . . : fe80::3835:5a50:9c8c:c5f4%19
   IPv4 位址 . . . . . . . . . . . . : 172.21.160.1
   子網路遮罩 . . . . . . . . . . . .: 255.255.240.0
   預設閘道 . . . . . . . . . . . . .:

無線區域網路介面卡 Wi-Fi:

   連線特定 DNS 尾碼 . . . . . . . . : hc.cloudnsbg.efoxconn.com
   連結-本機 IPv6 位址 . . . . . . . : fe80::ad06:b440:8704:3ba2%22
   IPv4 位址 . . . . . . . . . . . . : 172.18.227.43
   子網路遮罩 . . . . . . . . . . . .: 255.255.255.0
   預設閘道 . . . . . . . . . . . . .: 172.18.227.254

無線區域網路介面卡 區域連線* 1:

   連線特定 DNS 尾碼 . . . . . . . . :
   連結-本機 IPv6 位址 . . . . . . . : fe80::dd2:9145:4240:7b4a%23
   IPv4 位址 . . . . . . . . . . . . : 192.168.137.1
   子網路遮罩 . . . . . . . . . . . .: 255.255.255.0
   預設閘道 . . . . . . . . . . . . .:
```
#### Step 1: 打開window的行動熱點
![b938bddf.png](:storage\3bb360ae-fea1-47bf-890d-e29ef4b47bb3\b938bddf.png)

#### Step 2: 將行動裝置連到windows分享出來的ssid
行動裝置的ip是192.168.137.*

#### Step 3: 設定port forwarding
for example, ubuntu中的server建立在port 9161上
=> 將ubuntu的10.0.2.15:9161映射到windows的192.168.137.1:9161上
![bb4c828c.png](:storage\3bb360ae-fea1-47bf-890d-e29ef4b47bb3\03dc7662.png)
![c2f04501.png](:storage\3bb360ae-fea1-47bf-890d-e29ef4b47bb3\c2f04501.png)

* 可以將ubuntu的10.0.2.15:9161映射到windows的127.0.0.1:9161上，這樣windows可以用127.0.0.1:9161進行連線，但是行動裝置會無法透過192.168.137.1:9161進行連線
* 可以將ubuntu的10.0.2.15:9161映射到windows的172.18.227.43:9161上，這樣windows或行動裝置都可以用172.18.227.43:9161進行連線

Result:
1. 因為原本就有設定「僅限主機」介面卡，所以在windows上，可以利用192.168.56.3:9161連到ubuntu內的server
2. 在設定port forwarding後，在windows上，可以使用192.168.137.1:9161連到ubuntu內的server
3. 在行動裝置上，無法使用192.168.56.3:9161連到ubuntu內的server，但可以使用192.168.137.1:9161進行連線



