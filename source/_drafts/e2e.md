---
title: e2e
abbrlink: 61f5117f
tags:
---

// DTU 連上5GC, 打流
VS: 10.60.6.202: root/123456
/************Terminal 6: VS iperf ******/
DL:
1. 
   iperf -c 192.168.119.101 -i 1 -b 200m -t 99999 -p 5008 -u (v)  //RRH1 for OTU裸版 
   iperf -c 192.168.119.100 -i 1 -b 200m -t 99999 -p 5008 -u (v) // RRH2


2. iperf -c 192.168.119.100 -i 1 -l 8192 -w 8M -b 200m -t 99999 -p 5009 -u
UL:
1.iperf -s -u -i 1 -p 5009 (v) // RRH2
1.iperf -s -u -i 1 -p 5007 (v) // for OTU裸版 //RRH1


/****************/DTU DOS console
UL:
1. iperf -c 192.168.119.202 -i 1 -b 10m -t 10000 -p 5009 -u

DL:
1. iperf -s -u -i 1 -p 5009 -B 192.168.119.100 (v)



/****************/OTU DOS console
UL:
1. iperf -c 192.168.119.202 -i 1 -b 10m -t 10000 -p 5007 -u 
// for OTU裸版 (5009不行)

