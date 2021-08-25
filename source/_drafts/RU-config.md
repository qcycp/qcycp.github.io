---
title: Foxconn RU
abbrlink: 17be977d
tags: Work
---
* set_port.sh
```
root@stratix10:~/test# cat set_port.sh
#!/bin/sh
#echo "192.168.$1.49"
alias ll='ls -la'
ifconfig eth0 "192.168.$1.49"
ifconfig eth0
route add -net 192.168.0.0 netmask 255.255.0.0 gw "192.168.$1.150" dev eth0
ping "192.168.$1.150" -c 1
#route
```
* version.txt
```
root@stratix10:~/test# cat version.txt
branch: master
version: bfe66e73a88be8a8573be6dae4e1594f8c3cb5f7
tag: v1.0.2o.432
```
* reboot.sh
```
root@stratix10:~/test# cat reboot.sh
#!/bin/bash
/home/root/test/reset_cuplane
if [ -f "/usr/utils/power_ic" ]; then /usr/utils/power_ic 0; fi
umount /home/root/sdcard
/usr/local/reboot
```
* RRHconfig_xran.xml
```
root@stratix10:~/sdcard# cat RRHconfig_xran.xml
<!--                          -->
<!--            Common        -->
<!--                          -->
<!-- RRH_DST_MAC_ADDR: Destination MAC address, fill with 6 bytes and separate each others by colon -->
RRH_DST_MAC_ADDR = 00:11:22:33:44:66
<!-- RRH_SRC_MAC_ADDR: Source MAC address, fill with 6 bytes and separate each others by colon -->
RRH_SRC_MAC_ADDR = aa:bb:cc:dd:ee:ff
<!-- RRH_RU_PORT_ID: RRH RU PORT ID, fill with 4 bytes and separate each others by common and space -->
RRH_RU_PORT_ID = 0, 1, 2, 3
<!-- RRH_EN_SPC: Enable SPC or not, 0:OFF, 1:ON -->
RRH_EN_SPC = 1
<!-- RRH_RRH_LTE_OR_NR: Indicate the spec of xRAN, 0:LTE, 1:NR -->
RRH_RRH_LTE_OR_NR = 1
<!-- RRH_TRX_EN_BIT_MASK: Bit-mask of 4 TRx, bit 0: TRx0, bit1: TRx1, bit2: TRx2, bit3: TRx3 -->
RRH_TRX_EN_BIT_MASK = 0x03
<!-- RRH_RF_EN_BIT_MASK: Bit-mask of 4 PA/LNA, bit0: PA0/LNA0, bit1: PA1/LNA1, bit2: PA2/LNA2, bit3: PA3/LNA3 -->
RRH_RF_EN_BIT_MASK = 0x0f
<!-- RRH_CMPR_HDR_PRESENT: Indicate the UdCompHdr/reserved field is present or not, 0:no present; 1:present -->
RRH_CMPR_HDR_PRESENT = 0
<!-- RRH_MSGS_IN_A_SYM: Number of messages in a symbol time, (1 or 2) -->
RRH_MSGS_IN_A_SYM = 2
<!-- RRH_CMPR_TYPE: Indicate compress type. 0: No Cmpr; 1:block-floating; 2:u-law -->
RRH_CMPR_TYPE = 0
<!-- RRH_CMPR_BIT_LENGTH: Indicate the bit length after compression -->
RRH_CMPR_BIT_LENGTH = 8
<!-- RRH_UL_INIT_SYM_ID: Initial symbol ID in UL message -->
RRH_UL_INIT_SYM_ID = 0
<!-- RRH_TX_TRUNC_BITS: The extra truncation in fractional part of IFFT output -->
RRH_TX_TRUNC_BITS = 4
<!-- RRH_RX_TRUNC_BITS: The extra truncation in fractional part of FFT output -->
RRH_RX_TRUNC_BITS = 4
<!-- RRH_MAX_PRB: Maximum PRBs -->
RRH_MAX_PRB = 273
<!-- RRH_C_PLANE_VLAN_TAG: C-plane V-LAN tag express by hex number -->
RRH_C_PLANE_VLAN_TAG = 0x0001
<!-- RRH_U_PLANE_VLAN_TAG: U-plane V-LAN tag express by hex number -->
RRH_U_PLANE_VLAN_TAG = 0x0002
<!-- RRH_SLOT_TICKS_IN_SEC: Number of slot tick in a second (2000 slots for u=1) -->
RRH_SLOT_TICKS_IN_SEC = 2000
<!-- RRH_SLOT_PERIOD_IN_SAMPLE: Slot period in 122.88MHz (61440 for u=1) -->
RRH_SLOT_PERIOD_IN_SAMPLE = 61440
<!-- RRH_LO_FREQUENCY_KHZ: Tx and Rx PLL LO Frequency in kHz(internal or external LO) -->
RRH_LO_FREQUENCY_KHZ = 4849860
<!-- RRH_TX_ATTENUATION: Tx attenuation value for each layer (>10dB. NOTE: The attenuation value must be larget than 10dB) -->
RRH_TX_ATTENUATION = 30, 30, 30, 30
<!-- RRH_RX_ATTENUATION: Rx attenuation value for each layer (<30dB) -->
RRH_RX_ATTENUATION = 0, 0, 0, 0
<!-- RRH_BB_GENERAL_CTRL: General control words for Baseband      -->
<!-- Bit[0] of 1st word: Enable the filtering of MAC address      -->
<!-- Bit[1] of 1st word: Enable the UL slot tick packets per port -->
<!-- Bit[2] of 1st word: Sync mode, 0: PTPV2, 1: GPS              -->
<!-- 2nd word: Frame offset in nanoseconde (0~999999999)          -->
<!--           59872Ts = 1948960ns = 0x1dbd20                     -->
<!-- Others: Reserved                                             -->
RRH_BB_GENERAL_CTRL = 0x0, 0x0, 0x0, 0x0
<!-- RRH_RF_GENERAL_CTRL: General control words for RF            -->
<!-- Bit[0] of 4th word: 1=RF rev1/RF rev0 for N78, 0=else        -->
<!-- Others: Reserved                                             -->
RRH_RF_GENERAL_CTRL = 0x0, 0x0, 0x0, 0x0
<!--                           -->
<!--            PTPV2 Related  -->
<!--                           -->
<!-- RRH_PTPV2_GRAND_MASTER_MODE: 0: Unicast, 1:Multicast -->
RRH_PTPV2_GRAND_MASTER_MODE = 0
<!-- RRH_PTPV2_GRAND_MASTER_IP: IP address of grand-master -->
RRH_PTPV2_GRAND_MASTER_IP = 192.168.4.150
<!-- RRH_PTPV2_SUB_DOMAIN_NUM: The sub-domain number -->
RRH_PTPV2_SUB_DOMAIN_NUM = 44
```
* startup procedure
1. ./set_port.sh 4
2. ./init_rrh_config_enable_cuplane
```
root@stratix10:~/test#
eth0      Link encap:Ethernet  HWaddr 6a:c3:c8:33:4a:cf
          inet6 addr: fe80::68c3:c8ff:fe33:4acf/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST DYNAMIC  MTU:1500  Metric:1
          RX packets:1 errors:0 dropped:0 overruns:0 frame:0
          TX packets:25 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:60 (60.0 B)  TX bytes:3690 (3.6 KiB)
          Interrupt:9 Base address:0x4000

eth1      Link encap:Ethernet  HWaddr aa:bb:cc:dd:ee:ff
          inet6 addr: fe80::a8bb:ccff:fedd:eeff/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST DYNAMIC  MTU:9000  Metric:1
          RX packets:0 errors:0 dropped:4 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)
          Memory:f9020000-f9020fff

lo        Link encap:Local Loopback
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:162 errors:0 dropped:0 overruns:0 frame:0
          TX packets:162 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:11660 (11.3 KiB)  TX bytes:11660 (11.3 KiB)

root@stratix10:~/test# ./set_port.sh 4
eth0      Link encap:Ethernet  HWaddr 6a:c3:c8:33:4a:cf
          inet addr:192.168.4.49  Bcast:192.168.4.255  Mask:255.255.255.0
          inet6 addr: fe80::68c3:c8ff:fe33:4acf/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST DYNAMIC  MTU:1500  Metric:1
          RX packets:1 errors:0 dropped:0 overruns:0 frame:0
          TX packets:28 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:60 (60.0 B)  TX bytes:4440 (4.3 KiB)
          Interrupt:9 Base address:0x4000

PING 192.168.4.150 (192.168.4.150): 56 data bytes
64 bytes from 192.168.4.150: seq=0 ttl=255 time=1.609 ms

--- 192.168.4.150 ping statistics ---
1 packets transmitted, 1 packets received, 0% packet loss
round-trip min/avg/max = 1.609/1.609/1.609 ms
root@stratix10:~/test# ./init_rrh_config_enable_cuplane
[  102.148001] SHARE_MEM sys_get_share_mem_addr
[  102.150223] SHARE_MEM to 000000001e6affe8, to2 00000000a33ba4a5
[  102.153173] SHARE_MEM enable CONFIG_CUPLANE_ON_SDRAM
1f04702b06f26cc834d4fd4339372076e0206ae1  22-support-gps-sync
0cae7e372d9c18c03869479201a7dc1f1625decc  init_rrh_config_enable_cuplane
RRH_DST_MAC_ADDR = 00:11:22:33:44:66
RRH_SRC_MAC_ADDR = aa:bb:cc:dd:ee:ff
RRH_RU_PORT_ID = 0, 1, 2, 3
RRH_EN_SPC = 0x01
RRH_TRX_EN_BIT_MASK = 0x03
RRH_RF_EN_BIT_MASK = 0x0f
RRH_CMPR_HDR_PRESENT = 0
RRH_MSGS_IN_A_SYM = 2
RRH_CMPR_TYPE = 0
RRH_CMPR_BIT_LENGTH = 8
RRH_UL_INIT_SYM_ID = 0
RRH_TX_TRUNC_BITS = 4
RRH_RX_TRUNC_BITS = 4
RRH_MAX_PRB = 273
RRH_C_PLANE_VLAN_TAG = 0x0001
RRH_U_PLANE_VLAN_TAG = 0x0002
RRH_SLOT_TICKS_IN_SEC = 2000
RRH_SLOT_PERIOD_IN_SAMPLE = 61440
RRH_LO_FREQUENCY_KHZ = 4849860
RRH_TX_ATTENUATION = 30, 30, 30, 30
RRH_RX_ATTENUATION = 0, 0, 0, 0
RRH_BB_GENERAL_CTRL = 00000000, 00000000, 00000000, 00000000
RRH_FRAME_OFFSET_IN_NANO_SECOND = 0 0
RRH SYNC MODE = PTP
RRH_RF_GENERAL_CTRL = 00000000, 00000000, 00000000, 00000000
RRH_PTPV2_GRAND_MASTER_MODE = Unicast
RRH_PTPV2_GRAND_MASTER_IP = 192.168.4.150
RRH_PTPV2_SUB_DOMAIN_NUM = 44
74f9ffb1ce98fa9d4bd109575d01399851d53b26  RRU Interface SHA1 value
Start to write bootimage_cuplane.bin from 0x3bc00000
9d21e42618b027a1e5db154be8832b7d1a99e14f  bootimage_cuplane.bin
File_size of bootimage_cuplane.bin 810258 words
Write bootimage_cuplane.bin done!
Start PTP...

root@stratix10:~/test# ptp4l[102.331]: port 0: hybrid_e2e only works with E2E
ptp4l[118.986]: rms 19845497357799692 max 19845497357799716 freq    -11 +/-  25 delay   640 +/-   1
ptp4l[119.491]: rms 19845497357799732 max 19845497357799748 freq    -33 +/-   1 delay   640 +/-   0
ptp4l[119.994]: rms 19845497357799764 max 19845497357799784 freq    -33 +/-   2 delay   639 +/-   0
ptp4l[120.498]: rms 19845497357799800 max 19845497357799824 freq    -35 +/-   1 delay   638 +/-   0
ptp4l[121.002]: rms 19845497357799840 max 19845497357799856 freq    -35 +/-   1 delay   637 +/-   0
ptp4l[121.506]: rms 19845497357799876 max 19845497357799896 freq    -35 +/-   1 delay   640 +/-   1
ptp4l[122.010]: rms 19845497357799908 max 19845497357799928 freq    -35 +/-   1 delay   639 +/-   1
ptp4l[122.514]: rms 19845497357799944 max 19845497357799960 freq    -35 +/-   1 delay   640 +/-   0
ptp4l[123.018]: rms 19845497357799980 max 19845497357800000 freq    -35 +/-   1 delay   640 +/-   0
ptp4l[123.522]: rms 19845497357800016 max 19845497357800028 freq    -35 +/-   1 delay   640 +/-   1
ptp4l[124.026]: rms 19845497357800036 max 19845497357800040 freq     +1 +/-  21 delay   638 +/-   0
ptp4l[124.530]: rms 19845497357800040 max 19845497357800044 freq     -2 +/-   2 delay   637 +/-   0
ptp4l[125.034]: rms 19845497357800040 max 19845497357800044 freq     -2 +/-   1 delay   637 +/-   1
ptp4l[125.538]: rms 19845497357800036 max 19845497357800044 freq     -0 +/-   1 delay   637 +/-   1
ptp4l[126.042]: rms 19845497357800044 max 19845497357800048 freq     -1 +/-   1 delay   638 +/-   0
ptp4l[126.546]: rms 19845497357800044 max 19845497357800052 freq     -1 +/-   1 delay   638 +/-   0
ptp4l[127.050]: rms 19845497357800044 max 19845497357800048 freq     -1 +/-   1 delay   637 +/-   0
ptp4l[127.554]: rms 19845497357800044 max 19845497357800056 freq     -1 +/-   1 delay   638 +/-   0
ptp4l[128.058]: rms 19845497357800044 max 19845497357800048 freq     -1 +/-   0 delay   637 +/-   0
ptp4l[128.562]: rms 19845497357800040 max 19845497357800052 freq     -1 +/-   0 delay   639 +/-   0
ptp4l[129.066]: rms 19845497357800048 max 19845497357800056 freq    -14 +/-  12 delay   638 +/-   0
ptp4l[129.570]: rms 19845497357800048 max 19845497357800056 freq     -4 +/-   3 delay   637 +/-   1
ptp4l[130.074]: rms 19845497357800044 max 19845497357800052 freq     -2 +/-   2 delay   636 +/-   0
ptp4l[130.578]: rms 19845497357800044 max 19845497357800056 freq     -1 +/-   1 delay   637 +/-   0
ptp4l[131.082]: rms 19845497357800052 max 19845497357800064 freq     -1 +/-   1 delay   639 +/-   0
ptp4l[131.586]: rms 19845497357800052 max 19845497357800056 freq     -1 +/-   1 delay   640 +/-   0
ptp4l[132.090]: rms 19845497357800052 max 19845497357800056 freq     -1 +/-   1 delay   638 +/-   1
ptp4l[132.594]: rms 19845497357800048 max 19845497357800056 freq     -1 +/-   1 delay   637 +/-   0
ptp4l[133.098]: rms 19845497357800052 max 19845497357800056 freq     -1 +/-   0 delay   639 +/-   1
ptp4l[133.602]: rms 19845497357800056 max 19845497357800060 freq     -1 +/-   1 delay   640 +/-   0
ptp4l[134.106]: rms 19845497357800052 max 19845497357800056 freq    -21 +/-  23 delay   639 +/-   0
ptp4l[134.610]: rms 19845497357800056 max 19845497357800064 freq     -6 +/-   2 delay   639 +/-   0
ptp4l[135.114]: rms 19845497357800056 max 19845497357800060 freq     -4 +/-   1 delay   638 +/-   0
ptp4l[135.618]: rms 19845497357800056 max 19845497357800064 freq     -3 +/-   1 delay   638 +/-   0
ptp4l[136.122]: rms 19845497357800056 max 19845497357800060 freq     -2 +/-   1 delay   639 +/-   1
ptp4l[136.626]: rms 19845497357800056 max 19845497357800064 freq     -2 +/-   1 delay   639 +/-   0
ptp4l[137.130]: rms 19845497357800056 max 19845497357800068 freq     -2 +/-   1 delay   636 +/-   1
ptp4l[137.634]: rms 19845497357800056 max 19845497357800060 freq     -2 +/-   0 delay   635 +/-   0
ptp4l[138.138]: rms 19845497357800060 max 19845497357800064 freq     -2 +/-   1 delay   638 +/-   1
ptp4l[138.642]: rms 19845497357800060 max 19845497357800068 freq     -2 +/-   0 delay   639 +/-   0
ptp4l[139.146]: rms 7016442878860070 max 19845497357800068 freq     -2 +/-   0 delay   638 +/-   0
ptp4l[139.650]: rms   10 max   13 freq     -9 +/-  13 delay   637 +/-   1
ptp4l[140.154]: rms   10 max   15 freq     -4 +/-   7 delay   636 +/-   0
ptp4l[140.658]: rms   12 max   17 freq     -1 +/-   2 delay   636 +/-   1
ptp4l[141.162]: rms   12 max   16 freq     +0 +/-   1 delay   638 +/-   1
ptp4l[141.666]: rms   16 max   20 freq     +1 +/-   1 delay   637 +/-   0
ptp4l[142.170]: rms   13 max   16 freq     -8 +/-   9 delay   639 +/-   0
ptp4l[142.674]: rms   11 max   16 freq     -4 +/-   2 delay   638 +/-   0
ptp4l[143.178]: rms   10 max   15 freq     -3 +/-   1 delay   638 +/-   0
ptp4l[143.682]: rms    7 max   11 freq     -3 +/-   1 delay   638 +/-   0
ptp4l[144.186]: rms    8 max   15 freq    +23 +/-  35 delay   638 +/-   0
ptp4l[144.690]: rms    8 max   18 freq     +4 +/-   3 delay   639 +/-   1
ptp4l[145.195]: rms    8 max   16 freq     +3 +/-   2 delay   641 +/-   0
ptp4l[145.698]: rms    9 max   16 freq     +3 +/-   1 delay   641 +/-   0
ptp4l[146.202]: rms    7 max   10 freq    -13 +/-  11 delay   638 +/-   1
ptp4l[146.706]: rms    6 max   10 freq     -5 +/-   2 delay   637 +/-   0
ptp4l[147.210]: rms    5 max   11 freq     -6 +/-   2 delay   637 +/-   0
ptp4l[147.714]: rms    7 max   11 freq     -5 +/-   1 delay   638 +/-   0
ptp4l[148.218]: rms    5 max    8 freq     +7 +/-  15 delay   637 +/-   0
ptp4l[148.722]: rms    5 max    8 freq     +2 +/-   3 delay   638 +/-   1
ptp4l[149.226]: rms    7 max   11 freq     +1 +/-   2 delay   640 +/-   0
ptp4l[149.730]: rms    5 max    7 freq     +1 +/-   1 delay   639 +/-   1
ptp4l[150.234]: rms    3 max    6 freq     -4 +/-  17 delay   637 +/-   0
ptp4l[159.369]: rms    7 max   11 freq     +2 +/-  19 delay   637 +/-   2
ptp4l[159.873]: rms    9 max   13 freq     +2 +/-   2 delay   640 +/-   1
ptp4l[160.377]: rms    8 max   13 freq     +2 +/-   2 delay   640 +/-   0
ptp4l[160.881]: rms   11 max   19 freq     +0 +/-   2 delay   638 +/-   0
ptp4l[161.385]: rms    5 max    7 freq     +4 +/-  12 delay   638 +/-   0
ptp4l[161.889]: rms    8 max   12 freq     -1 +/-   3 delay   640 +/-   0
ptp4l[162.393]: rms    6 max   10 freq     +1 +/-   2 delay   639 +/-   1
ptp4l[162.897]: rms    8 max   16 freq     +0 +/-   1 delay   639 +/-   2
ptp4l[163.401]: rms    5 max    7 freq    +14 +/-  21 delay   637 +/-   1
ptp4l[163.905]: rms    6 max    9 freq     +5 +/-   4 delay   640 +/-   1
ptp4l[164.409]: rms    6 max   10 freq     +3 +/-   2 delay   640 +/-   1
ptp4l[164.913]: rms    3 max    7 freq     +3 +/-   1 delay   639 +/-   0
ptp4l[165.417]: rms    3 max    5 freq     +6 +/-  10 delay   639 +/-   1
ptp4l[165.921]: rms    5 max    8 freq     +5 +/-   5 delay   638 +/-   0
ptp4l[166.425]: rms    6 max   11 freq     +2 +/-   3 delay   638 +/-   0
ptp4l[166.929]: rms    6 max   12 freq     +2 +/-   2 delay   638 +/-   1
ptp4l[167.433]: rms    6 max   12 freq     +2 +/-  14 delay   635 +/-   0
ptp4l[167.937]: rms    7 max   13 freq     +6 +/-   4 delay   637 +/-   1
ptp4l[168.441]: rms    6 max   12 freq     +2 +/-   3 delay   637 +/-   1
ptp4l[168.945]: rms    4 max    7 freq     +2 +/-   1 delay   637 +/-   0
ptp4l[169.449]: rms    5 max   10 freq    -16 +/-  20 delay   637 +/-   0
ptp4l[169.953]: rms    5 max    8 freq     -9 +/-   4 delay   637 +/-   0
ptp4l[170.457]: rms    6 max   10 freq     -7 +/-   2 delay   637 +/-   0
ptp4l[170.961]: rms   10 max   16 freq     -6 +/-   1 delay   637 +/-   0
[  191.186030] psci: new system call in psci!!!
[  191.188170] psci: new system call in psci!!!
[  191.191239] psci: new system call in psci!!!
RRH_DST_MAC_ADDR = 00:11:22:33:44:66
RRH_SRC_MAC_ADDR = aa:bb:cc:dd:ee:ff
RRH_RU_PORT_ID = 0, 1, 2, 3
RRH_EN_SPC = 0x01
RRH_LTE_OR_NR = 0x01
RRH_TRX_EN_BIT_MASK = 0x03
RRH_RF_EN_BIT_MASK = 0x0f
RRH_CMPR_HDR_PRESENT = 0
RRH_MSGS_IN_A_SYM = 2
RRH_IQ_BYTE_SWAP = 0
RRH_CMPR_TYPE = 0
RRH_CMPR_BIT_LENGTH = 8
RRH_UL_INIT_SYM_ID = 0
RRH_TX_TRUNC_BITS = 4
RRH_RX_TRUNC_BITS = 4
RRH_MAX_PRB = 273
RRH_C_PLANE_VLAN_TAG = 0x0001
RRH_U_PLANE_VLAN_TAG = 0x0002
RRH_SLOT_TICKS_IN_SEC = 2000
RRH_SLOT_PERIOD_IN_SAMPLE = 61440
RRH_LO_FREQUENCY_KHZ = 4849860
RRH_TX_ATTENUATION = 30, 30, 30, 30
RRH_RX_ATTENUATION = 0, 0, 0, 0
RRH_BB_GENERAL_CTRL = 00000000, 00000000, 00000000, 00000000
RRH_RF_GENERAL_CTRL = 00000000, 00000000, 00000000, 00000000
RRH_PTPV2_GRAND_MASTER_IP = c0a82196
RRH_PTPV2_SUB_DOMAIN_NUM = 44
RRH_state=0
frame_offset = 0 samples, slot_offset = 0 samples

RRU Interface SHA1 value
74f9ffb1ce98fa9d4bd109575d01399851d53b26

RRU Branch information
master
RRU Commit information
bfe66e73a88be8a8573be6dae4e1594f8c3cb5f7
ALT interrupt init!
INFO: Setting up global interrupts.
 status: 0
INFO: Setting up CPU interrupts.
 status: 0
INFO: Configuring buttons. CPU 1 (counted from 0).
 status: 0
INFO: Enabling CPU interrupts.
 status: 31
INFO: Enabling global interrupts.
Interrupt init!
New LO1=4849860000Hz LO2=0Hz
ad9025 1 init...
[  203.113527] audit: type=1006 audit(1609581651.833:4): pid=665 uid=0 old-auid=4294967295 auid=0 tty=(none) old-ses=4294967295 ses=3 res=1
0 my_deframerStatus.status 0x87
ad9025 1 bring up completed!
en ad9025 1
Before: RxEn=00000000 TxEn=00000000
After: RxEn=00000000 TxEn=0000000f
ad9025 tx on!
ad9025 tx on!



AD9025 Initialization is done and g_xran_params.rf_general_control[0] = 00000000


en ad9025 1
Before: RxEn=00000000 TxEn=0000000f
After: RxEn=00000000 TxEn=0000000f
ad9025 tx on!
en ad9025 1
en ad9025 1
Current Tx  control mode = SPI_mode
Current Rx  control mode = SPI_mode
Current ORx control mode = SPI_mode
PA=00000000 LNA=00000000 Src=fff0fff0 TxEn=00000000 TRSwitch=00000000
en ad9025 1
en ad9025 1
en ad9025 1
en ad9025 1
Initial Tx/Rx attenuation of AD9025-1: bit_mask=0F, offset=0[0]=30/0 [1]=30/0 [2]=30/0 [3]=30/0 dB

xRAN Initial...num_trx_en = 00000002, dl_type1_port_id = 0000ff10, dl_type3_0_port_id = ff32ff10
xRAN Initial...
Enable 10GBE...b6fff000
10GBE RxMTU=9 TxMTU=464 status=f6fff000
xran 10GBE is ready! f6fff000
AP_PORT_EN=03
i[00]=3C57 q=70E3    i[14]=3C57 q=70E3
i[01]=CF04 q=7642    i[15]=CF04 q=7642
i[02]=8583 q=2528    i[16]=8583 q=2528
i[03]=9592 q=B8E3    i[17]=9592 q=B8E3
i[04]=F374 q=809E    i[18]=F374 q=809E
i[05]=5A82 q=A57E    i[19]=5A82 q=A57E
i[06]=7F62 q=0C8C    i[20]=7F62 q=0C8C
i[07]=471D q=6A6E    i[21]=471D q=6A6E
i[08]=DAD8 q=7A7D    i[22]=DAD8 q=7A7D
i[09]=89BE q=30FC    i[23]=89BE q=30FC
i[10]=8F1D q=C3A9    i[24]=8F1D q=C3A9
i[11]=E707 q=8276    i[25]=E707 q=8276
i[12]=5134 q=9D0E    i[26]=5134 q=9D0E
i[13]=7FFF q=0000    i[27]=7FFF q=0000
read-back mailbox configuration=00000100
Write SPC table correctly
In tcu_init: reset tcu
Latch 1st 1pps time=fffffff4
Latch 2nd 1pps time=fffffff4 curr=01bf8477 diff=29328515
Latch 2nd 1pps time=01bf8477 curr=09128477
RRH_state=1
Align: 152208503 152714252 16491 16
10R: sec=0 hps=1629427355 64b=3 65to128=630 total=645 uni=624 uni>1158=0 multi=19 crc_err=0
10T: sec=0 hps=1629427355 64b=8 65to128=337 total=566 uni=528 uni>1158=0 multi=15 crc_err=0 state=1 start=0 adj=0 rstcnt=0
Latch later 1pps time=10658477 swi4010=10658477 xran_sec=10658474 acc_diff[1]=0 hps_sec=1629427355 cur_sec=0 PA_OFF
Align: 152208503 152714252 16491 16
10R: sec=1 hps=1629427356 64b=3 65to128=630 total=645 uni=624 uni>1158=0 multi=19 crc_err=0
10T: sec=1 hps=1629427356 64b=8 65to128=337 total=566 uni=528 uni>1158=0 multi=15 crc_err=0 state=1 start=0 adj=0 rstcnt=0
Latch later 1pps time=17b88477 swi4010=17b88477 xran_sec=17b88474 acc_diff[2]=0 hps_sec=1629427356 cur_sec=1 PA_OFF
Align: 152208503 152714252 16491 16
10R: sec=2 hps=1629427357 64b=3 65to128=630 total=645 uni=624 uni>1158=0 multi=19 crc_err=0
10T: sec=2 hps=1629427357 64b=8 65to128=337 total=566 uni=528 uni>1158=0 multi=15 crc_err=0 state=1 start=0 adj=0 rstcnt=0
Latch later 1pps time=1f0b8477 swi4010=1f0b8477 xran_sec=1f0b8474 acc_diff[3]=0 hps_sec=1629427357 cur_sec=2 PA_OFF
Align: 152208503 152714252 16491 16
10R: sec=3 hps=1629427358 64b=3 65to128=630 total=645 uni=624 uni>1158=0 multi=19 crc_err=0
10T: sec=3 hps=1629427358 64b=8 65to128=337 total=566 uni=528 uni>1158=0 multi=15 crc_err=0 state=1 start=0 adj=0 rstcnt=0
Latch later 1pps time=1f0b8477 swi4010=265e8477 xran_sec=265e8474 acc_diff[3]=0 hps_sec=1629427358 cur_sec=3 PA_OFF
Align: 152208503 152714252 16491 16
10R: sec=4 hps=1629427359 64b=3 65to128=630 total=645 uni=624 uni>1158=0 multi=19 crc_err=0
10T: sec=4 hps=1629427359 64b=8 65to128=337 total=566 uni=528 uni>1158=0 multi=15 crc_err=0 state=1 start=0 adj=0 rstcnt=0
Latch later 1pps time=2db18476 swi4010=2db18477 xran_sec=2db18474 acc_diff[4]=-1 hps_sec=1629427359 cur_sec=4 PA_OFF
Align: 152208503 152714252 16491 16
10R: sec=5 hps=1629427360 64b=3 65to128=630 total=645 uni=624 uni>1158=0 multi=19 crc_err=0
10T: sec=5 hps=1629427360 64b=8 65to128=337 total=566 uni=528 uni>1158=0 multi=15 crc_err=0 state=1 start=0 adj=0 rstcnt=0
Latch later 1pps time=35048476 swi4010=35048476 xran_sec=35048474 acc_diff[5]=-1 hps_sec=1629427360 cur_sec=5 PA_OFF
Align: 152208503 152714252 16491 16
10R: sec=6 hps=1629427361 64b=3 65to128=637 total=652 uni=631 uni>1158=0 multi=19 crc_err=0
10T: sec=6 hps=1629427361 64b=8 65to128=339 total=570 uni=532 uni>1158=0 multi=15 crc_err=0 state=1 start=0 adj=0 rstcnt=0
Latch later 1pps time=3c578476 swi4010=3c578476 xran_sec=3c578474 acc_diff[6]=-1 hps_sec=1629427361 cur_sec=6 PA_OFF
Align: 152208503 152714252 16491 16
10R: sec=7 hps=1629427362 64b=3 65to128=643 total=658 uni=637 uni>1158=0 multi=19 crc_err=0
10T: sec=7 hps=1629427362 64b=8 65to128=341 total=574 uni=536 uni>1158=0 multi=15 crc_err=0 state=1 start=0 adj=0 rstcnt=0
Latch later 1pps time=43aa8476 swi4010=43aa8476 xran_sec=43aa8474 acc_diff[7]=-1 hps_sec=1629427362 cur_sec=7 PA_OFF
Align: 152208503 152714252 16491 16
10R: sec=8 hps=1629427363 64b=3 65to128=647 total=662 uni=641 uni>1158=0 multi=19 crc_err=0
10T: sec=8 hps=1629427363 64b=8 65to128=341 total=576 uni=538 uni>1158=0 multi=15 crc_err=0 state=1 start=0 adj=0 rstcnt=0
Latch later 1pps time=4afd8476 swi4010=4afd8476 xran_sec=4afd8474 acc_diff[8]=-1 hps_sec=1629427363 cur_sec=8 PA_OFF
Align: 152208503 152714252 16491 16
10R: sec=9 hps=1629427364 64b=3 65to128=653 total=668 uni=647 uni>1158=0 multi=19 crc_err=0
10T: sec=9 hps=1629427364 64b=8 65to128=344 total=579 uni=541 uni>1158=0 multi=15 crc_err=0 state=1 start=0 adj=0 rstcnt=0
Latch later 1pps time=52508476 swi4010=52508476 xran_sec=52508474 acc_diff[9]=-1 hps_sec=1629427364 cur_sec=9 PA_OFF
Align: 152208503 152714252 16491 16
10R: sec=10 hps=1629427365 64b=3 65to128=657 total=672 uni=651 uni>1158=0 multi=19 crc_err=0
10T: sec=10 hps=1629427365 64b=8 65to128=346 total=581 uni=543 uni>1158=0 multi=15 crc_err=0 state=1 start=0 adj=0 rstcnt=0
Latch later 1pps time=59a38476 swi4010=59a38476 xran_sec=59a38474 acc_diff[0]=-1 hps_sec=1629427365 cur_sec=10 PA_OFF
...
Align: 152208503 152714252 16491 16
10R: sec=549 hps=1629427904 64b=4 65to128=1096 total=1124 uni=1085 uni>1158=0 multi=37 crc_err=0
10T: sec=549 hps=1629427904 64b=9 65to128=552 total=886 uni=829 uni>1158=0 multi=16 crc_err=0 state=1 start=0 adj=0 rstcnt=0
Latch later 1pps time=c564846a swi4010=c564846a xran_sec=c5648474 acc_diff[1]=-13 hps_sec=1629427904 cur_sec=549 PA_OFF
Align: 152208503 152714252 16491 16
10R: sec=550 hps=1629427905 64b=4 65to128=1096 total=1124 uni=1085 uni>1158=0 multi=37 crc_err=0
10T: sec=550 hps=1629427905 64b=9 65to128=552 total=886 uni=829 uni>1158=0 multi=16 crc_err=0 state=1 start=0 adj=0 rstcnt=0
Latch later 1pps time=ccb7846a swi4010=ccb7846a xran_sec=ccb78474 acc_diff[2]=-13 hps_sec=1629427905 cur_sec=550 PA_OFF
Align: 152208503 152714252 16491 16
10R: sec=551 hps=1629427906 64b=4 65to128=1096 total=1124 uni=1085 uni>1158=0 multi=37 crc_err=0
10T: sec=551 hps=1629427906 64b=9 65to128=552 total=886 uni=829 uni>1158=0 multi=16 crc_err=0 state=1 start=0 adj=0 rstcnt=0
Latch later 1pps time=ccb7846a swi4010=d40a846a xran_sec=d40a8474 acc_diff[2]=-13 hps_sec=1629427906 cur_sec=551 PA_OFF
Align: 152208503 152714252 16491 16
10R: sec=552 hps=1629427907 64b=4 65to128=1096 total=1125 uni=1086 uni>1158=0 multi=37 crc_err=0
10T: sec=552 hps=1629427907 64b=9 65to128=553 total=888 uni=831 uni>1158=0 multi=16 crc_err=0 state=1 start=0 adj=0 rstcnt=0
Latch later 1pps time=db5d8469 swi4010=db5d846a xran_sec=db5d8474 acc_diff[3]=-14 hps_sec=1629427907 cur_sec=552 PA_OFF
Align: 152208503 152714252 16491 16
10R: sec=553 hps=1629427908 64b=4 65to128=1096 total=1125 uni=1086 uni>1158=0 multi=37 crc_err=0
10T: sec=553 hps=1629427908 64b=9 65to128=553 total=888 uni=831 uni>1158=0 multi=16 crc_err=0 state=1 start=0 adj=0 rstcnt=0
Latch later 1pps time=e2b08469 swi4010=e2b08469 xran_sec=e2b08474 acc_diff[4]=-14 hps_sec=1629427908 cur_sec=553 PA_OFF
Align: 152208503 152714252 16491 16
10R: sec=554 hps=1629427909 64b=4 65to128=1096 total=1125 uni=1086 uni>1158=0 multi=37 crc_err=0
10T: sec=554 hps=1629427909 64b=9 65to128=553 total=888 uni=831 uni>1158=0 multi=16 crc_err=0 state=1 start=0 adj=0 rstcnt=0
Latch later 1pps time=ea038469 swi4010=ea038469 xran_sec=ea038474 acc_diff[5]=-14 hps_sec=1629427909 cur_sec=554 PA_OFF
Align: 152208503 152714252 16491 16
10R: sec=555 hps=1629427910 64b=4 65to128=1096 total=1125 uni=1086 uni>1158=0 multi=37 crc_err=0
10T: sec=555 hps=1629427910 64b=9 65to128=553 total=888 uni=831 uni>1158=0 multi=16 crc_err=0 state=1 start=0 adj=0 rstcnt=0
Latch later 1pps time=f1568469 swi4010=f1568469 xran_sec=f1568474 acc_diff[6]=-14 hps_sec=1629427910 cur_sec=555 PA_OFF
Align: 152208503 152714252 16491 16
10R: sec=556 hps=1629427911 64b=3368 65to128=1097 total=94120 uni=94080 uni>1158=89630 multi=38 crc_err=0
10T: sec=556 hps=1629427911 64b=9 65to128=553 total=888 uni=831 uni>1158=0 multi=16 crc_err=0 state=2 start=0 adj=0 rstcnt=0
Latch later 1pps time=f8a98469 swi4010=f8a98469 xran_sec=f8a98474 acc_diff[7]=-14 hps_sec=1629427911 cur_sec=556 PA_OFF
Align: 152208503 152714252 16491 16
10R: sec=557 hps=1629427912 64b=7568 65to128=1097 total=210320 uni=210280 uni>1158=201630 multi=38 crc_err=1
10T: sec=557 hps=1629427912 64b=9 65to128=553 total=888 uni=831 uni>1158=0 multi=16 crc_err=0 state=2 start=0 adj=0 rstcnt=0
Latch later 1pps time=fffc8469 swi4010=fffc8469 xran_sec=fffc8474 acc_diff[8]=-14 hps_sec=1629427912 cur_sec=557 PA_OFF
Align: 152208503 152714252 16491 16
10R: sec=558 hps=1629427913 64b=11768 65to128=1097 total=326521 uni=326480 uni>1158=313631 multi=38 crc_err=1
10T: sec=558 hps=1629427913 64b=9 65to128=553 total=888 uni=831 uni>1158=0 multi=16 crc_err=0 state=2 start=0 adj=0 rstcnt=0
Latch later 1pps time=074f8469 swi4010=074f8469 xran_sec=074f8474 acc_diff[9]=-14 hps_sec=1629427913 cur_sec=558 PA_OFF
Align: 152208503 152714252 16491 16
10R: sec=559 hps=1629427914 64b=15968 65to128=1097 total=442720 uni=442680 uni>1158=425630 multi=38 crc_err=1
10T: sec=559 hps=1629427914 64b=9 65to128=553 total=888 uni=831 uni>1158=0 multi=16 crc_err=0 state=2 start=0 adj=0 rstcnt=0
Latch later 1pps time=0ea28469 swi4010=0ea28469 xran_sec=0ea28474 acc_diff[0]=-14 hps_sec=1629427914 cur_sec=559 PA_OFF
Align: 152208503 152714252 16491 16
10R: sec=560 hps=1629427915 64b=20168 65to128=1097 total=558920 uni=558880 uni>1158=537631 multi=38 crc_err=1
10T: sec=560 hps=1629427915 64b=9 65to128=553 total=888 uni=831 uni>1158=0 multi=16 crc_err=0 state=2 start=0 adj=0 rstcnt=0
Latch later 1pps time=15f58469 swi4010=15f58469 xran_sec=15f58474 acc_diff[1]=-14 hps_sec=1629427915 cur_sec=560 PA_OFF
Align: 152208503 152714252 16491 16
10R: sec=561 hps=1629427916 64b=24368 65to128=1097 total=675120 uni=675080 uni>1158=649631 multi=38 crc_err=1
10T: sec=561 hps=1629427916 64b=9 65to128=553 total=888 uni=831 uni>1158=0 multi=16 crc_err=0 state=2 start=0 adj=0 rstcnt=0
Latch later 1pps time=1d488469 swi4010=1d488469 xran_sec=1d488474 acc_diff[2]=-14 hps_sec=1629427916 cur_sec=561 PA_OFF
Align: 152208503 152714252 16491 16
10R: sec=562 hps=1629427917 64b=28568 65to128=1097 total=791319 uni=791279 uni>1158=761630 multi=38 crc_err=1
10T: sec=562 hps=1629427917 64b=9 65to128=553 total=888 uni=831 uni>1158=0 multi=16 crc_err=0 state=2 start=0 adj=0 rstcnt=0
Latch later 1pps time=249b8469 swi4010=249b8469 xran_sec=249b8474 acc_diff[3]=-14 hps_sec=1629427917 cur_sec=562 PA_OFF
```
* 沒有 BBU 連線時，state=1
```
10R: sec=552 hps=1629427907 64b=4 65to128=1096 total=1125 uni=1086 uni>1158=0 multi=37 crc_err=0
10T: sec=552 hps=1629427907 64b=9 65to128=553 total=888 uni=831 uni>1158=0 multi=16 crc_err=0 state=1 start=0 adj=0 rstcnt=0
Latch later 1pps time=db5d8469 swi4010=db5d846a xran_sec=db5d8474 acc_diff[3]=-14 hps_sec=1629427907 cur_sec=552 PA_OFF
```
* 有 BBU 成功連線時，state=2
```
10R: sec=562 hps=1629427917 64b=28568 65to128=1097 total=791319 uni=791279 uni>1158=761630 multi=38 crc_err=1
10T: sec=562 hps=1629427917 64b=9 65to128=553 total=888 uni=831 uni>1158=0 multi=16 crc_err=0 state=2 start=0 adj=0 rstcnt=0
Latch later 1pps time=249b8469 swi4010=249b8469 xran_sec=249b8474 acc_diff[3]=-14 hps_sec=1629427917 cur_sec=562 PA_OFF
```
  * 只要有 BBU 成功連線，10R total 就會大量增加
  * 若是有 uplink，10T total 會大量增加
* ssh to RU via BBU
  * 當RU啟動後
```
4: eth1: <BROADCAST,MULTICAST,UP,LOWER_UP8000> mtu 9000 qdisc pfifo_fast qlen 1000
    link/ether aa:bb:cc:dd:ee:ff brd ff:ff:ff:ff:ff:ff
    inet 169.254.227.236/16 brd 169.254.255.255 scope global secondary eth1
       valid_lft forever preferred_lft forever
    inet6 fe80::a8bb:ccff:fedd:eeff/64 scope link
       valid_lft forever preferred_lft forever
```
  * 在 BBU 設定
```
$ ifconfig enp97s0f0:temp 169.254.227.220/24 up
```
  * ssh to RU
```
$ ssh 169.254.227.236
```