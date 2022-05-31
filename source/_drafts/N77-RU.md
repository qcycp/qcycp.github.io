---
title: N77_RU
abbrlink: e019d11
tags:
---
```
a. set SG Amplitude -32.7 dBm (- 2.3 cable loss - 35 = -70 dBm per RE), then get uplink demodulated I/Q rms = 15488
b. set SG Amplitude -37.7 dBm (- 2.3 cable loss - 35 = -75 dBm per RE), then get uplink demodulated I/Q rms = 8724
c. set SG Amplitude -42.7 dBm (- 2.3 cable loss - 35 = -80 dBm per RE), then get uplink demodulated I/Q rms = 4903

20log(15488)=83.79991 => -70-83.79991=153.8
20log(8724)=78.814 => -75-78.814=153.8
20log(4903)=73.809 => -80-73.809=153.8
=> scaler = -153.8

suppose that now we have -85 dBm per RE
=> 10^((-85 - (-153.8))/20) = 2754 rms
```
## ENG mode
* install eng
```
root@arria10:~/test# ./install_eng_v2_3_5q_524-2.run

Start to install v2.3.5q.524...
Current folder = /home/root/test


2048+0 records in
2048+0 records out
1048576 bytes (1.0MB) copied, 1.523106 seconds, 672.3KB/s
Installation completed.  Ready to shutdown...


Disable PA!

Shutdown scheduled for Mon 2021-08-30 13:19:40 UTC, use 'shutdown -c' to cancel.
root@arria10:~/test# Connection to 192.167.27.56 closed by remote host.
Connection to 192.167.27.56 closed.
```
* SSH Login
```
[root@opennesswkn-1 ~]# ssh 192.167.27.49
Last login: Mon Aug 30 12:33:32 2021 from 192.167.27.85
mount /dev/mmcblk0p1 to ~/sdcard
mount: /dev/mmcblk0p1 is already mounted or /home/root/sdcard busy
       /dev/mmcblk0p1 is already mounted on /home/root/sdcard
Enable PA!
```
* test.sh
```
root@arria10:~/test# cat test.sh
#!/bin/bash

echo "mount /dev/mmcblk0p1 to ~/sdcard"
mount /dev/mmcblk0p1 ~/sdcard >> linux_log.txt
#echo "please execute program hello manually."
if [ -f "../sdcard/RRHConfig.xml" ]; then
    cat ../sdcard/RRHConfig.xml | grep "RRHULDLPattern = " | sed 's/RRHULDLPattern/Current RRH setting/'|sed 's/1/TDD\(DDDUU\)/' |  sed 's/2/TDD\(18D2U\)/' | sed 's/3/FDD\(DDDDD\)/' | sed 's/4/FDD\(UUUUU\)/'
fi
if [ -f "../sdcard/version.txt" ]; then
    cat ../sdcard/version.txt
fi

#Enable PA
./pa_control 1

#echo "execute program hello"
#./hello
#echo "umount ~/sdcard"
#umount ~/sdcard
```
* set_qse.sh
```
root@arria10:~/test# cat set_qse.sh
#!/bin/sh
RRH_IP="192.167.$1.49"
RRH_GW="192.167.$1.150"

if [[ ! $1 =~ ^-?[0-9]+$ ]]; then
    echo "Invalid parameter"
    exit 1
elif [ $1 -lt "0" ] ||  [ $1 -gt "255" ] ;then
    echo "Out of range"
    exit 1
fi

var1=`ifconfig | grep 'HWaddr' | egrep -v "aa:bb:cc:dd:ee:$1|6c:ad:ad"`
if [[ -z "$var1" ]]; then

    #Check if IPv4 address exists
    var2=`ifconfig | grep 'inet addr:' | grep $RRH_IP`
    if [[ -z "$var2" ]]; then
        ifconfig qse-eth $RRH_IP
        route add -net 192.167.0.0 netmask 255.255.0.0 gw $RRH_GW dev qse-eth
    fi

else
    ifconfig qse-eth down
    ifconfig qse-eth hw ether "aa:bb:cc:dd:ee:$1"
    ifconfig qse-eth $RRH_IP
    ifconfig qse-eth up
    route add -net 192.167.0.0 netmask 255.255.0.0 gw $RRH_GW dev qse-eth
    #route
fi
```
* reboot.sh
```
root@arria10:~/test# cat reboot.sh
#!/bin/bash
/home/root/test/reset_cuplane
/home/root/test/pa_control 0
/usr/utils/kill_ptp4l.sh
umount /home/root/sdcard
/usr/local/reboot
```
* version.txt
```
root@arria10:~/test# cat version.txt
branch: 324-disable_lna_when_ending_slot_is_ul
version: 7f9636d4fb9430d5e7a588cbb52fce87e524b8cf
tag: v2.3.5q.524
```
* shutdown.sh
```
root@arria10:~/test# cat shutdown.sh
#!/bin/bash
/home/root/test/reset_cuplane
/home/root/test/pa_control 0
/usr/utils/kill_ptp4l.sh
umount /home/root/sdcard
/usr/local/shutdown +0
```
* set_vlan.sh
```
root@arria10:~/test# cat set_vlan.sh
#!/bin/sh
RRH_IP="192.167.27.49"
VLAN_ID=$1

if [[ ! $1 =~ ^-?[0-9]+$ ]]; then
    VLAN_ID=4092
fi

var1=`ifconfig -a | grep qse-eth.$VLAN_ID`
if [[ -z "$var1" ]]; then
    vconfig add qse-eth $VLAN_ID
    ifconfig qse-eth.$VLAN_ID $RRH_IP
else
    #Check if IPv4 address exists
    var2=`ifconfig -a qse-eth.$VLAN_ID | grep 'inet addr:' | grep $RRH_IP`
    if [[ -z "$var2" ]]; then
        ifconfig qse-eth.$VLAN_ID $RRH_IP
    fi
fi
```
* /etc/profile
```
root@arria10:~/test# cat /etc/profile
# /etc/profile: system-wide .profile file for the Bourne shell (sh(1))
# and Bourne compatible shells (bash(1), ksh(1), ash(1), ...).

PATH="/usr/local/bin:/usr/bin:/bin"
EDITOR="/bin/vi"                        # needed for packages like cron
test -z "$TERM" && TERM="vt100" # Basic terminal capab. For screen etc.

if [ ! -e /etc/localtime -a ! -e /etc/TZ ]; then
        TZ="UTC"                # Time Zone. Look at http://theory.uwinnipeg.ca/gnu/glibc/libc_303.html
                                # for an explanation of how to set this to your local timezone.
        export TZ
fi

if [ "$HOME" = "/home/root" ]; then
   PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin
fi
if [ "$PS1" ]; then
# works for bash and ash (no other shells known to be in use here)
   PS1='\u@\h:\w\$ '
fi

if [ -d /etc/profile.d ]; then
  for i in /etc/profile.d/* ; do
    . $i
  done
  unset i
fi

if [ -x /usr/bin/resize ];then
  /usr/bin/resize >/dev/null
fi

export PATH PS1 OPIEDIR QPEDIR QTDIR EDITOR TERM

umask 022

var1=`ps u |grep ptp4l |grep user_gen`
if [[ -z "$var1" ]]; then
    /usr/utils/lna_ctrl
fi

cd test
./test.sh
./set_qse.sh 27
```
* RRHconfig_xran.xml
```
root@arria10:~/sdcard# cat RRHconfig_xran.xml
<!--                          -->
<!--            Common        -->
<!--                          -->
<!-- RRH_DST_MAC_ADDR: Destination MAC address, fill with 6 bytes and separate each others by colon -->
RRH_DST_MAC_ADDR = 00:11:22:33:44:26
<!-- RRH_SRC_MAC_ADDR: Source MAC address, fill with 6 bytes and separate each others by colon -->
RRH_SRC_MAC_ADDR = aa:bb:cc:dd:ee:27
<!-- RRH_RU_PORT_ID: RRH RU PORT ID, fill with 4 bytes and separate each others by common and space -->
RRH_RU_PORT_ID = 0, 1, 2, 3
<!-- RRH_EN_SPC: Enable SPC or not, 0:OFF, 1:ON -->
RRH_EN_SPC = 1
<!-- RRH_RRH_LTE_OR_NR: Indicate the spec of xRAN, 0:LTE, 1:NR -->
RRH_RRH_LTE_OR_NR = 1
<!-- RRH_TRX_EN_BIT_MASK: Bit-mask of 4 TRx, bit 0: TRx0, bit1: TRx1, bit2: TRx2, bit3: TRx3 -->
RRH_TRX_EN_BIT_MASK = 0x0f
<!-- RRH_RF_EN_BIT_MASK: Bit-mask of 4 PA/LNA, bit0: PA0/LNA0, bit1: PA1/LNA1, bit2: PA2/LNA2, bit3: PA3/LNA3 -->
RRH_RF_EN_BIT_MASK = 0x0f
<!-- RRH_CMPR_HDR_PRESENT: Indicate the UdCompHdr/reserved field is present or not, 0:no present; 1:present -->
RRH_CMPR_HDR_PRESENT = 1
<!-- RRH_MSGS_IN_A_SYM: Number of messages in a symbol time, (1 or 2) -->
RRH_MSGS_IN_A_SYM = 1
<!-- RRH_CMPR_TYPE: Indicate compress type. 1st for PDSCH/PUSCH, 2nd for PRACH. 0: No Cmpr; 1:block-floating; 2:u-law -->
RRH_CMPR_TYPE = 1, 0
<!-- RRH_CMPR_BIT_LENGTH: Indicate the bit length after compression. 1st for PDSCH/PUSCH, 2nd for PRACH. -->
RRH_CMPR_BIT_LENGTH = 9, 9
<!-- RRH_UL_INIT_SYM_ID: Initial symbol ID in UL message -->
RRH_UL_INIT_SYM_ID = 0
<!-- RRH_TX_TRUNC_BITS: The extra truncation in fractional part of IFFT output -->
RRH_TX_TRUNC_BITS = 4
<!-- RRH_RX_TRUNC_BITS: The extra truncation in fractional part of FFT output -->
RRH_RX_TRUNC_BITS = 5
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
RRH_LO_FREQUENCY_KHZ = 3929700
<!-- RRH_TX_ATTENUATION: Tx attenuation value with 1-digit fraction for each layer (>10dB. NOTE: The attenuation value must be larget than 10dB) -->
RRH_TX_ATTENUATION = 6.0, 6.0, 6.0, 6.0
<!-- RRH_RX_ATTENUATION: Rx attenuation value with 1-digit fraction for each layer (<30dB) -->
RRH_RX_ATTENUATION = 21.0, 21.0, 21.0, 21.0
<!-- RRH_BB_GENERAL_CTRL: General control words for Baseband      -->
<!-- Bit[0] of 1st word: Enable the filtering of MAC address      -->
<!-- Bit[1] of 1st word: Enable the UL slot tick packets per port -->
<!-- Others: Reserved                                             -->
RRH_BB_GENERAL_CTRL = 0x0, 0x0, 0x0, 0x0
<!-- RRH_RF_GENERAL_CTRL: General control words for RF            -->
<!-- Bit[0] of 4th word: 1=for N77, 0=else                        -->
RRH_RF_GENERAL_CTRL = 0x3, 0x0, 0x0, 0x1
<!--                           -->
<!--            PTPV2 Related  -->
<!--                           -->
<!-- RRH_PTPV2_GRAND_MASTER_MODE: 0: Unicast over 1G, 1:Multicast over 1G; 2: Unicast over 10G; 3: Multicast over 10G -->
RRH_PTPV2_GRAND_MASTER_MODE = 3
<!-- RRH_PTPV2_JITTER_LEVEL: The estimated jitter of PTP time packets. 0:direct connection to GM/BC, 1:light, 2:medium, 3:heavy -->
RRH_PTPV2_JITTER_LEVEL = 0
<!-- RRH_PTPV2_VLAN_ID: VLAN ID of PTPv2.  0/1: No VLAN of PTPv2; [2~4092]: valid VLAN of PTPv2; >4092: Invalid and no VLAN will be applied -->
RRH_PTPV2_VLAN_ID = 0
<!-- RRH_PTPV2_IP_MODE: 4: IPv4 (default); 6: IPv6.  Note: this configuration must be defined before RRH_PTPV2_GRAND_MASTER_IP -->
RRH_PTPV2_IP_MODE = 4
<!-- RRH_PTPV2_GRAND_MASTER_IP: IP address of grand-master -->
RRH_PTPV2_GRAND_MASTER_IP = 192.167.27.150
<!-- RRH_PTPV2_SUB_DOMAIN_NUM: The sub-domain number -->
RRH_PTPV2_SUB_DOMAIN_NUM = 24
```
* he_ver.txt
```
root@arria10:~/test# cat ../sdcard/hw_ver.txt
C:\intelFPGA_pro\Tom\xran\madura\20210812_xran
```
* z_version.txt
```
root@arria10:~/test# cat ../sdcard/z_version.txt
branch: master
commit: fd2554aa99d724e9ebc6b6b11cf871806eea3af8
```
* ip a
```
root@arria10:~/test# ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host
       valid_lft forever preferred_lft forever
2: qse-eth: <BROADCAST,MULTICAST,UP,LOWER_UP8000> mtu 4000 qdisc pfifo_fast qlen 1000
    link/ether 6c:ad:ad:00:00:ef brd ff:ff:ff:ff:ff:ff
    inet 192.167.27.49/24 brd 192.167.27.255 scope global qse-eth
       valid_lft forever preferred_lft forever
    inet 192.167.27.55/24 brd 192.167.27.255 scope global secondary qse-eth
       valid_lft forever preferred_lft forever
    inet6 fe80::6ead:adff:fe00:ef/64 scope link
       valid_lft forever preferred_lft forever
3: eth0: <BROADCAST,MULTICAST8000> mtu 4000 qdisc noop qlen 1000
    link/ether 3a:27:94:8e:4a:9b brd ff:ff:ff:ff:ff:ff
4: sit0@NONE: <NOARP> mtu 3980 qdisc noop qlen 1000
    link/sit 0.0.0.0 brd 0.0.0.0
```
* install oam
```
root@arria10:~/test# ./install_oam_v2_3_5q_524-2.run
Current folder = /home/root/test

Enter new UNIX password: Retype new UNIX password: passwd: password updated successfully

Removed symlink /etc/systemd/system/sockets.target.wants/sshd.socket.
mplane_ctl: error while loading shared libraries: libxml2.so.2: cannot open shared object file: No such file or directory
Change to OAM mode with DHCP.  Ready to reboot...


Disable PA!

Connection to 192.167.27.49 closed by remote host.
Connection to 192.167.27.49 closed.
```
## OAM mode
* dhcp server to arrange IP
```
[root@opennesswkn-1 ~]# dhcpd -d -cf /etc/dhcp/dhcpd-Vish.conf
Internet Systems Consortium DHCP Server 4.2.5
Copyright 2004-2013 Internet Systems Consortium.
All rights reserved.
For info, please visit https://www.isc.org/software/dhcp/
Not searching LDAP since ldap-server, ldap-port and ldap-base-dn were not specified in the config file
Wrote 2 leases to leases file.
Multiple interfaces match the same subnet: ens1f2 enp138s10f2
Multiple interfaces match the same shared network: ens1f2 enp138s10f2
Listening on LPF/enp138s10f2/a6:68:f5:d3:e1:81/192.167.27.0/24
Sending on   LPF/enp138s10f2/a6:68:f5:d3:e1:81/192.167.27.0/24

No subnet declaration for calibcb7350d3eb (no IPv4 addresses).
** Ignoring requests on calibcb7350d3eb.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface calibcb7350d3eb is attached. **


No subnet declaration for cali88eca308ca5 (no IPv4 addresses).
** Ignoring requests on cali88eca308ca5.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface cali88eca308ca5 is attached. **


No subnet declaration for cali6fd9c0fd9c9 (no IPv4 addresses).
** Ignoring requests on cali6fd9c0fd9c9.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface cali6fd9c0fd9c9 is attached. **


No subnet declaration for cali9673670ae99 (no IPv4 addresses).
** Ignoring requests on cali9673670ae99.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface cali9673670ae99 is attached. **


No subnet declaration for calicf8e4629704 (no IPv4 addresses).
** Ignoring requests on calicf8e4629704.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface calicf8e4629704 is attached. **


No subnet declaration for cali3c0ac091bde (no IPv4 addresses).
** Ignoring requests on cali3c0ac091bde.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface cali3c0ac091bde is attached. **


No subnet declaration for calibc45a57cfa0 (no IPv4 addresses).
** Ignoring requests on calibc45a57cfa0.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface calibc45a57cfa0 is attached. **


No subnet declaration for cali04c1250942c (no IPv4 addresses).
** Ignoring requests on cali04c1250942c.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface cali04c1250942c is attached. **


No subnet declaration for caliacc584123c6 (no IPv4 addresses).
** Ignoring requests on caliacc584123c6.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface caliacc584123c6 is attached. **


No subnet declaration for calib9f5718fa33 (no IPv4 addresses).
** Ignoring requests on calib9f5718fa33.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface calib9f5718fa33 is attached. **


No subnet declaration for cali155810a4709 (no IPv4 addresses).
** Ignoring requests on cali155810a4709.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface cali155810a4709 is attached. **


No subnet declaration for calibb57932f6db (no IPv4 addresses).
** Ignoring requests on calibb57932f6db.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface calibb57932f6db is attached. **


No subnet declaration for cali5ef0b023397 (no IPv4 addresses).
** Ignoring requests on cali5ef0b023397.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface cali5ef0b023397 is attached. **


No subnet declaration for cali113b3f5507d (no IPv4 addresses).
** Ignoring requests on cali113b3f5507d.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface cali113b3f5507d is attached. **


No subnet declaration for caliac4a548932e (no IPv4 addresses).
** Ignoring requests on caliac4a548932e.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface caliac4a548932e is attached. **


No subnet declaration for calie483a3255ac (no IPv4 addresses).
** Ignoring requests on calie483a3255ac.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface calie483a3255ac is attached. **


No subnet declaration for cali8dc75f726a6 (no IPv4 addresses).
** Ignoring requests on cali8dc75f726a6.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface cali8dc75f726a6 is attached. **


No subnet declaration for cali0874a0f15c3 (no IPv4 addresses).
** Ignoring requests on cali0874a0f15c3.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface cali0874a0f15c3 is attached. **


No subnet declaration for cali8a35c38bedb (no IPv4 addresses).
** Ignoring requests on cali8a35c38bedb.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface cali8a35c38bedb is attached. **


No subnet declaration for cali0637dc5e2f2 (no IPv4 addresses).
** Ignoring requests on cali0637dc5e2f2.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface cali0637dc5e2f2 is attached. **


No subnet declaration for cali585b3d1d144 (no IPv4 addresses).
** Ignoring requests on cali585b3d1d144.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface cali585b3d1d144 is attached. **


No subnet declaration for cali848157fe3f7 (no IPv4 addresses).
** Ignoring requests on cali848157fe3f7.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface cali848157fe3f7 is attached. **


No subnet declaration for cali9a93bd66006 (no IPv4 addresses).
** Ignoring requests on cali9a93bd66006.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface cali9a93bd66006 is attached. **


No subnet declaration for cali5c7419b5f53 (no IPv4 addresses).
** Ignoring requests on cali5c7419b5f53.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface cali5c7419b5f53 is attached. **


No subnet declaration for cali91b8e8f88f1 (no IPv4 addresses).
** Ignoring requests on cali91b8e8f88f1.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface cali91b8e8f88f1 is attached. **


No subnet declaration for calie1a9668ce36 (no IPv4 addresses).
** Ignoring requests on calie1a9668ce36.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface calie1a9668ce36 is attached. **


No subnet declaration for docker0 (172.17.0.1).
** Ignoring requests on docker0.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface docker0 is attached. **


No subnet declaration for virbr0 (192.168.122.1).
** Ignoring requests on virbr0.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface virbr0 is attached. **


No subnet declaration for eno2 (192.168.3.49).
** Ignoring requests on eno2.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface eno2 is attached. **


No subnet declaration for eno1 (10.12.87.85).
** Ignoring requests on eno1.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface eno1 is attached. **


No subnet declaration for ens1f3 (no IPv4 addresses).
** Ignoring requests on ens1f3.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface ens1f3 is attached. **

Listening on LPF/ens1f2/3c:ec:ef:30:3d:36/192.167.27.0/24
Sending on   LPF/ens1f2/3c:ec:ef:30:3d:36/192.167.27.0/24

No subnet declaration for eth1 (169.254.3.1).
** Ignoring requests on eth1.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface eth1 is attached. **


No subnet declaration for ens1f1 (no IPv4 addresses).
** Ignoring requests on ens1f1.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface ens1f1 is attached. **


No subnet declaration for ens1f0 (192.167.28.85).
** Ignoring requests on ens1f0.  If this is not what
   you want, please write a subnet declaration
   in your dhcpd.conf file for the network segment
   to which interface ens1f0 is attached. **

Sending on   Socket/fallback/fallback-net
DHCPDISCOVER from 6c:ad:ad:00:00:ef via enp138s10f2
DHCPOFFER on 192.167.27.56 to 6c:ad:ad:00:00:ef (oru.faca.com) via enp138s10f2
DHCPREQUEST for 192.167.27.56 (192.167.27.54) from 6c:ad:ad:00:00:ef (oru.faca.com) via enp138s10f2
DHCPACK on 192.167.27.56 to 6c:ad:ad:00:00:ef (oru.faca.com) via enp138s10f2
DHCPREQUEST for 192.167.27.56 (192.167.27.54) from 6c:ad:ad:00:00:ef (oru.faca.com) via ens1f2
DHCPACK on 192.167.27.56 to 6c:ad:ad:00:00:ef (oru.faca.com) via ens1f2
```
```
[root@opennesswkn-1 ~]# ssh -p 830 root@192.167.27.56
The authenticity of host '[192.167.27.56]:830 ([192.167.27.56]:830)' can't be established.
ECDSA key fingerprint is SHA256:VLCy7HUKt1SXCc6nrl5XHPEtoqaYxb2mgpUrDYXA8Rw.
ECDSA key fingerprint is MD5:ed:dc:b6:16:f0:1f:28:96:3e:2a:8e:a8:7c:f7:a1:85.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added '[192.167.27.56]:830' (ECDSA) to the list of known hosts.
root@192.167.27.56's password:
Last login: Mon Aug 30 13:06:07 2021
mount /dev/mmcblk0p1 to ~/sdcard
mount: /dev/mmcblk0p1 is already mounted or /home/root/sdcard busy
       /dev/mmcblk0p1 is already mounted on /home/root/sdcard
Enable PA!
root@arria10:~/test# ifconfig
lo        Link encap:Local Loopback
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:469 errors:0 dropped:0 overruns:0 frame:0
          TX packets:469 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:31573 (30.8 KiB)  TX bytes:31573 (30.8 KiB)

qse-eth   Link encap:Ethernet  HWaddr 6c:ad:ad:00:00:ef
          inet addr:192.167.27.56  Bcast:192.167.27.255  Mask:255.255.255.0
          inet6 addr: fe80::6ead:adff:fe00:ef/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST DYNAMIC  MTU:4000  Metric:1
          RX packets:4551 errors:0 dropped:293 overruns:0 frame:0
          TX packets:276 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:325097 (317.4 KiB)  TX bytes:34480 (33.6 KiB)
          Memory:ff224000-ff224fff

```
* oam version.txt
```
root@arria10:~/test# cat version.txt
branch: 324-disable_lna_when_ending_slot_is_ul
version: 7f9636d4fb9430d5e7a588cbb52fce87e524b8cf
tag: v2.3.5q.524-oam
```
* /etc/profile
```
root@arria10:~/test# cat /etc/profile
# /etc/profile: system-wide .profile file for the Bourne shell (sh(1))
# and Bourne compatible shells (bash(1), ksh(1), ash(1), ...).

PATH="/usr/local/bin:/usr/bin:/bin"
EDITOR="/bin/vi"                        # needed for packages like cron
test -z "$TERM" && TERM="vt100" # Basic terminal capab. For screen etc.

if [ ! -e /etc/localtime -a ! -e /etc/TZ ]; then
        TZ="UTC"                # Time Zone. Look at http://theory.uwinnipeg.ca/gnu/glibc/libc_303.html
                                # for an explanation of how to set this to your local timezone.
        export TZ
fi

if [ "$HOME" = "/home/root" ]; then
   PATH=$PATH:/usr/local/sbin:/usr/sbin:/sbin
fi
if [ "$PS1" ]; then
# works for bash and ash (no other shells known to be in use here)
   PS1='\u@\h:\w\$ '
fi

if [ -d /etc/profile.d ]; then
  for i in /etc/profile.d/* ; do
    . $i
  done
  unset i
fi

if [ -x /usr/bin/resize ];then
  /usr/bin/resize >/dev/null
fi

export PATH PS1 OPIEDIR QPEDIR QTDIR EDITOR TERM

umask 022

var1=`ps u |grep ptp4l |grep user_gen`
if [[ -z "$var1" ]]; then
    /usr/utils/lna_ctrl
fi

cd test
./test.sh
```
* rc.local.nonoam
```
root@arria10:/etc# cat rc.local.nonoam
#!/bin/bash
#!/bin/sh

if pgrep -x "sshd" >/dev/null
then
        echo "sshd is running"
else
        echo "start sshd"
        if [ -d "/var/empty" ]; then
            echo "ok"
        else
            mkdir /var/empty
        fi
        /usr/sbin/sshd -f /etc/ssh/sshd_config -o LogLevel=Debug3 -E /tmp/ssh_log
fi
```
* rc.local.oam
```
root@arria10:/etc# cat rc.local.oam
#!/bin/bash

systemctl stop sshd.socket
systemctl stop lighttpd.service
systemctl disable sshd.socket
systemctl disable lighttpd.service

export YUMA_HOME=/usr/share/yuma
export LD_LIBRARY_PATH=/lib:/usr/arm-linux-gnueabihf/lib:/usr/lib:/usr/lib/yuma

file="/etc/yuma/activate_default"
if [ -f "$file" ]; then
        echo "!!!!Remove $file and Run Facotry Reset!!!!"
        rm $file
        /etc/yuma/sys_reset.sh
fi


netconfd_file=/etc/yuma/faca_netconfd.zip

if [ -f "$netconfd_file" ]; then
        echo "Found update file: $netconfd_file"
        /etc/yuma/sys_netconfd_update.sh $netconfd_file
fi

SERVICE="ifplugd"
if pgrep -x "$SERVICE" >/dev/null
then
    echo "$SERVICE is running"
else
    echo "$SERVICE stopped, start it"
    ifplugd -I -i qse-eth -r /etc/ifplugd/ifplugd.action
fi

exit 0
```
* upgrade engg unit
```
root@arria10:~/test# ./install_eng_v2_4_6q_524.run

Start to install v2.4.6q.524...
Current folder = /home/root/test


2048+0 records in
2048+0 records out
1048576 bytes (1.0MB) copied, 1.483869 seconds, 690.1KB/s
Installation completed.  Ready to shutdown...


Disable PA!

Shutdown scheduled for Fri 2021-12-03 17:41:57 UTC, use 'shutdown -c' to cancel.
root@arria10:~/test# Connection to 192.167.27.49 closed by remote host.
Connection to 192.167.27.49 closed.


[root@opennesswkn-1 Fxcn_config]# ssh 192.167.27.49
Last login: Fri Dec  3 17:41:06 2021
mount /dev/mmcblk0p1 to ~/sdcard
mount: /dev/mmcblk0p1 is already mounted or /home/root/sdcard busy
       /dev/mmcblk0p1 is already mounted on /home/root/sdcard
Enable PA!
root@arria10:~/test# 
root@arria10:~/test# cat version.txt
branch: 327-set_trx_switch_to_tx_when_dpd_init_and_reset
version: 91af8c69eeebe1b61bcd9426898dcb87fda5a574
tag: v2.4.6q.524
```
* upgrade oam unit
```
root@arria10:~/test# ./install_eng_v2_4_6q_524.run

Start to install v2.4.6q.524...
Current folder = /home/root/test


2048+0 records in
2048+0 records out
1048576 bytes (1.0MB) copied, 1.511187 seconds, 677.6KB/s
Installation completed.  Ready to shutdown...


Disable PA!

Shutdown scheduled for Thu 2021-12-02 21:04:26 UTC, use 'shutdown -c' to cancel.
root@arria10:~/test# Connection to 192.167.27.56 closed by remote host.
Connection to 192.167.27.56 closed.
[root@opennesswkn-1 ~]# ssh -p 830 root@192.167.27.49
root@192.167.27.49's password:
Last login: Thu Dec  2 21:07:14 2021 from 192.167.27.85
mount /dev/mmcblk0p1 to ~/sdcard
mount: /dev/mmcblk0p1 is already mounted or /home/root/sdcard busy
       /dev/mmcblk0p1 is already mounted on /home/root/sdcard
Enable PA!
root@arria10:~/test# cat version.txt
branch: 327-set_trx_switch_to_tx_when_dpd_init_and_reset
version: 91af8c69eeebe1b61bcd9426898dcb87fda5a574
tag: v2.4.6q.524
root@arria10:~/test# ./install_oam_v2_4_6q_524.run
Current folder = /home/root/test

Enter new UNIX password: Retype new UNIX password: passwd: password updated successfully

mplane_ctl: error while loading shared libraries: libxml2.so.2: cannot open shared object file: No such file or directory
Change to OAM mode with DHCP.  Ready to reboot...


Disable PA!

Connection to 192.167.27.49 closed by remote host.
Connection to 192.167.27.49 closed.
[root@opennesswkn-1 ~]# ssh -p 830 root@192.167.27.54
root@192.167.27.54's password:
Last login: Thu Dec  2 21:08:07 2021
mount /dev/mmcblk0p1 to ~/sdcard
mount: /dev/mmcblk0p1 is already mounted or /home/root/sdcard busy
       /dev/mmcblk0p1 is already mounted on /home/root/sdcard
Enable PA!
root@arria10:~/test# cat version.txt
branch: 327-set_trx_switch_to_tx_when_dpd_init_and_reset
version: 91af8c69eeebe1b61bcd9426898dcb87fda5a574
tag: v2.4.6q.524-oam
```