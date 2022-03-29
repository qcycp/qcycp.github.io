---
title: testmac
abbrlink: 6f0f2a0c
tags:
---
# testmac 的 config 要放在
```
[root@localhost ~/FlexRAN/tests/nr5g]# ls
channel  c_master.sh  dl  fd  nr5g_testapp  rctul  run.sh  sweep  ul
```

tests/nr5g/dl/testmac_dl_mu1_60mhz.cfg
tests/nr5g/dl/mu1_60mhz

# 執行
1. pre-request
ptp4l -i eno2 -smf ptp4l-multicast.conf
phc2sys -s eno2 -w -m -n 24

2a. L1
```
cd ~/FlexRAN/bin/nr5g/gnb/l1/
./l1.sh -xran
```
2b. L2
```
cd ~/FlexRAN/bin/nr5g/gnb/testmac/
./l2.sh
> phystart 4 10 2000000
> run 0 1 60 1245
```

> phystart 4 10 2000000
testmac_set_phy_start: mode[4], period[10], count[2000000]

> run 0 1 60 1245
Usage: [test_type: 0-DL 1-UL 2-FD] [Numerology: 0-4] [Bandwidth: 5, 10, 15, 20, 25, 30, 40, 50, 60, 80, 100, 200, 400] [optional: test_num]
