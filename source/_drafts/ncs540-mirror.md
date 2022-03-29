---
title: ncs540_mirror
abbrlink: 845fb20e
tags:
---
port 20 接 BBU
port 21 接 RU
mirror port 設在 11
```
monitor-session mirror ethernet
 destination interface TenGigE0/0/0/11
!
```
錄 port 21
```
interface TenGigE0/0/0/21
 mtu 9600
 ptp
  profile master8275.1
 !
 l2transport
  monitor-session mirror ethernet port-level
  !
 !
!
```
光纖線接在 switch port 11 跟 bbu ens1f3 上
在 bbu 上，只需要是定 ens1f3 的 mtu size
```
$ ifconfig ens1f3 mtu 9600
$ tcpdump -i ens1f3
```
完整 configuration
```
RP/0/RP0/CPU0:sqa-ncs540-1#show running-config
Fri Nov 12 21:48:43.829 UTC
Building configuration...
!! IOS XR Configuration 7.1.2
!! Last configuration change at Fri Nov 12 19:48:07 2021 by admin
!
hostname sqa-ncs540-1
domain name scw.corning.com
telnet vrf default ipv4 server max-servers 10
username admin
 group root-lr
 group cisco-support
 secret 10 $6$KJZuIJdC3eH/I...$Bqp.vUwOunsfKeAsNVdogFvaPcSyOtPkbYQzbSkysKyeiooM8FIwQ71jjI7ZKX7msLhpN.8HKrtRBo24YR/jP/
!
ptp
 clock
  domain 24
  profile g.8275.1 clock-type T-GM
 !
 profile slave8275.1
  multicast target-address ethernet 01-1B-19-00-00-00
  transport ethernet
  port state slave-only
  sync frequency 16
  clock operation one-step
  announce frequency 8
  delay-request frequency 16
 !
 profile master8275.1
  multicast target-address ethernet 01-1B-19-00-00-00
  transport ethernet
  port state master-only
  sync frequency 16
  clock operation one-step
  announce frequency 8
  delay-request frequency 16
 !
 utc-offset baseline 0
 physical-layer-frequency
!
monitor-session mirror ethernet
 destination interface TenGigE0/0/0/11
!
frequency synchronization
 quality itu-t option 1
 clock-interface timing-mode system
 log selection changes
!
call-home
 service active
 contact smart-licensing
 profile CiscoTAC-1
  active
  destination transport-method http
 !
!
gnss-receiver 0 location 0/RP0/CPU0
 frequency synchronization
  selection input
  priority 1
  wait-to-restore 0
 !
!
interface MgmtEth0/RP0/CPU0/0
 ipv4 address 10.12.87.89 255.255.240.0
!
interface GigabitEthernet0/0/0/0
 ptp
  profile slave8275.1
 !
 frequency synchronization
  selection input
  wait-to-restore 0
 !
!
interface GigabitEthernet0/0/0/2
 ptp
  profile master8275.1
 !
!
interface GigabitEthernet0/0/0/14
 shutdown
!
interface TenGigE0/0/0/1
 shutdown
!
interface TenGigE0/0/0/3
 shutdown
!
interface TenGigE0/0/0/4
 ptp
  profile master8275.1
 !
 frequency synchronization
 !
!
interface TenGigE0/0/0/5
 ptp
  profile master8275.1
 !
 frequency synchronization
 !
!
interface TenGigE0/0/0/6
 shutdown
!
interface TenGigE0/0/0/7
 shutdown
!
interface TenGigE0/0/0/8
 shutdown
!
interface TenGigE0/0/0/9
 shutdown
!
interface TenGigE0/0/0/12
 shutdown
!
interface TenGigE0/0/0/13
 shutdown
!
interface TenGigE0/0/0/15
 shutdown
!
interface TenGigE0/0/0/16
 shutdown
!
interface TenGigE0/0/0/17
 shutdown
!
interface TenGigE0/0/0/18
 shutdown
!
interface TenGigE0/0/0/19
 shutdown
!
interface TenGigE0/0/0/20
 mtu 9600
 l2transport
 !
!
interface TenGigE0/0/0/21
 mtu 9600
 ptp
  profile master8275.1
 !
 l2transport
  monitor-session mirror ethernet port-level
  !
 !
!
interface TenGigE0/0/0/22
 shutdown
!
interface TenGigE0/0/0/23
 shutdown
!
interface TwentyFiveGigE0/0/0/24
 shutdown
!
interface TwentyFiveGigE0/0/0/25
 shutdown
!
interface TwentyFiveGigE0/0/0/26
 shutdown
!
interface TwentyFiveGigE0/0/0/27
 shutdown
!
interface TwentyFiveGigE0/0/0/28
 shutdown
!
interface TwentyFiveGigE0/0/0/29
 shutdown
!
interface TwentyFiveGigE0/0/0/30
 shutdown
!
interface TwentyFiveGigE0/0/0/31
 shutdown
!
interface HundredGigE0/0/1/0
 shutdown
!
interface HundredGigE0/0/1/1
 shutdown
!
interface preconfigure TenGigE0/0/0/0
 shutdown
!
interface preconfigure TenGigE0/0/0/2
 shutdown
!
interface preconfigure TenGigE0/0/0/14
 shutdown
!
router static
 address-family ipv4 unicast
  0.0.0.0/0 10.12.80.1
  10.0.0.0/8 10.12.80.1
 !
!
l2vpn
 bridge group CU-1
  bridge-domain untagged
   interface TenGigE0/0/0/20
   !
   interface TenGigE0/0/0/21
   !
  !
 !
!
end
```