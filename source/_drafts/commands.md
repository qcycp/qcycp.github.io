---
title: commands
abbrlink: 9a3e132c
tags:
---
* BBU 成功啟動後，跟 5GC 的連線狀態
```
$ netstat -anSlp
Active Internet connections (servers and established)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name    
sctp                168.168.31.101:38472                            LISTEN      9047/./gnb_cu       
sctp                168.168.31.102:38422                            LISTEN      9047/./gnb_cu       
sctp       0      0 168.168.31.102:38472    168.168.31.101:38472    ESTABLISHED 10522/./gnb_du      
sctp       0      0 172.18.73.10:38412      172.18.73.14:38412      ESTABLISHED 9047/./gnb_cu       
sctp       0      0 168.168.31.101:38422    1.1.1.1:38422           CLOSE       9047/./gnb_cu       
sctp       0      0 168.168.31.101:38472    168.168.31.102:38472    ESTABLISHED 9047/./gnb_cu 
```
* BBU 啟動後，所有的 process
```
$ ps -ef | grep "ptp4l\|phc2sys\|l1app\|gnb\|confd\|monitor"
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
```
ip a
ip link show
ip route add 192.168.99.0/24 via 192.168.82.100

echo 2 > /sys/class/net/enp97s0f0/device/sriov_numvfs
/opt/dpdk-19.11/usetools/dpdk-devbind.py --status-dev -net
/opt/dpdk-19.11/usertools/dpdk-devbind.py -b igb_uio 0000:61:02.0
/opt/dpdk-19.11/usertools/dpdk-devbind.py -b igb_uio 0000:61:02.1
/opt/dpdk-19.11/usertools/dpdk-devbind.py -u 0000:61:02.0
/opt/dpdk-19.11/usertools/dpdk-devbind.py -u 0000:61:02.1
ip link set enp97s0f0 vf 0 vlan 2
ip link set enp97s0f0 vf 1 vlan 1
ip link set enp97s0f0 vf 0 mac 00:11:22:33:44:66
ip link set enp97s0f0 vf 1 mac 00:11:22:33:44:66
echo add 1,2 > /sys/class/net/enp97s0f0/device/sriov/2/vlan_mirror
ifconfig enp97s2f2 up
ifconfig enp97s2f2 9000
tcpdump -i enp97s2f2 -w ecpri.pcap

[root@si_bbu app]# ip link show enp216s0f1
15: enp216s0f1: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq state DOWN mode DEFAULT qlen 1000
    link/ether 40:a6:b7:1f:58:6d brd ff:ff:ff:ff:ff:ff
    vf 0 MAC 00:11:22:33:44:66, vlan 2, spoof checking on, link-state auto, trust off
    vf 1 MAC 00:11:22:33:44:66, vlan 1, spoof checking on, link-state auto, trust off

[root@si_bbu app]# ethtool enp216s0f1
Settings for enp216s0f1:
    Supported ports: [ FIBRE ]
    Supported link modes:   1000baseX/Full 
                            10000baseSR/Full 
    Supported pause frame use: Symmetric
    Supports auto-negotiation: Yes
    Advertised link modes:  1000baseX/Full 
                            10000baseSR/Full 
    Advertised pause frame use: No
    Advertised auto-negotiation: Yes
    Speed: Unknown!
    Duplex: Unknown! (255)
    Port: FIBRE
    PHYAD: 0
    Transceiver: internal
    Auto-negotiation: off
    Supports Wake-on: d
    Wake-on: d
    Current message level: 0x0000000f (15)
                   drv probe link timer
    Link detected: no

$[root@localhost network-scripts]# cat route-enp97s0f3
192.168.99.0/255.255.255.0 via 192.168.82.100 dev enp97s0f3

vi /etc/sysconfig/network-scripts/ifcfg-eth0
ifdown /etc/sysconfig/network-scripts/ifcfg-eth0
ifup /etc/sysconfig/network-scripts/ifcfg-eth0

ifconfig enp97s0f1:CULow "168.168.31.101" down
ifconfig enp97s0f1:DU "168.168.31.102" down
ifconfig enp134s0f3:NgC "192.168.120.25" down
ifconfig enp216s0f0:NgU "5.5.5.13" down

tcpdump -i any -w gNB.pcap
tcpdump -i any -w gNB.pcap -s0 sctp
tcpdump -r gNB.pcap

rpm -qa | grep faca | while read line ; do rpm -e "$line" ; done
while true; do date; sleep 1; done

find /sys/devices/system/node -name "*_hugepages" | xargs -I {} bash -c "echo {} \$(cat {})" bash
ls -lh /dev/hugepages/

crontab -r # clear all cron jobs
crontab -l # list all cron jobs

ls /etc/systemd/system/
systemctl start ptp4l.service
systemctl enable ptp4l.service
systemctl disable ptp4l.service
systemctl is-active ptp4l.service
systemctl is-enabled ptp4l.service
systemctl --all --type service
systemctl list-units --type service --state running
systemctl list-unit-files
journalctl -x -u ptp4l.service

ptp4l -i enp134s0f0 -m -s -f ptp4l-multicast.conf
phc2sys -s enp134s0f0 -w -m -n 24

ptp4l -i enp134s0f0 -m -s -f ptp4l-unicast.conf
phc2sys -s enp134s0f0 -w -m -n 44

echo 
/opt/dpdk-19.11/usertools/test-bbdev.py -c validation -n 64 -b 1 -i -v ./test_vectors/ldpc_dec_v7813.data

update-alternatives --remove bbu_cli /home/faca/BBU/bbu_cli
update-alternatives --remove FlexRAN /home/faca/BBU/FlexRAN/20.11
update-alternatives --remove FlexXCU /home/faca/BBU/FlexXCU/2.2
update-alternatives --remove FlexXDU /home/faca/BBU/FlexXDU/2.2

預設值
```
[root@gnb2011 ~]# ipmitool raw 0x06 0x52 0x09 0xa0 0x09 0x1c 0x20
 ff ff ff ff ff ff ff ff ff
```
寫MAC
```
[root@gnb2011 ~]# ipmitool raw 0x06 0x52 0x09 0xa0 0x00 0x1c 0x20 0x97 0x02 0x00 0x00 0xaa 0xbb 0xcc 0xdd
```
讀MAC
```
[root@gnb2011 ~]# ipmitool raw 0x06 0x52 0x09 0xa0 0x09 0x1c 0x20
 97 02 00 00 aa bb cc dd ff
```
screen -dmS du bash -c './start_gNB.sh 2>&1 | tee /opt/faca/log/FlexXDU.log'

reset N3000
echo 1 > /sys/bus/pci/devices/0000:b4:00.0/reset

af:00.0 Processing accelerators: Intel Corporation Device 0d5c          => MountBryce FEC (ACC100)
20:00.0 Processing accelerators: Intel Corporation Device 0d8f (rev 01) => Vista Creek (N3000)

QAT
[root@locahost ~]# lspci | grep 37c8
b1:00.0 Co-processor: Intel Corporation Device 37c8 (rev 04)

一張QAT有三個實體的PF (37c8)，目前挑第一個 enable VF 
帶起來的 VF 會有 16 個 (37c9)
[root@locahost ~]# echo 1 > /sys/bus/pci/devices/0000:b1:00.0/sriov_numvfs
[root@locahost ~]# lspci | grep 37c9
3d:00.0 Co-processor: Intel Corporation Device 37c8 (rev 04)
3d:01.0 Co-processor: Intel Corporation Device 37c9 (rev 04)
3d:01.1 Co-processor: Intel Corporation Device 37c9 (rev 04)
3d:01.2 Co-processor: Intel Corporation Device 37c9 (rev 04)
3d:01.3 Co-processor: Intel Corporation Device 37c9 (rev 04)
3d:01.4 Co-processor: Intel Corporation Device 37c9 (rev 04)
3d:01.5 Co-processor: Intel Corporation Device 37c9 (rev 04)
3d:01.6 Co-processor: Intel Corporation Device 37c9 (rev 04)
3d:01.7 Co-processor: Intel Corporation Device 37c9 (rev 04)
3d:02.0 Co-processor: Intel Corporation Device 37c9 (rev 04)
3d:02.1 Co-processor: Intel Corporation Device 37c9 (rev 04)
3d:02.2 Co-processor: Intel Corporation Device 37c9 (rev 04)
3d:02.3 Co-processor: Intel Corporation Device 37c9 (rev 04)
3d:02.4 Co-processor: Intel Corporation Device 37c9 (rev 04)
3d:02.5 Co-processor: Intel Corporation Device 37c9 (rev 04)
3d:02.6 Co-processor: Intel Corporation Device 37c9 (rev 04)
3d:02.7 Co-processor: Intel Corporation Device 37c9 (rev 04)
3e:00.0 Co-processor: Intel Corporation Device 37c8 (rev 04)
3f:00.0 Co-processor: Intel Corporation Device 37c8 (rev 04)


$ wget ftp://ecs_scm:ecs123456@10.60.6.30:"/MEC_R3_Release/FACA Solution Release/FAE_release_repository/sw_release/*.rpm"
$ rpm -ivh *


./dpdk-devbind.py --status
0000:86:00.0 'Ethernet Controller X710 for 10GbE SFP+ 1572' if=enp134s0f0 drv=i40e unused= *Active*
0000:86:00.1 'Ethernet Controller X710 for 10GbE SFP+ 1572' if=enp134s0f1 drv=i40e unused= 

echo 2 > /sys/class/net/enp134s0f1/device/sriov_numvfs
./dpdk-devbind.py --status
0000:86:0a.0 'XL710/X710 Virtual Function 154c' if=enp134s10 drv=i40evf unused= 
0000:86:0a.1 'XL710/X710 Virtual Function 154c' if=enp134s10f1 drv=i40evf unused= 

brctl addbr br_oam
brctl addif eth1

sftp ecs_scm@10.60.6.30

 yum install bridge-utils