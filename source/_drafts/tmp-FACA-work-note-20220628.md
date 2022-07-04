---
title: tmp_FACA_work_note_20220628
tags:
---
RRH_DISABLE_USING_CAL_TABLES = YES

./eeprom_w -p cj/6wj/wlxm,4 -f eeprom_template.xml
不想寫的欄位可以 // 註解起來


mount -o remount,ro /
mount -o remount,rw /

21.03
./flexran_build.sh -r 5gnr_sub6 -b
21.11
./flexran_build.sh -e -r 5gnr

journalctl -f -u faca_ptp.service

ptp4l -i enp134s0f0 -m -s -f /opt/faca/ptp/ptp4l-unicast.conf
phc2sys -s enp134s0f0 -w -m -n 44

ptp4l -i enp134s0f0 -m -s -f /opt/faca/ptp/ptp4l-multicast.conf
phc2sys -s enp134s0f0 -w -m -n 24

copy running-config startup-config


printf '\x6c\xad\xad\x00\x04\xbc' | dd of=/root/home/sdcard/socfpga_arria10_socdk_sdmmc.dtb bs=1 seek=17452 count=6 conv=notrunc


route add -net 192.167.0.0/16 gw 192.168.9.150

bbu_cli --config ptp_profile g8275.2 ptp_if enp134s0f0 ptp_host 192.168.15.49 gm_ip 192.168.15.150
ip a add 192.167.26.85/24 dev enp97s0f0
ip a del 192.167.26.85/24 dev enp97s0f0


route add -net 192.167.27.0/24 gw 192.167.26.150
route del -net 192.167.27.0/24 gw 192.167.26.150

ip a add 192.168.8.49/24 dev enp134s0f0
route add -net 192.168.9.0/24 gw 192.168.8.150

    
ip a add 192.167.12.49/24 dev enp97s0f0
ip a add 192.167.14.49/24 dev enp97s0f0
ip a add 192.167.20.85/24 dev enp97s0f0
ip a del 192.167.20.85/24 dev enp97s0f0

route add -net 192.168.9.0/24 gw 192.168.8.150
route add -net 192.167.11.0/24 gw 192.167.10.150
route add -net 192.167.13.0/24 gw 192.167.12.150
route add -net 192.167.15.0/24 gw 192.167.14.150
route add -net 192.167.21.0/24 gw 192.167.20.150
route del -net 192.167.21.0/24 gw 192.167.20.150


兩邊都要加 route 才會通
192.168.81.11(BBU: 192.167.10.49, RU: 192.168.9.49)
BBU: route add -net 192.168.0.0/16 gw 192.167.10.150
RU: route add -net 192.167.0.0/16 gw 192.168.9.150

ssh root@10.12.87.85 => BBU
telnet 10.12.85.239 => ncs540 BC
telnet 10.12.85.208 => ncs540 BC
telnet 10.12.87.89 => nca540 GM
telnet 10.12.85.209 => ufi

root/C0pivia
ssh root@192.167.27.49 => RU

192.168.15.254 => GM

192.167.27.85 => BBU
192.167.27.49 => RU

https://reurl.cc/Yj8qVa


ip a add 192.167.20.85/24 dev ens1f2
route add -net 192.167.27.0 netmask 255.255.255.0 gw 192.167.20.150
route add -net 192.167.27.0(想去的地方) netmask 255.255.255.0 gw 192.167.20.150(在switch上interface設的ip)
dhcpd -d -cf /etc/dhcp/dhcpd-Vish.conf


HC
ip a add 192.167.20.85/24 dev enp97s0f0
route add -net 192.167.21.0/24 gw 192.167.20.150


在RU set_qse.sh 中有
route add -net 192.167.0.0 netmask 255.255.0.0 gw $RRH_GW dev qse-eth   ($RRH_GW=192.167.27.150)
$ ip route
192.167.0.0/16 via 192.167.27.150 dev qse-dev

JITTER_LEVEL=0 => 43s
JITTER_LEVEL=1 => 321s

RRH_state=DATA_EXCHANGING
RRH_state=READY_FOR_DATA


bbu工具在
$ ls /home/root/test/v2.2.4q.524/bbu_utils
bbu_get_logs.run logconfig.xml loghex_to_string

RU
in ~/test
./dump_log

BBU
./bbu_get_logs.run 192.167.27.49

/a/users/bokkas/sampleApp
/a/users/bokkas/ORULogs/v2.24/bbu_utils




Input/Output=>External Gain => External Gain - BTS = -19dB


System => Change Hardware Connections => rftest => View Details => 10.12.111.91

LTER0cks!



sdk/source/phy/lib_precoding_5gnr/phy_precoding_codebook_5gnr.cpp:655:int bblib_precoding_codebook_fetch_5gnr




sdk/source/phy/lib_precoding_5gnr/phy_precoding_codebook_5gnr.cpp

天線---PA/LNA---RFIC(ad9025 transiver)---jesd---fpga(low phy, intel arria10/stratix10)---L1(high phy)(BBU)

announce 0
sync -3
delay -8


跳板server: 
    內網IP: 172.18.73.100
    私網IP: 192.168.81.35
跳板 server 
    192.168.81.35 user/irene19900912
    $ ssh nick@10.60.6.52
build code server 
    build code
    scp aaa.run user@172.18.73.100:/home/user/elvis/
跳板 server
    cd /home/user/elvis/
    scp aaa.run root@192.168.81.7:/home/faca/elvis/



https://app.box.com/folder/148341069941

https://www.instagram.com/tv/CUo03lsN8RV/





route add -net 192.167.0.0/16 gw 192.168.9.150

[Nick] ptp2 status = 00000209, 00000220
[Nick] ptp3 status = 00000000, 00000110
[Nick] ptp4 status = 00000000, 00000088
[Nick] ptp5 status = 00000008, 00000044
[Nick] ptp6 status = 00000000, 00000224
[Nick] ptp7 status = 00000000, 00000112
[Nick] ptp8 status = 00000000, 00000089
[Nick] ptp9 status = 00000008, 00000044


printf("[Nick] ptp2 status = %08x, %08x\n", *(map + (REG_WD_SET_COUNTER_ADDR)), REG_WD_SET_COUNTER_ADDR);
printf("[Nick] ptp3 status = %08x, %08x\n", *(map + (REG_WD_SET_COUNTER_ADDR >>1)), REG_WD_SET_COUNTER_ADDR >>1);
printf("[Nick] ptp4 status = %08x, %08x\n", *(map + (REG_WD_SET_COUNTER_ADDR >>2)), REG_WD_SET_COUNTER_ADDR >>2);
printf("[Nick] ptp5 status = %08x, %08x\n", *(map + (REG_WD_SET_COUNTER_ADDR >>3)), REG_WD_SET_COUNTER_ADDR >>3);
printf("[Nick] ptp6 status = %08x, %08x\n", *(map + (REG_WD_RD_COUNTER_ADDR)), REG_WD_RD_COUNTER_ADDR);
printf("[Nick] ptp7 status = %08x, %08x\n", *(map + (REG_WD_RD_COUNTER_ADDR >>1)), REG_WD_RD_COUNTER_ADDR >>1);
printf("[Nick] ptp8 status = %08x, %08x\n", *(map + (REG_WD_RD_COUNTER_ADDR >>2)), REG_WD_RD_COUNTER_ADDR >>2);
printf("[Nick] ptp9 status = %08x, %08x\n", *(map + (REG_WD_RD_COUNTER_ADDR >>3)), REG_WD_RD_COUNTER_ADDR >>3);







root@stratix10:~/sdcard# sha256sum fpga_core.rbf
a8b8d05963bae8b03e2984a715d60b4aedaa329f982b37a9dcef35f70d864ba9  fpga_core.rbf



*((volatile unsigned int *)(map + (REG_WD_SET_COUNTER_ADDR>>2))) = 300;
printf("WatchDog Period = %08x\n", *(map + (REG_WD_SET_COUNTER_ADDR >>2))); //WatchDog Period = 00000000
printf("WatchDog Counter= %08x\n", *(map + (REG_WD_RD_COUNTER_ADDR  >>2))); //WatchDog Counter= 00000000
(map + (REG_WD_SET_COUNTER_ADDR >>2)) = 0xF9000000 + 0x88
(map + (REG_WD_RD_COUNTER_ADDR  >>2)) = 0xF9000000 + 0x89




RRH_TX_POWER = 24 dBm
RRH_TX_ATTENUATION = 7.3, 7.8, 5.7, 7.5


AD9025_1 Tx1 avgPower        1849
AD9025_1 Tx1 avgPeakRatio    4596
AD9025_1 Tx1 avgErrorPower   0
AD9025_1 Tx1 peakPowerErr    0
AD9025_1 Tx1 avgPowerErr     0
AD9025_1 Tx1 powerErr        0
AD9025_1 Tx2 avgPower        1810
AD9025_1 Tx2 avgPeakRatio    4744
AD9025_1 Tx2 avgErrorPower   0
AD9025_1 Tx2 peakPowerErr    0
AD9025_1 Tx2 avgPowerErr     0
AD9025_1 Tx2 powerErr        0
AD9025_1 Tx3 avgPower        1807
AD9025_1 Tx3 avgPeakRatio    5530
AD9025_1 Tx3 avgErrorPower   0
AD9025_1 Tx3 peakPowerErr    0
AD9025_1 Tx3 avgPowerErr     0
AD9025_1 Tx3 powerErr        0
AD9025_1 Tx4 avgPower        1787
AD9025_1 Tx4 avgPeakRatio    4809
AD9025_1 Tx4 avgErrorPower   0
AD9025_1 Tx4 peakPowerErr    0
AD9025_1 Tx4 avgPowerErr     0
AD9025_1 Tx4 powerErr        0


* Average Power in dBFS = 10 * log10(avgPower/2^16)
* Power Error in dBFS = 10 * log10(avgErrorPower/2^16)
*
* Ratio calculation for avgPeakRatio : avgPower/peakPower = ((avgPeakRatio) / 2^15)



iperf
Ipref client: iperf -c 192.0.0.2 -u -p 6002 -l 1400 -i 1 -b 1000m -t 999999
Iperf server: iperf -s -u -p 6002 -i 1 -w 32m



https://www.instagram.com/tv/CUo03lsN8RV/?utm_source=ig_web_copy_link



cal_mean_tx.txt
3750 5 84 128 177 227 278
3840 5 78 125 173 223 273
3930 5 68 115 165 215 264

cal_ofst_tx.txt
3750 4 -7 -3 -19 -6
3840 4 -5 0 -21 -3
3930 4 -3 0 -21 -4

cal_mean_rx.txt
3750 1 216
3840 1 217
3930 1 210

cat cal_ofst_rx.txt
3750 4 7 0 -17 0
3840 4 8 7 -13 0
3930 4 0 0 -11 0


RRH_TX_ATTENUATION = 7.3, 7.8, 5.7, 7.5

78


RRH_RX_ATTENUATION = 22.5, 22.4, 20.4, 21.7


init
Tx1 avgPower        2
Tx1 avgPeakRatio    32767
Tx1 avgErrorPower   0
Tx2 avgPower        0
Tx2 avgPeakRatio    32767
Tx2 avgErrorPower   0
Tx3 avgPower        2
Tx3 avgPeakRatio    32767
Tx3 avgErrorPower   0
Tx4 avgPower        2
Tx4 avgPeakRatio    32767
Tx4 avgErrorPower   0

0.9
Tx1 avgPower        783
Tx1 avgPeakRatio    4289
Tx1 avgErrorPower   0
Tx2 avgPower        909
Tx2 avgPeakRatio    5991
Tx2 avgErrorPower   0
Tx3 avgPower        944
Tx3 avgPeakRatio    5474
Tx3 avgErrorPower   0
Tx4 avgPower        899
Tx4 avgPeakRatio    5843
Tx4 avgErrorPower   0

1.0
Tx1 avgPower        948
Tx1 avgPeakRatio    5622
Tx1 avgErrorPower   0
Tx2 avgPower        902
Tx2 avgPeakRatio    5349
Tx2 avgErrorPower   0
Tx3 avgPower        895
Tx3 avgPeakRatio    5026
Tx3 avgErrorPower   0
Tx4 avgPower        938
Tx4 avgPeakRatio    5658
Tx4 avgErrorPower   0

1.1
Tx1 avgPower        1116
Tx1 avgPeakRatio    4799
Tx1 avgErrorPower   0
Tx2 avgPower        868
Tx2 avgPeakRatio    5099
Tx2 avgErrorPower   0
Tx3 avgPower        920
Tx3 avgPeakRatio    6213
Tx3 avgErrorPower   0
Tx4 avgPower        917
Tx4 avgPeakRatio    5697
Tx4 avgErrorPower   0

1.2
Tx1 avgPower        1343
Tx1 avgPeakRatio    5210
Tx1 avgErrorPower   0
Tx2 avgPower        843
Tx2 avgPeakRatio    5066
Tx2 avgErrorPower   0
Tx3 avgPower        929
Tx3 avgPeakRatio    5881
Tx3 avgErrorPower   0
Tx4 avgPower        894
Tx4 avgPeakRatio    5274
Tx4 avgErrorPower   0

1.3
Tx1 avgPower        1589
Tx1 avgPeakRatio    6151
Tx1 avgErrorPower   0
Tx2 avgPower        859
Tx2 avgPeakRatio    5245
Tx2 avgErrorPower   0
Tx3 avgPower        944
Tx3 avgPeakRatio    7060
Tx3 avgErrorPower   0
Tx4 avgPower        917
Tx4 avgPeakRatio    6118
Tx4 avgErrorPower   0

1.4
Tx1 avgPower        1750
Tx1 avgPeakRatio    6486
Tx1 avgErrorPower   0
Tx2 avgPower        891
Tx2 avgPeakRatio    5123
Tx2 avgErrorPower   0
Tx3 avgPower        886
Tx3 avgPeakRatio    4736
Tx3 avgErrorPower   0
Tx4 avgPower        884
Tx4 avgPeakRatio    3943
Tx4 avgErrorPower   0

1.5
Tx1 avgPower        2058
Tx1 avgPeakRatio    5187
Tx1 avgErrorPower   0
Tx2 avgPower        869
Tx2 avgPeakRatio    5153
Tx2 avgErrorPower   0
Tx3 avgPower        927
Tx3 avgPeakRatio    6330
Tx3 avgErrorPower   0
Tx4 avgPower        894
Tx4 avgPeakRatio    5620
Tx4 avgErrorPower   0

1.6
Tx1 avgPower        2257
Tx1 avgPeakRatio    6770
Tx1 avgErrorPower   0
Tx2 avgPower        933
Tx2 avgPeakRatio    5506
Tx2 avgErrorPower   0
Tx3 avgPower        934
Tx3 avgPeakRatio    5295
Tx3 avgErrorPower   0
Tx4 avgPower        894
Tx4 avgPeakRatio    6463
Tx4 avgErrorPower   0


1.7
Tx1 avgPower        2521
Tx1 avgPeakRatio    4654
Tx1 avgErrorPower   0
Tx2 avgPower        888
Tx2 avgPeakRatio    5865
Tx2 avgErrorPower   0
Tx3 avgPower        908
Tx3 avgPeakRatio    5477
Tx3 avgErrorPower   0
Tx4 avgPower        926
Tx4 avgPeakRatio    4647
Tx4 avgErrorPower   0

1.8
Tx1 avgPower        2863
Tx1 avgPeakRatio    4622
Tx1 avgErrorPower   0
Tx2 avgPower        922
Tx2 avgPeakRatio    4807
Tx2 avgErrorPower   0
Tx3 avgPower        958
Tx3 avgPeakRatio    6181
Tx3 avgErrorPower   0
Tx4 avgPower        889
Tx4 avgPeakRatio    4946
Tx4 avgErrorPower   0

1.9
Tx1 avgPower        3023
Tx1 avgPeakRatio    5861
Tx1 avgErrorPower   0
Tx2 avgPower        897
Tx2 avgPeakRatio    5728
Tx2 avgErrorPower   0
Tx3 avgPower        951
Tx3 avgPeakRatio    5335
Tx3 avgErrorPower   0
Tx4 avgPower        924
Tx4 avgPeakRatio    5954
Tx4 avgErrorPower   0

2.0(x)
Tx1 avgPower        3309
Tx1 avgPeakRatio    3843
Tx1 avgErrorPower   0
Tx1 peakPowerErr    1
Tx1 avgPowerErr     0
Tx1 powerErr        0
Tx2 avgPower        903
Tx2 avgPeakRatio    4048
Tx2 avgErrorPower   0
Tx3 avgPower        935
Tx3 avgPeakRatio    6127
Tx3 avgErrorPower   0
Tx4 avgPower        900
Tx4 avgPeakRatio    6168
Tx4 avgErrorPower   0



Tx1 avgPower        14589
Tx1 avgPeakRatio    31800
Tx1 avgErrorPower   0
Tx1 peakPowerErr    1
Tx1 avgPowerErr     0
Tx1 powerErr        0
Tx2 avgPower        14654
Tx2 avgPeakRatio    31978
Tx2 avgErrorPower   0
Tx2 peakPowerErr    1
Tx2 avgPowerErr     0
Tx2 powerErr        0
Tx3 avgPower        14695
Tx3 avgPeakRatio    31324
Tx3 avgErrorPower   0
Tx3 peakPowerErr    1
Tx3 avgPowerErr     0
Tx3 powerErr        0
Tx4 avgPower        14506
Tx4 avgPeakRatio    31697
Tx4 avgErrorPower   0
Tx4 peakPowerErr    1
Tx4 avgPowerErr     0
Tx4 powerErr        0


5G NR CSI Report中关于codebook/PMI的理解（1）
https://blog.csdn.net/GiveMe5G/article/details/105187987
https://blog.csdn.net/GiveMe5G/article/details/105225416

5G/NR - CSI RS Codebook   
https://www.sharetechnote.com/html/5G/5G_CSI_RS_Codebook.html   


ip plan for 506
172.18.73.13 BBU(cu/du)
172.18.73.14 jbd-5GC-N2
172.18.73.15 jbd-5GC-N3

172.18.73.16 fhk-5GC-N2
172.18.73.17 fhk-nms
172.18.73.18 fhk-UPF-N3



# netstat -anSlp
Active Internet connections (servers and established)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name    
sctp                168.168.31.101:38472                            LISTEN      22448/./gnb_cu      
sctp                192.168.120.25:38422                            LISTEN      22448/./gnb_cu      
sctp       0      0 168.168.31.102:38472    168.168.31.101:38472    ESTABLISHED 21880/./gnb_du      
sctp       0      0 192.168.120.25:38412    192.168.120.139:38412   ESTABLISHED 22448/./gnb_cu      
sctp       0      0 168.168.31.101:38472    168.168.31.102:38472    ESTABLISHED 22448/./gnb_cu  


[root@localhost log]# netstat -anSlp
Active Internet connections (servers and established)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name    
sctp                168.168.31.101:38472                            LISTEN      9047/./gnb_cu       
sctp                168.168.31.102:38422                            LISTEN      9047/./gnb_cu       
sctp       0      0 168.168.31.102:38472    168.168.31.101:38472    ESTABLISHED 10522/./gnb_du      
sctp       0      0 172.18.73.10:38412      172.18.73.14:38412      ESTABLISHED 9047/./gnb_cu       
sctp       0      0 168.168.31.101:38422    1.1.1.1:38422           CLOSE       9047/./gnb_cu       
sctp       0      0 168.168.31.101:38472    168.168.31.102:38472    ESTABLISHED 9047/./gnb_cu 


ps -ef | grep "ptp4l\|phc2sys\|l1app\|gnb\|confd\|monitor"

[root@rru_tester ~]# ps -ef | grep "ptp4l\|phc2sys\|l1app\|gnb\|confd\|monitor"
root       7900   7887  0 Feb16 ?        00:00:27 ptp4l -i enp134s0f0 -m -s -f /opt/faca/ptp/ptp4l-unicast.conf
root       7963   7950  0 Feb16 ?        00:00:09 phc2sys -s enp134s0f0 -w -m -n 44
root     103043 102926 99 Feb17 ?        2-02:41:36 ./l1app table 0 1 --cfgfile=phycfg_xran.xml
root     103261      1  0 Feb17 ?        00:00:05 /bin/bash /opt/faca/FlexRAN/monitor.sh
root     103441      1  0 Feb17 ?        00:00:02 /home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/lib/confd/erts/bin/confd -K false -MHe true -- -root /home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/lib/confd -progname confd -- -home /opt/faca -- -smp disable -boot confd -delayed-detach -noshell -noinput -yaws embedded true -stacktrace_depth 24 -addloadpath /home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/etc/confd -shutdown_time 30000 -conffile ../config/confd.conf -max_fds 1024 -detached-fd 4
root     103506 103473 99 Feb17 ?        1-13:35:20 ./gnb_cu
root     103712      1  0 Feb17 ?        00:00:05 /bin/bash /opt/faca/FlexXCU/monitor.sh
root     103842      1  0 Feb17 ?        00:00:02 /home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/lib/confd/erts/bin/confd -K false -MHe true -- -root /home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/lib/confd -progname confd -- -home /opt/faca -- -smp disable -boot confd -delayed-detach -noshell -noinput -yaws embedded true -stacktrace_depth 24 -addloadpath /home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/etc/confd -shutdown_time 30000 -conffile ../config/confd.conf -max_fds 1024 -detached-fd 4
root     103867 103859  4 Feb17 pts/0    01:33:57 ./gnb_du -f ../config/ssi_mem
root     104099      1  0 Feb17 ?        00:00:05 /bin/bash /opt/faca/FlexXDU/monitor.sh
root     171684 171450  0 22:51 pts/2    00:00:00 grep --color=auto ptp4l\|phc2sys\|l1app\|gnb\|confd\|monitor


rpm -qa | grep faca | while read line ; do rpm -e "$line" ; done

while true; do date; sleep 1; done



while true; ps -ef | grep ptp4l; sleep 1; done


find /sys/devices/system/node -name "*_hugepages" | xargs -I {} bash -c "echo {} \$(cat {})" bash
ls -lh /dev/hugepages/


ip route add 192.168.99.0/24 via 192.168.82.100

DTU layer_ul只支援1
IDU layer_ul可支援1/2

vf 0 vlan 2 up 61.02.0
vf 1 vlan 1 cp 61.02.1

預設值
[root@gnb2011 ~]# ipmitool raw 0x06 0x52 0x09 0xa0 0x09 0x1c 0x20
 ff ff ff ff ff ff ff ff ff

寫MAC
[root@gnb2011 ~]# ipmitool raw 0x06 0x52 0x09 0xa0 0x00 0x1c 0x20 0x97 0x02 0x00 0x00 0xaa 0xbb 0xcc 0xdd

讀MAC
[root@gnb2011 ~]# ipmitool raw 0x06 0x52 0x09 0xa0 0x09 0x1c 0x20
 97 02 00 00 aa bb cc dd ff
 
 
# ip route
168.168.0.0/16 dev enp97s0f2 proto kernel scope link src 168.168.31.101 
172.18.0.0/16 dev enp134s0f1 proto kernel scope link src 172.18.71.7 
192.168.6.0/24 dev enp134s0f0 proto kernel scope link src 192.168.6.49 metric 101 
192.168.82.0/24 dev enp97s0f3 proto kernel scope link src 192.168.82.7 metric 100 
192.168.99.0/24 via 192.168.82.100 dev enp97s0f3 proto static metric 100

/etc/sysconfig/network-scripts/route-enp97s0f3
192.168.99.0/24 via 192.168.82.100

192.168.99.0/255.255.255.0 via 192.168.82.100 dev enp97s0f3


rm -rf /etc/systemd/system/FlexRAN.service
rm -rf /etc/systemd/system/CU.service
rm -rf /etc/systemd/system/DU.service
rm -rf /etc/systemd/system/ptp.service
rm -rf /etc/systemd/system/phc.service
rm -rf /etc/systemd/system/l1app_monitor.service
rm -rf /etc/systemd/system/gnb_cu_monitor.service
rm -rf /etc/systemd/system/gnb_du_monitor.service
crontab -r
rm -rf /home/faca/BBU
rm -rf /opt/faca
update-alternatives --remove bbu_cli /home/faca/BBU/bbu_cli
update-alternatives --remove FlexRAN /home/faca/BBU/FlexRAN/20.11
update-alternatives --remove FlexXCU /home/faca/BBU/FlexXCU/2.2
update-alternatives --remove FlexXDU /home/faca/BBU/FlexXDU/2.2



/etc/sysconfig/network-scripts/ifcfg-enp97s0f0
NM_CONTROLLED="no"


ifconfig enp97s0f1:CULow "168.168.31.101" down
ifconfig enp97s0f1:DU "168.168.31.102" down
ifconfig enp134s0f3:NgC "192.168.120.25" down
ifconfig enp216s0f0:NgU "5.5.5.13" down

tcpdump -i any -w 8.pcap



long term
1. xml 替換模板
   => 編輯一個文件，可以程式化進行 config
   
2. interactive config or make a config file to 達到更方便的 config 方式，提高擴充性及便利性
   
3. apply patch

4.  xnc/xnu/x2c ... ip address

short term
1. 累贅的參數可以拿掉
   a. N3000 pcie address
   b. QAT VF pcie address
   c. dpdk pcie address to RRH
   
2. bbu-cli --log 可以先顯示 log 的 last_modified，增加可讀性

3. 當 bbu-cli --start 後，若是卡在某個 service 的啟動，增加提示? 增加 error log 顯示? 避免使用者不知所措

4. 新增控制 QAM table/mcs/p0normal 的設定 
   (將 config 指令分成 customer mode/factory mode)
   
5. bbu-cli --list 顯示各module的版本 
   bbu-cli 1.3.0
   ptp 1.1.0
   FlexRAN 20.11
   CU 2.2
   DU 2.2
   
   bbu-cli --version 顯示整個BBU的版本
   BBU 2.2.0
   
6. switch 指令的需求?

7. bbu-cli --uninstall 指令 => 完整移除?!
   bbu-cli --update 指令 => 同版本覆蓋更新?!
   bbu-cli --install?!
   
8. strengthen error handling and debug helping
   a. 在 FlexRAN restart/stop...?! 時顯示資訊提醒使用者 => 用 wall 廣播?! 用last event紀錄 再用 bbu-cli --event查詢?
   b. netstat -anSlp
   c. ip a

Known Issue
1. 在 reboot 情況下，BBU 會無法成功建立連線
   透過 network config 去做 NgC/NgU/CULow/DU 設定，避免在 reboot 的情況下，某些 network interface 會 reset 並 clean 掉
   
   
   
bbu-cli --config ptp profile g8275.2 if enp134s0f0 host_ip 192.168.6.49 gm_ip 192.168.6.100
bbu-cli --config flexran fh_mac 00:11:22:33:44:66 dev_fec 40:00.0
bbu-cli --config cell 0 fh_if enp97s0f0 fh_cp 61:02.1 fh_up 61:02.0 ru_mac aa:bb:cc:dd:ee:ff rrh_freq N7901
bbu-cli --config cell 1 fh_if enp97s0f1 fh_cp 61:06.1 fh_up 61:06.0 ru_mac aa:bb:cc:dd:ee:fe rrh_freq N7901
bbu-cli --config cu cu_f1_if enp97s0f2 cu_f1c_ip 168.168.31.101 cu_f1u_ip 168.168.31.101 du_f1_if enp97s0f2 du_f1c_ip 168.168.31.102 du_f1u_ip 168.168.31.102
bbu-cli --config cu ngc_if enp134s0f1 ngc_local 172.18.71.7 ngc_remote 172.18.71.10 ngu_if auto ngu_local 172.18.73.7
bbu-cli --config cu crypto_port_0 b1:01.1 crypto_port_1 b1:01.2
bbu-cli --config cu mcc 460 mnc 11


bbu-cli --config du frame 3DSU
3DSU
3DS2U4D
3DS2UDSUU

   
   
bbu-cli --config cu ngc_if enp134s0f0 ngc_local 192.168.120.25 ngc_remote 192.168.120.139 ngu_if auto ngu_local 192.168.120.25
bbu-cli --config cu ngc_if enp134s0f0 ngc_local 192.168.120.25 ngc_remote 192.168.120.139 ngu_if auto ngu_local 5.5.5.228
bbu-cli --config cu ngc_if enp134s0f0 ngc_local 192.168.120.25 ngc_remote 192.168.120.139 ngu_if enp134s0f0 ngu_local 5.5.5.228
  
  
  
ptp4l[9962.620]: rms    5 max   12 freq  -3774 +/-   8 delay   218 +/-   1
ptp4l[9963.620]: rms    4 max    7 freq  -3776 +/-   7 delay   217 +/-   1
ptp4l[9964.620]: rms    5 max    9 freq  -3774 +/-   8 delay   218 +/-   1
ptp4l[9965.620]: rms    6 max   11 freq  -3774 +/-  10 delay   217 +/-   2
ptp4l[9966.620]: rms    4 max    9 freq  -3775 +/-   6 delay   217 +/-   1


phc2sys[10002.332]: CLOCK_REALTIME phc offset        -1 s2 freq    -921 delay   1135
phc2sys[10003.332]: CLOCK_REALTIME phc offset         1 s2 freq    -919 delay   1144
phc2sys[10004.333]: CLOCK_REALTIME phc offset         1 s2 freq    -919 delay   1140
phc2sys[10005.333]: CLOCK_REALTIME phc offset         4 s2 freq    -915 delay   1134
phc2sys[10006.333]: CLOCK_REALTIME phc offset        -2 s2 freq    -920 delay   1131




netconf=rpc/edit-config/config/ME/GNBDUFunction/F1C_EP/localAddress/ip_addr



import imp
    with open(os.environ['BBU_CLI_LIB']+"/bbu_env.sh", "r") as f:
        global env
        env = imp.load_source('env', '', f)






bbu_update_runtime_lib.sh:170:  sed -i -e "s@CU_mcc =.*@CU_mcc = $mcc@" -e "s@CU_mnc =.*@CU_mnc = $mnc@" -e "s@CU_plmn_config_time =.*@CU_plmn_config_time = $config_time@" -e "s@DU_mcc =.*@DU_mcc = $mcc@" -e "s@DU_mnc =.*@DU_mnc = $mnc@" -e "s@DU_plmn_config_time =.*@DU_plmn_config_time = $config_time@" $BBU_CONFIG_PATH/$RUNTIME_CFG

config/bbu_runtime.cfg:35:DU_plmn_config_time = 1611532035
config/bbu_runtime_env.sh:27:DU_plmn_config_time="1611532035"



    if sys.version_info < (2, 7):
        print("Point 1")
        found = [element for element in tree.getiterator() if element.text == '7799']
    else:
        print("Point 2")
        found = [element for element in tree.iter() if element.text == '7799']

    print(found[0].tag


    
    
    
    bbu_cli  FlexRAN  FlexXCU  FlexXDU  log  patch_orig  patch_running  ptp
    
bbu-cli --config ptp profile g8275.2 if enp0s8 host_ip 192.168.5.49 gm_ip 192.168.5.100
bbu-cli --config flexran fh_mac 00:11:22:33:44:66 dev_fec 40:00.0
bbu-cli --config cell 0 fh_if enp97s0f0 fh_cp 61:02.1 fh_up 61:02.0 ru_mac aa:bb:cc:dd:ee:ff rrh_freq N7901
bbu-cli --config cell 1 fh_if enp97s0f1 fh_cp 61:06.1 fh_up 61:06.0 ru_mac aa:bb:cc:dd:ee:fe rrh_freq N7901
bbu-cli --config cu cu_f1_if enp0s8 cu_f1c_ip 168.168.31.101 cu_f1u_ip 168.168.31.101 du_f1_if enp0s8 du_f1c_ip 168.168.31.102 du_f1u_ip 168.168.31.102
bbu-cli --config cu ngc_if enp0s8 ngc_local 172.18.71.7 ngc_remote 172.18.71.10 ngu_if enp0s8 ngu_local 172.18.73.7
bbu-cli --config cu crypto_port_0 b1:01.1 crypto_port_1 b1:01.2
bbu-cli --config cu mcc 460 mnc 11
bbu-cli --config du frame 3DS2U4D

CU_OAM="oam_cu.sh"
CU_OAM_DEFAULT=$CU_OAM

  echo "Optional Cell Configuration:"
  printf "%-20s %-20s %-20s\n" "Cell 0" "Cell 1" "Cell 2"
  printf "%-20s %-20s %-20s\n" "layer_ul: $DU_Cell_0_layer_ul" "layer_ul: $DU_Cell_1_layer_ul" "layer_ul: $DU_Cell_2_layer_ul"
  printf "%-20s %-20s %-20s\n" "layer_dl: $DU_Cell_0_layer_dl" "layer_dl: $DU_Cell_1_layer_dl" "layer_dl: $DU_Cell_2_layer_dl"
  printf "%-20s %-20s %-20s\n" "qam_table_ul: $DU_Cell_0_qam_table_ul" "qam_table_ul: $DU_Cell_1_qam_table_ul" "qam_table_ul: $DU_Cell_2_qam_table_ul"
  printf "%-20s %-20s %-20s\n" "qam_table_dl: $DU_Cell_0_qam_table_dl" "qam_table_dl: $DU_Cell_1_qam_table_dl" "qam_table_dl: $DU_Cell_2_qam_table_dl"
  printf "%-20s %-20s %-20s\n" "mcs_ul: $DU_Cell_0_mcs_ul" "mcs_ul: $DU_Cell_1_mcs_ul" "mcs_ul: $DU_Cell_2_mcs_ul"
  printf "%-20s %-20s %-20s\n" "mcs_dl: $DU_Cell_0_mcs_dl" "mcs_dl: $DU_Cell_1_mcs_dl" "mcs_dl: $DU_Cell_2_mcs_dl"
  printf "%-20s %-20s %-20s\n" "p0nominal: $DU_Cell_0_p0nominal" "p0nominal: $DU_Cell_1_p0nominal" "p0nominal: $DU_Cell_2_p0nominal"

  
<nCarrierAggregationLvl>2</nCarrierAggregationLvl>
CU：
添加一組
<sNSSAI>16908288</sNSSAI>
DU：
更改掉原本的為
 <sst>1</sst>
 <sd>131072</sd>
 
[root@localhost network-scripts]# cat route-enp97s0f3
192.168.99.0/255.255.255.0 via 192.168.82.100 dev enp97s0f3


ifconfig enp134s0f1:NgC down
ifconfig enp97s0f2:CULow down
ifconfig enp97s0f2:DU down


== Mandatory ==
bbu-cli --config ptp_profile g8275.2 ptp_if enp134s0f0 ptp_host 192.168.5.49 gm_ip 192.168.5.100 
bbu-cli --config fh_mac 00:11:22:33:44:66 
bbu-cli --config cu_f1_if lo cu_f1c_ip 168.168.31.101 cu_f1u_ip 168.168.31.101 ngc_if enp134s0f1 ngc_local 172.18.73.10 ngc_remote 172.18.73.14 ngu_if enp134s0f1 ngu_local 172.18.73.10 
bbu-cli --config du_f1_if lo du_f1c_ip 168.168.31.102 du_f1u_ip 168.168.31.102 
bbu-cli --config cell 0 fh_mode direct c_vlan 1 u_vlan 2 fh_if enp97s0f0 ru_mac aa:bb:cc:dd:ee:ff rrh_freq N7801 
bbu-cli --config cell 1 fh_mode direct c_vlan 1 u_vlan 2 fh_if enp97s0f0 ru_mac aa:bb:cc:dd:ee:fe rrh_freq N7901 
bbu-cli --config cell 2 fh_mode direct c_vlan 1 u_vlan 2 fh_if enp97s0f0 ru_mac aa:bb:cc:dd:ee:fd rrh_freq N7901 

bbu-cli --config cell 0 fh_mode aggregated_by_vf c_vlan 1 u_vlan 2 fh_if enp97s0f0 
bbu-cli --config cell 1 fh_mode aggregated_by_vf c_vlan 3 u_vlan 4 fh_if enp97s0f0 
bbu-cli --config cell 2 fh_mode aggregated_by_vf c_vlan 5 u_vlan 6 fh_if enp97s0f0 

== Optional ==
bbu-cli --setting auto_recovery off
bbu-cli --deploy-arch cell_num 2 cu_instance 1 du_instance 1 f1u_ngu_dpdk on 
bbu-cli --config dev_fec 40:00.0 
bbu-cli --config ngu_mtu 1600 
bbu-cli --config mcc 460 mnc 11 
bbu-cli --config crypto_port_0 b1:01.1 crypto_port_1 b1:01.2 
bbu-cli --config frame 3DS2UDSUU 
bbu-cli --config gNBDUId 1 
bbu-cli --config xnc_server_local 168.168.31.102 xnc_client_local 168.168.31.101 xnc_client_remote 1.1.1.1 
bbu-cli --config cu_pm_control Locked cu_fm_control Locked du_pm_control Locked du_fm_control Locked 
bbu-cli --config gNBId 0 gNBIdLength 22 sNSSAI 16777217/16908288/50529801 amf_region_id 01111111 amf_set_id 0111111101 amf_pointer 011111 
bbu-cli --config cell 0 layer_ul 2 layer_dl 2 qam_table_ul 64 qam_table_dl 64 mcs_ul 16 mcs_dl 28 p0nominal_pusch -82 p0nominal_pucch -82 
bbu-cli --config cell 0 ssbFrequency 720288 rsrp 40 nrCellId_nCI 000000001 
bbu-cli --config cell 0 fh_cp 61:02.1 fh_up 61:02.0 
bbu-cli --config cell 0 slice_sst 3 slice_sd 198153 
bbu-cli --config cell 0 encAlgo NEA0 intAlgo NIA1 
bbu-cli --config cell 1 layer_ul 2 layer_dl 2 qam_table_ul 64 qam_table_dl 64 mcs_ul 16 mcs_dl 28 p0nominal_pusch -82 p0nominal_pucch -82 
bbu-cli --config cell 1 ssbFrequency 720288 rsrp 40 nrCellId_nCI 000000002 
bbu-cli --config cell 1 fh_cp 61:06.1 fh_up 61:06.0 
bbu-cli --config cell 1 slice_sst 3 slice_sd 198153 
bbu-cli --config cell 1 encAlgo NEA0 intAlgo NIA1 





-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
== Mandatory ==
bbu-cli --config ptp_profile g8275.2 ptp_if enp134s0f0 ptp_host 192.168.5.49 gm_ip 192.168.5.100
bbu-cli --config fh_mac 00:11:22:33:44:66
bbu-cli --config cu_f1_if lo cu_f1c_ip 168.168.31.101 cu_f1u_ip 168.168.31.101 ngc_if enp134s0f1 ngc_local 172.18.73.10 ngc_remote 172.18.73.14 ngu_if enp134s0f1 ngu_local 172.18.73.10
bbu-cli --config du_f1_if lo du_f1c_ip 168.168.31.102 du_f1u_ip 168.168.31.102
bbu-cli --config cell 0 fh_mode direct c_vlan 1 u_vlan 2 fh_if enp97s0f0 ru_mac aa:bb:cc:dd:ee:ff rrh_freq N7801
bbu-cli --config cell 1 fh_mode direct c_vlan 1 u_vlan 2 fh_if enp97s0f0 ru_mac aa:bb:cc:dd:ee:fe rrh_freq N7901
== Optional ==
bbu-cli --setting auto_recovery off
bbu-cli --deploy-arch cell_num 2 cu_instance 1 du_instance 1 f1u_ngu_dpdk off
bbu-cli --config dev_fec 40:00.0
bbu-cli --config ngu_mtu 1600
bbu-cli --config mcc 460 mnc 11
bbu-cli --config crypto_port_0 b1:01.1 crypto_port_1 b1:01.2
bbu-cli --config gNBDUId 1
bbu-cli --config xnc_server_local 168.168.31.102 xnc_client_local 168.168.31.101 xnc_client_remote 1.1.1.1
bbu-cli --config cu_pm_control off cu_fm_control off du_pm_control off du_fm_control off
bbu-cli --config gNBId 0 gNBIdLength 22 sNSSAI 16777217/16908288/50529801 amf_region_id 01111111 amf_set_id 0111111101 amf_pointer 011111
bbu-cli --config oam_bridge_mode enabled
bbu-cli --config cell 0 frame 3DS2U4D prachCfgIdx 158
bbu-cli --config cell 0 layer_ul 2 layer_dl 2 antenna_port_ul 2 antenna_port_dl 2
bbu-cli --config cell 0 qam_table_ul 64 qam_table_dl 64 mcs_ul 16 mcs_dl 28 p0nominal_pusch -82 p0nominal_pucch -82
bbu-cli --config cell 0 ssbFrequency 720288 rsrp 40 nrCellId_nCI 000000001
bbu-cli --config cell 0 fh_cp 61:02.1 fh_up 61:02.0
bbu-cli --config cell 0 slice_sst 3 slice_sd 198153
bbu-cli --config cell 0 encAlgo NEA0 intAlgo NIA1
bbu-cli --config cell 0 snSizeUL 18 snSizeDL 18 rlcMode RLC_UM_BIDIRECTIONAL snFieldLenUlAm size18 snFieldLenDlAm size18
bbu-cli --config cell 0 AMC on preambleRcvdTgtPwr -100
bbu-cli --config cell 0 ueInactivityTimer s20
bbu-cli --config cell 1 frame 3DS2U4D prachCfgIdx 158
bbu-cli --config cell 1 layer_ul 2 layer_dl 2 antenna_port_ul 2 antenna_port_dl 2
bbu-cli --config cell 1 qam_table_ul 64 qam_table_dl 64 mcs_ul 16 mcs_dl 28 p0nominal_pusch -82 p0nominal_pucch -82
bbu-cli --config cell 1 ssbFrequency 720288 rsrp 40 nrCellId_nCI 000000002
bbu-cli --config cell 1 fh_cp 61:02.1 fh_up 61:02.0
bbu-cli --config cell 1 slice_sst 3 slice_sd 198153
bbu-cli --config cell 1 encAlgo NEA0 intAlgo NIA1
bbu-cli --config cell 1 snSizeUL 18 snSizeDL 18 rlcMode RLC_UM_BIDIRECTIONAL snFieldLenUlAm size18 snFieldLenDlAm size18
bbu-cli --config cell 1 AMC on preambleRcvdTgtPwr -100
bbu-cli --config cell 1 ueInactivityTimer s20
    
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


in cu sys_config.txt
Ng-U:
[UPPER_FAST_PKT_CONFIG_0]
PCI_ADDRESS = 0000:12:00.1
IP_ADDR = 5.5.5.3   (需與xml Ng-U local IP 一樣)
#Supporting straight connection
DEST_ETH_ADDR = 3c:fd:fe:10:0e:c2 (UPF網孔的mac address)

F1-U:
[LOWER_FAST_PKT_CONFIG_0]
PCI_ADDRESS = 0000:12:00.1
IP_ADDR = 4.4.4.5 (需與xml F1-U local IP 一樣)
#Supporting straight connection
DEST_ETH_ADDR = 52:54:00:42:9a:e1 (DU F1-U網孔的mac address)


3dsu 3ds2udsuu 159 and 156 for rpqn都ok 
但是159 for rhon不ok  而156 for rhon ok.      

另外3ds2u4d 要158


AMC config
du.xml <featureSetBitMap>3</featureSetBitMap>
0: DL and UL AMC OFF
1: UL AMC OFF
2: DL AMC OFF
3: DL and UL AMC ON


yum install bridge-utils


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


bbu-cli --config cell 0 fh_mode direct c_vlan 1 u_vlan 2 fh_if enp97s0f0
bbu-cli --config cell 1 fh_mode direct c_vlan 1 u_vlan 2 fh_if enp134s0f0
bbu-cli --config cell 0 fh_mp_separated_if enp97s0f1 fh_mp_vlan untag
bbu-cli --config cell 1 fh_mp_separated_if enp134s0f1 fh_mp_vlan 88

bbu-cli --deploy-arch cell_num 5 cu_instance 1 du_instance 1
bbu-cli --config oam_bridge_mode enabled 
bbu-cli --config oam_bridge_ext_if eth1 
bbu-cli --config oam_bridge_ip <BR_IP> oam_bridge_mask <BR_subnet> oam_bridge_gw <BR_gw_ip>
bbu-cli --config cell 0 fh_mode aggregated_by_vf c_vlan 1 u_vlan 2 fh_if enp97s0f0
bbu-cli --config cell 1 fh_mode aggregated_by_vf c_vlan 3 u_vlan 4 fh_if enp97s0f0
bbu-cli --config cell 2 fh_mode aggregated_by_vf c_vlan 5 u_vlan 6 fh_if enp1
bbu-cli --config cell 0 fh_mplane_aggregated_by_vf enp97s2f7 fh_mplane_vlan untag 
bbu-cli --config cell 1 fh_mplane_aggregated_by_vf enp97s2f4 fh_mplane_vlan untag 
bbu-cli --config cell 2 fh_mplane_aggregated_by_vf enp97s2f4 fh_mplane_vlan untag 

bbu-cli --config cell 4 fh_mode direct c_vlan 1 u_vlan 2 fh_if enp97s0f0
bbu-cli --config cell 4 fh_mplane_separated_if enp97s0f1 fh_mplane_vlan untag 

bbu-cli --config cell 3 fh_mode aggregated_by_vf c_vlan 1 u_vlan 2 fh_if enp3
bbu-cli --config cell 3 fh_mplane_aggregated_by_vf enp3 fh_mplane_vlan 77 



bbu-cli --config oam_bridge_mode enabled 
bbu-cli --config oam_bridge_ext_if eth1 
bbu-cli --config oam_bridge_ip <BR_IP> oam_bridge_mask <BR_subnet> oam_bridge_gw <BR_gw_ip>
bbu-cli --config cell 0 fh_mp_aggregated_by_vf enp1 fh_mp_vlan untag 
bbu-cli --config cell 4 fh_mp_separated_if enp5 fh_mp_vlan untag
bbu-cli --config cell 3 fh_mp_aggregated_by_vf enp3 fh_mp_vlan 77 

brctl addbr br_oam
brctl addif eth1
brctl addif enp1
brctl addif enp3
brctl addif enp5




root@arria10:~/test# cat set_port.sh
#!/bin/sh
#echo "192.168.$1.49"
alias ll='ls -la'
ifconfig eth0 "192.168.$1.49"
ifconfig eth0
route add -net 192.168.0.0 netmask 255.255.0.0 gw "192.168.$1.150" dev eth0
#route
  
root@arria10:~/test# cat ../sdcard/RRHconfig_xran.xml
root@arria10:~/sdcard# cat RRHconfig_xran.xml 
<!--                          -->
<!--            Common        -->
<!--                          -->
<!-- RRH_DST_MAC_ADDR: Destination MAC address, fill with 6 bytes and separate each others by colon -->
RRH_DST_MAC_ADDR = 00:11:22:33:44:66
<!-- RRH_SRC_MAC_ADDR: Source MAC address, fill with 6 bytes and separate each others by colon -->
RRH_SRC_MAC_ADDR = aa:bb:cc:dd:ee:fe
<!-- RRH_RU_PORT_ID: RRH RU PORT ID, fill with 4 bytes and separate each others by common and space -->
RRH_RU_PORT_ID = 0, 1, 2, 3
<!-- RRH_EN_SPC: Enable SPC or not, 0:OFF, 1:ON -->
RRH_EN_SPC = 1
<!-- RRH_RRH_LTE_OR_NR: Indicate the spec of xRAN, 0:LTE, 1:NR -->
RRH_RRH_LTE_OR_NR = 1
<!-- RRH_TRX_EN_BIT_MASK: Bit-mask of 4 TRx, bit 0: TRx0, bit1: TRx1, bit2: TRx2, bit3: TRx3 -->
RRH_TRX_EN_BIT_MASK = 0x03
<!-- RRH_RF_EN_BIT_MASK: Bit-mask of 4 PA/LNA, bit0: PA0/LNA0, bit1: PA1/LNA1, bit2: PA2/LNA2, bit3: PA3/LNA3 -->
RRH_RF_EN_BIT_MASK = 0x03
<!-- RRH_CMPR_HDR_PRESENT: Indicate the UdCompHdr/reserved field is present or not, 0:no present; 1:present -->
RRH_CMPR_HDR_PRESENT = 1
<!-- RRH_MSGS_IN_A_SYM: Number of messages in a symbol time, (1 or 2) -->
RRH_MSGS_IN_A_SYM = 1
<!-- RRH_CMPR_TYPE: Indicate compress type. 0: No Cmpr; 1:block-floating; 2:u-law -->
RRH_CMPR_TYPE = 1
<!-- RRH_CMPR_BIT_LENGTH: Indicate the bit length after compression -->
RRH_CMPR_BIT_LENGTH = 9
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
RRH_LO_FREQUENCY_KHZ = 3352260
<!-- RRH_TX_ATTENUATION: Tx attenuation value for each layer (>10dB. NOTE: The attenuation value must be larget than 10dB) -->
RRH_TX_ATTENUATION = 36, 36, 36, 36
<!-- RRH_RX_ATTENUATION: Rx attenuation value for each layer (<30dB) -->
RRH_RX_ATTENUATION = 6, 6, 6, 6
<!-- RRH_BB_GENERAL_CTRL: General control words for Baseband      -->
<!-- Bit[0] of 1st word: Enable the filtering of MAC address      -->
<!-- Bit[1] of 1st word: Enable the UL slot tick packets per port -->
<!-- Others: Reserved                                             -->
RRH_BB_GENERAL_CTRL = 0x1, 0x0, 0x0, 0x0
<!-- RRH_RF_GENERAL_CTRL: General control words for RF -->
RRH_RF_GENERAL_CTRL = 0x0, 0x0, 0x0, 0x0
<!--                           -->
<!--            PTPV2 Related  -->
<!--                           -->
<!-- RRH_PTPV2_GRAND_MASTER_MODE: 0: Unicast, 1:Multicast -->
RRH_PTPV2_GRAND_MASTER_MODE = 0
<!-- RRH_PTPV2_GRAND_MASTER_IP: IP address of grand-master -->
RRH_PTPV2_GRAND_MASTER_IP = 192.168.6.100
<!-- RRH_PTPV2_SUB_DOMAIN_NUM: The sub-domain number -->
RRH_PTPV2_SUB_DOMAIN_NUM = 44

主要看
PTP ip => 192.168.6.100
ru mac => aa:bb:cc:dd:ee:fe
ru freq => RRH_LO_FREQUENCY_KHZ = 3352260 (N7800)

root@arria10:~/test# ./set_port.sh 6
root@arria10:~/test# ./init_rrh_config_enable_cuplane

Tx Att = 36000 36000 30000 30000
Temperature of RF board is 35 degree Celsius.
10R: sec=72 hps=1615530140 64b=0 65to128=12 total=12 uni=0 uni>1158=0 multi=12 crc_err=0
10T: sec=72 hps=1615530140 64b=0 65to128=0 total=0 uni=0 uni>1158=0 multi=0 crc_err=0 state=1 start=0 adj=1 rstcnt=0
midMax=48us @ 4010, allMax=88us @ 4010 1e4755de 1e476d2a 1e475a5d 1e475caa 1e476373 2
Latch later 1pps time=1e47f98c swi4010=1e47f98c xran_sec=1e47f98a acc_diff[3]=1 hps_sec=1615530140 cur_sec=72 PA_ON TDD
10R: sec=73 hps=1615530141 64b=0 65to128=12 total=12 uni=0 uni>1158=0 multi=12 crc_err=0
10T: sec=73 hps=1615530141 64b=0 65to128=0 total=0 uni=0 uni>1158=0 multi=0 crc_err=0 state=1 start=0 adj=1 rstcnt=0
midMax=48us @ 4010, allMax=88us @ 4010 259a55e2 259a6d2d 259a5a6e 259a5cc2 259a63b0 2
Latch later 1pps time=259af98c swi4010=259af98c xran_sec=259af98a acc_diff[4]=1 hps_sec=1615530141 cur_sec=73 PA_ON TDD
10R: sec=74 hps=1615530142 64b=0 65to128=12 total=12 uni=0 uni>1158=0 multi=12 crc_err=0
10T: sec=74 hps=1615530142 64b=0 65to128=0 total=0 uni=0 uni>1158=0 multi=0 crc_err=0 state=1 start=0 adj=1 rstcnt=0
midMax=48us @ 4010, allMax=87us @ 4010 2ced55dc 2ced6d42 2ced5a86 2ced5cab 2ced639c 2
Latch later 1pps time=2cedf98c swi4010=2cedf98c xran_sec=2cedf98a acc_diff[5]=1 hps_sec=1615530142 cur_sec=74 PA_ON TDD
10R: sec=75 hps=1615530143 64b=0 65to128=12 total=12 uni=0 uni>1158=0 multi=12 crc_err=0
10T: sec=75 hps=1615530143 64b=0 65to128=0 total=0 uni=0 uni>1158=0 multi=0 crc_err=0 state=1 start=0 adj=1 rstcnt=0
midMax=48us @ 4010, allMax=88us @ 4010 344055f1 34406d43 34405a6e 34405ccb 3440638f 2
Latch later 1pps time=3440f98c swi4010=3440f98c xran_sec=3440f98a acc_diff[6]=1 hps_sec=1615530143 cur_sec=75 PA_ON TDD

===after BBU starting
Tx Att = 36000 36000 30000 30000
Temperature of RF board is 44 degree Celsius.
10R: sec=293 hps=1615531180 64b=73804 65to128=14 total=711466 uni=711452 uni>1158=637648 multi=14 crc_err=0
10T: sec=293 hps=1615531180 64b=0 65to128=0 total=200736 uni=200736 uni>1158=165312 multi=0 crc_err=0 state=2 start=0 adj=4 rstcnt=0
midMax=141us @ 4010, allMax=153us @ 4010 77e44b52 77e48f6f 77e44fd0 77e45262 77e46a36 14
Latch later 1pps time=77e4eedd swi4010=77e4eedd xran_sec=77e4eedb acc_diff[4]=4 hps_sec=1615531180 cur_sec=293 PA_ON TDD
10R: sec=294 hps=1615531181 64b=78804 65to128=14 total=759674 uni=759660 uni>1158=680856 multi=14 crc_err=0
10T: sec=294 hps=1615531181 64b=0 65to128=0 total=214336 uni=214336 uni>1158=176512 multi=0 crc_err=0 state=2 start=0 adj=4 rstcnt=0
midMax=142us @ 4010, allMax=154us @ 4010 7f374b47 7f378f8d 7f374fce 7f375267 7f376a5f 14
Latch later 1pps time=7f37eedd swi4010=7f37eedd xran_sec=7f37eedb acc_diff[5]=4 hps_sec=1615531181 cur_sec=294 PA_ON TDD
10R: sec=295 hps=1615531182 64b=83804 65to128=14 total=807864 uni=807850 uni>1158=724046 multi=14 crc_err=0
10T: sec=295 hps=1615531182 64b=0 65to128=0 total=227936 uni=227936 uni>1158=187712 multi=0 crc_err=0 state=2 start=0 adj=4 rstcnt=0
midMax=141us @ 4010, allMax=153us @ 4010 868a4b51 868a8f75 868a4ff1 868a5254 868a6a66 14
Latch later 1pps time=868aeedd swi4010=868aeedd xran_sec=868aeedb acc_diff[6]=4 hps_sec=1615531182 cur_sec=295 PA_ON TDD
10R: sec=296 hps=1615531183 64b=88804 65to128=14 total=856065 uni=856052 uni>1158=767248 multi=14 crc_err=0
10T: sec=296 hps=1615531183 64b=0 65to128=0 total=241536 uni=241536 uni>1158=198912 multi=0 crc_err=0 state=2 start=0 adj=4 rstcnt=0
midMax=141us @ 4010, allMax=153us @ 4010 8ddd4b4c 8ddd8f6d 8ddd4fce 8ddd525c 8ddd6a45 14
Latch later 1pps time=8dddeedd swi4010=8dddeedd xran_sec=8dddeedb acc_diff[7]=4 hps_sec=1615531183 cur_sec=296 PA_ON TDD



BBU ssh to testapp vm
ssh user@172.18.73.19 1234


ssh -p 830 root@192.167.27.54
scp -P 830 root@192.167.27.54:/home/root/sdcard/RRHconfig_xran.xml .
