---
title: ufi
abbrlink: aab26674
tags:
---
可以用 micro usb 連 console
![](image01.png)

* 下載 driver
https://www.silabs.com/developers/usb-to-uart-bridge-vcp-drivers
=> CP210x Universal Windows Driver

* login to CLI
ocnos/ocnos

* login to linux shell
root/root

* config
```
OcNOS>en
OcNOS#configure terminal
Enter configuration commands, one per line.  End with CNTL/Z.
OcNOS(config)#
```
```
OcNOS login: ocnos
Password:
Linux OcNOS 4.19.91-gbf757a3f9 #1 SMP Fri May 7 09:30:54 UTC 2021 x86_64

OcNOS version UFI_S9500-30XS-OcNOS-4.2.194-SP_CSR-S0-P0  07/24/2021 04:41:42
OcNOS>
OcNOS>show r
radius-server   rib             role            route-map       router-id
rsvp            running-config
OcNOS>show running-config
!
! Software version: UFI_S9500-30XS-OcNOS-4.2-SP-CSR-S0-P0 07/24/2021 04:41:42
!
! No configuration change since last reboot
!
no service password-encryption
!
snmp-server enable traps link linkDown
snmp-server enable traps link linkUp
!
hardware-profile statistics ingress-acl enable
!
ip vrf management
!
ip domain-lookup vrf management
no ip domain-lookup
 !ip name-server 172.18.198.23
tfo Disable
errdisable cause stp-bpdu-guard
feature telnet vrf management
feature ssh vrf management
snmp-server enable snmp vrf management
snmp-server view all .1 included vrf management
feature ntp vrf management
ntp enable vrf management
 !ntp server 172.18.198.65 vrf management
username ocnos role network-admin password encrypted $1$raEVhCC/$H8x6./HFZIVmusC
BkFiHU/
feature rsyslog vrf management
!
interface ce0
!
interface ce1
!
interface eth0
 ip vrf forwarding management
 ip address dhcp
!
interface lo
 ip address 127.0.0.1/8
 ipv6 address ::1/128
!
interface lo.management
 ip vrf forwarding management
 ip address 127.0.0.1/8
 ipv6 address ::1/128
!
interface xe0
!
interface xe1
!
interface xe2
!
interface xe3
!
interface xe4
!
interface xe5
!
interface xe6
!
interface xe7
!
interface xe8
!
interface xe9
!
interface xe10
!
interface xe11
!
interface xe12
!
interface xe13
!
interface xe14
!
interface xe15
!
interface xe16
!
interface xe17
!
interface xe18
!
interface xe19
!
interface xe20
!
interface xe21
!
interface xe22
!
interface xe23
!
interface xe24
!
interface xe25
!
interface xe26
!
interface xe27
!
end
```
```
OcNOS>show running-config
!
! Software version: UFI_S9500-30XS-OcNOS-4.2-SP-CSR-S0-P0 07/24/2021 04:41:42
!
! No configuration change since last reboot
!
no service password-encryption
!
logging level ptp 7
logging level synce 7
snmp-server enable traps link linkDown
snmp-server enable traps link linkUp
!
hardware-profile statistics ingress-acl enable
!
ip vrf management
!
hostname OcNOS
ip domain-lookup vrf management
no ip domain-lookup
bridge 1 protocol ieee vlan-bridge
tfo Disable
errdisable cause stp-bpdu-guard
feature telnet vrf management
feature ssh vrf management
feature ssh
snmp-server enable snmp vrf management
snmp-server view all .1 included vrf management
feature ntp vrf management
ntp enable vrf management
username ocnos role network-admin password encrypted $1$raEVhCC/$H8x6./HFZIVmusCBkFiHU/
feature rsyslog vrf management
bridge 1 ageing-time 300
synce
 dpll3-select 10mhz-in
!
vlan database
 vlan 115-116 bridge 1 state enable
!
interface ce0
!
interface ce1
!
interface eth0
 ip vrf forwarding management
 ip address 10.12.85.209/20
 ipv6 address fda5:1693:ca61:2000:eac5:7aff:fe01:6b3c/64
!
interface lo
 ip address 127.0.0.1/8
 ipv6 address ::1/128
!
interface lo.management
 ip vrf forwarding management
 ip address 127.0.0.1/8
 ipv6 address ::1/128
!
interface xe0
 speed 1g
 synce
  mode synchronous
  input-source 1
  wait-to-restore 1
!
interface xe1
!
interface xe2
 speed 1g
!
interface xe3
!
interface xe4
 synce
  mode synchronous
  input-source 1
!
interface xe5
!
interface xe6
!
interface xe7
!
interface xe8
!
interface xe9
!
interface xe10
!
interface xe11
!
interface xe12
!
interface xe13
!
interface xe14
!
interface xe15
!
interface xe16
!
interface xe17
!
interface xe18
 switchport
 bridge-group 1
 switchport mode trunk
 switchport trunk allowed vlan add 115-116
 mtu 9000
!
interface xe19
 switchport
 bridge-group 1
 switchport mode trunk
 switchport trunk allowed vlan add 115-116
 mtu 9000
!
interface xe20
!
interface xe21
!
interface xe22
!
interface xe23
!
interface xe24
!
interface xe25
!
interface xe26
!
interface xe27
!
ip route vrf management 0.0.0.0/0 10.12.80.1 eth0
!
ptp clock profile g8275.1
 domain 24
 number-ports 31
 clock-port 1
  network-interface xe0
  exit
 clock-port 2
  master-only
  network-interface xe2
  exit
 clock-port 4
  network-interface xe4
  exit
 clock-port 19
  master-only
  network-interface xe19
  exit
!
end
```
```
  10/11/2021   14:49.47   /home/mobaxterm  telnet 10.12.85.209
Trying 10.12.85.209...
Connected to 10.12.85.209.
Escape character is '^]'.
OcNOS
OcNOS login: ocnos
Password:
Last login: Tue Feb 19 04:20:27 UTC 2019 on pts/0
Linux OcNOS 4.19.91-gbf757a3f9 #1 SMP Fri May 7 09:30:54 UTC 2021 x86_64

OcNOS version UFI_S9500-30XS-OcNOS-4.2.194-SP_CSR-S0-P0  07/24/2021 04:41:42
OcNOS>show
Display all 107 possibilities? (y or n)
OcNOS>show unn
OcNOS>show running-config
!
! Software version: UFI_S9500-30XS-OcNOS-4.2-SP-CSR-S0-P0 07/24/2021 04:41:42
!
!Last configuration change at 04:23:47 UTC Tue Feb 19 2019 by ocnos
!
no service password-encryption
!
logging level ptp 7
logging level synce 7
snmp-server enable traps link linkDown
snmp-server enable traps link linkUp
!
hardware-profile statistics ingress-acl enable
!
ip vrf management
!
hostname OcNOS
ip domain-lookup vrf management
no ip domain-lookup
bridge 1 protocol ieee vlan-bridge
tfo Disable
errdisable cause stp-bpdu-guard
feature telnet vrf management
feature ssh vrf management
feature ssh
snmp-server enable snmp vrf management
snmp-server view all .1 included vrf management
feature ntp vrf management
ntp enable vrf management
username ocnos role network-admin password encrypted $1$raEVhCC/$H8x6./HFZIVmusCBkFiHU/
feature rsyslog vrf management
bridge 1 ageing-time 300
synce
 dpll3-select 10mhz-in
!
vlan database
 vlan 115-116 bridge 1 state enable
!
interface ce0
!
interface ce1
!
interface eth0
 ip vrf forwarding management
 ip address 10.12.85.209/20
 ipv6 address fda5:1693:ca61:2000:eac5:7aff:fe01:6b3c/64
!
interface lo
 ip address 127.0.0.1/8
 ipv6 address ::1/128
!
interface lo.management
 ip vrf forwarding management
 ip address 127.0.0.1/8
 ipv6 address ::1/128
!
interface xe0
 speed 1g
 synce
  mode synchronous
  input-source 1
  wait-to-restore 1
!
interface xe1
!
interface xe2
 speed 1g
!
interface xe3
!
interface xe4
 synce
  mode synchronous
  input-source 1
!
interface xe5
!
interface xe6
!
interface xe7
!
interface xe8
!
interface xe9
 speed 1g
!
interface xe10
!
interface xe11
!
interface xe12
 switchport
 bridge-group 1
 switchport mode trunk
 switchport trunk allowed vlan add 115-116
 mtu 9000
!
interface xe13
 switchport
 bridge-group 1
 switchport mode trunk
 switchport trunk allowed vlan add 115-116
 mtu 9000
!
interface xe14
 switchport
 bridge-group 1
 switchport mode trunk
 switchport trunk allowed vlan add 115-116
 mtu 9000
!
interface xe15
 switchport
 bridge-group 1
 switchport mode trunk
 switchport trunk allowed vlan add 115-116
 mtu 9000
!
interface xe16
!
interface xe17
!
interface xe18
 switchport
 bridge-group 1
 switchport mode trunk
 switchport trunk allowed vlan add 115-116
 mtu 9000
!
interface xe19
 switchport
 bridge-group 1
 switchport mode trunk
 switchport trunk allowed vlan add 115-116
 mtu 9000
!
interface xe20
 switchport
 bridge-group 1
 switchport mode trunk
 switchport trunk allowed vlan add 115-116
 mtu 9000
!
interface xe21
!
interface xe22
!
interface xe23
!
interface xe24
!
interface xe25
 switchport
!
interface xe26
!
interface xe27
!
ip route vrf management 0.0.0.0/0 10.12.80.1 eth0
!
ptp clock profile g8275.1
 domain 24
 number-ports 31
 clock-port 1
  network-interface xe0
  exit
 clock-port 2
  master-only
  network-interface xe2
  exit
 clock-port 4
  network-interface xe4
  exit
 clock-port 12
  master-only
  network-interface xe12
  exit
 clock-port 13
  master-only
  network-interface xe13
  exit
 clock-port 14
  master-only
  network-interface xe14
  exit
 clock-port 15
  master-only
  network-interface xe15
  exit
 clock-port 19
  master-only
  network-interface xe19
  exit
 clock-port 20
  master-only
  network-interface xe20
  exit
!
end
```