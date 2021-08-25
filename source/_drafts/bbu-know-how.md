---
title: bbu_know_how
abbrlink: 1779c7e4
tags:
---

ip plan for 506
172.18.73.13 BBU(cu/du)
172.18.73.14 jbd-5GC-N2
172.18.73.15 jbd-5GC-N3

172.18.73.16 fhk-5GC-N2
172.18.73.17 fhk-nms
172.18.73.18 fhk-UPF-N3

0. Initial FPGA N3000 => 這個只有重開機須要做一次，單純沒重開機重帶基站不用跑
1. 目前基站要帶起來前，rrh要先ready
2. 要跑cu前，5gc要先ready
3. ptp4l和phc2sys，這兩個要收斂到正負100內才可以開始帶l1+cu+du
4. L1帶起後要等到console跑出"Welcome to phy...."的才能繼續往下帶CU
5. 帶起cu的cosole log中如果出現"Socket Bind Failed"的訊息，代表cu和5gc連線失敗，要整個重帶
6. DU帶起來過一下子後，L1的cosole會開始繼續列印message
7. DU不能單獨重啟，l1也要重啟，DU才能跟著重啟

s1c/s1u 是 4g 的 eNB 到 4g 核心網(EPC)的連線
ngc/ngu 是 5g 的 gNB(BBU) 到 5g 核心網(5GC)的連線
x2c/x2u 是 NSA 的 BBU 之間的連線
xnc/xnu 是 SA 的 BBU 之間的連線

F1C local => f1cServerLocalIpAddress
F1U local => EP_F1U.localAddress.ip_addr
X2C server => x2cServerLocalIpAddress
XnC client local => xncClientLocalIpAddress
XnC client remote => nrNeighbourGnbIpAddr
XnU local => EP_XnU.localAddress.ip_addr
NgC local => EP-NgC.localAddress.ip_addr
NgC remote => EP-NgC.remoteAddress
NgU local => EP_NgU.localAddress.ip_addr
XnC server local => xncServerLocalIpAddress (是NSA mode用的)

F1C remote => no needed
F1U remote => no needed
XnU remote => no needed
NgU remote => no needed

```
JBD 5GC
<sNSSAI>50529801</sNSSAI>
 <sst>3</sst>
 <sd>198153</sd>

Polaris 5GC
<sNSSAI>16908288</sNSSAI>
 <sst>1</sst>
 <sd>131072</sd>

NEC 5GC
<sNSSAI>16908288</sNSSAI>
 <sst>1</sst>
 <sd>131072</sd>
```

AMC config
du.xml <featureSetBitMap>3</featureSetBitMap>
0: DL and UL AMC OFF
1: UL AMC OFF
2: DL AMC OFF
3: DL and UL AMC ON

in cu sys_config.txt
Ng-U:
```
[UPPER_FAST_PKT_CONFIG_0]
PCI_ADDRESS = 0000:12:00.1
IP_ADDR = 5.5.5.3   (需與xml Ng-U local IP 一樣)
#Supporting straight connection
DEST_ETH_ADDR = 3c:fd:fe:10:0e:c2 (UPF網孔的mac address)
```

F1-U:
```
[LOWER_FAST_PKT_CONFIG_0]
PCI_ADDRESS = 0000:12:00.1
IP_ADDR = 4.4.4.5 (需與xml F1-U local IP 一樣)
#Supporting straight connection
DEST_ETH_ADDR = 52:54:00:42:9a:e1 (DU F1-U網孔的mac address)
```

DTU layer_ul只支援1
IDU layer_ul可支援1/2

vf 0 vlan 2 up 61.02.0
vf 1 vlan 1 cp 61.02.1