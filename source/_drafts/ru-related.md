---
title: ru_related
abbrlink: da3ff5cd
tags:
---
long range 黃色線 single mode 1G
short range 藍色線 multi mode 10G
紫色線 25G

* N78 RHON

for DL
TX_ATT = 7
Tx Power @O-RU (dBm) = 21

TX_ATT=10
Tx Power @O-RU (dBm) = 17

Power per RE(dBm) = -48 measured on VSA
=> -48 + 物理衰減器(32) = -16
=> Tx Power (100M Power) @O-RU 
= 10log((total RE count) x (Power per RE))
= 10log((273 x 12) x (Power per RE))
= 10log(3276) + 10log(Power per RE)
= 35 + (-16) = 19 dBm

for UL
RX_ATT = 0
power on SG = -19 dBm
-19 + (-67) = -86 dBm

* N77

set ip => set_qse.sh 27 => 會把 ip 設定成 192.167.27.49

在 /etc/profile 中，最後會去執行
./test.sh
./set_qse.sh 27



root@stratix10:~/test# cat version.txt
branch: master
version: bfe66e73a88be8a8573be6dae4e1594f8c3cb5f7
tag: v1.0.2o.432



root@stratix10:~/test# sha1sum ../sdcard/fpga_core.rbf
125246e3c5b5fc512a9d1a63655cc7c7e90218d5  ../sdcard/fpga_core.rbf

[root@localhost sample-app_20.04.c74]# ./run_o_du.sh > du.log
pmc[1381.552]: uds: sendto failed: No such file or directory
=> ptp 沒起

for example,
BBU: 192.169.20.49
BBU-PTP: 192.168.20.150
RU: 192.167.21.49
on BBU
$ route add -net 192.167.21.0/24 gw 192.167.20.150
$ ping 192.167.20.150
$ ping 192.167.21.49
$ ssh -oCiphers=aes128-ctr root@192.167.21.49

vi /etc/ssh/ssh_config
#   Protocol 2
#   Cipher 3des
   Ciphers aes128-ctr,aes192-ctr,aes256-ctr,arcfour256,arcfour128,aes128-cbc,3des-cbc
   MACs hmac-md5,hmac-sha1,umac-64@openssh.com,hmac-ripemd160
#   EscapeChar ~
#   Tunnel no
#   TunnelDevice any:any

## N77
* ssh login
1. eng version
[root@localhost ~]# ssh 192.167.27.49
2. oam version
[root@localhost ~]# ssh -P 830 root@192.167.27.49
e/4g;4uh/6x.6

* useful command
1. vi ../sdcard/RRHconfig_xran.xml
2. ./init_rrh_config_enable_cuplane &
3. ./reset_cuplane
4. /usr/utils/killptp.sh

* N77 log
1. copy bbu_utils fron ORU to host server
[root@localhost ~]# scp -r root@192.167.27.49:/home/root/test/v2.2.4q.524/bbu_utils .

2. for eng version
a. on host server
[root@localhost bbu_utils]# ./bbu_get_logs.run 192.167.27.49
2021_Oct_14_16_08_51.log

b. 
[root@localhost bbu_utils]# vim output_2021_Oct_14_16_08_51.log

3. for oam version
a. on ORU
root@arria10:~/test# ./dump_log
rm /home/root/test/log.txt
hexdump -C /home/root/test/0.log > /home/root/test/0.txt
cat /home/root/test/0.txt >> /home/root/test/log.txt
hexdump -C /home/root/test/1.log > /home/root/test/1.txt
cat /home/root/test/1.txt >> /home/root/test/log.txt
hexdump -C /home/root/test/2.log > /home/root/test/2.txt
cat /home/root/test/2.txt >> /home/root/test/log.txt

b. copy log.txt from ORU to host server
[root@localhost bbu_utils]# scp -P 830 root@192.167.27.49:/home/root/test/log.txt .

c. decode hex format
[root@localhost bbu_utils]# ./loghex_to_string log.txt

d. [root@localhost bbu_utils]# vim output_log.txt

* 開關 OAM 模組
./set_oam_mode -e 192.168.10.49
./set_oam_mode -d

* oam version 下，安裝 eng version，要下 ./set_oam_mode -d

* oam mode 下看log
```
[root@opennesswkn-1 bbu_utils]# scp -P 830 root@192.167.27.56:/home/root/test/log.txt .
root@192.167.27.56's password:
log.txt                                                                                                                           100%  133KB   8.5MB/s   00:00
[root@opennesswkn-1 bbu_utils]# ./loghex_to_string log.txt
log.txt
[root@opennesswkn-1 bbu_utils]# ls -al output_log.txt
-rw-r--r-- 1 root root 76312 Nov  8 10:58 output_log.txt
```