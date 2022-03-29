---
title: mplane
abbrlink: 23967ba
tags:
---

1. 要確定 DHCP Server 可連，確保 RU 可以拿到 IP
2. 如果是 M-Plane 有 support 的 Field，要透過 M-Plane 修改，不要直接手動修改 RRHconfig.xml (開機都會被M-plane蓋掉)
3. 最好應該是要有一個 script ，透過 netconf client 去設定 RU
4. 所有設定 OK ，要透過 M-plane replace /user-plane-configuration/tx-array-carriers/active 成 active Mode ,  此時才會帶起 ./init_rrh_config_enable_cuplane


# yangcli-pro

> connect
> root
> 192.167.27.49
> 

[root@localhost ~]# ssh -P 830 root@192.167.27.49
e/4g;4uh/6x.6


裝完 eng.run
/etc/profile 最後一行會有 set_qse.sh 27, 原本 oam_mode 是啥就還是啥
裝完 oam.run
/etc/profile 最後一行不會有 set_qse.sh 27, 預設 oam_mode 會是 enable



linux dhcp 要到 IP 後，會 append to qse-eth interface
oam dhcp 要到 IP 後，會 modify to qse-eth interface

一台 oam RU，又裝了 eng.run 後，此時, oam_mode is enabled
1. 如果 DHCP server 有開著，RU 會從 DHCP server 要 IP (oam dhcp)
a. 整個開機的過程中，qse-eth 會先被 assign 192.167.27.49 => 因為系統會有一個 user 從 ttyS0 auto-login，所以 /etc/profile(./set_qse.sh 27) 會被執行
b. 然後 oam dhcp client 啟動，所以 qse-eth 會被 assign 成 DHCP IP 192.167.27.57
c. 此時，從 192.167.27.57 ssh login => ssh -p 830 root@192.167.27.57
d. 當有 user login 時，又會執行 /etc/profile(./set_qse.sh 27)，所以 qse-eth 又會被 assign 成 192.167.27.49 (原本從 57 登入的 ternimal 會當掉)

2. 如果 DHCP server 沒有開
a. qse-eth 會被 assign 192.167.27.49 => 因為系統會有一個 user 從 /tty0 auto-login，所以 /etc/profile(./set_qse.sh 27) 會被執行
b. 但是此時無法透過 ssh 登入，因為系統中的 sshd(830) 沒有帶起來
c. sshd(830) 會在拿到 DHCP IP 的過程中帶起來

一台 oam RU，又裝了 eng.run 後，手動下了 ./set_oam_mode -d 後
1. 如果 DHCP server 有開著，RU 會從 DHCP server 要 IP (linux dhcp)
a. 此時，不管 ssh -p 830 root@192.167.27.57 / ssh -p 830 root@192.167.27.49 都能登入

一台 oam RU，又裝了 oam.run 後
1. 一定要有 DHCP server，因為 /etc/profile 最後一行不會有 ./set_qse.sh 27 (linux dhcp)
2. 此時的 DHCP 是 linux dhcp


root@arria10:~/test# ps -ef | grep tty
root       386     1  0 14:11 ttyS0    00:00:00 /bin/login -f

root@arria10:~/test# who
root            ttyS0           old     Aug 30 14:11:07


root       641     1  0 14:15 ?        00:00:00 sshd: /usr/sbin/sshd -f /etc/ssh/sshd_config -o LogLevel=Debug3 -E /tmp/ssh_log [listener] 0 of 10-100 startups

sshd 830
/usr/sbin/sshd -f /etc/ssh/sshd_config -o LogLevel=Debug3 -E /tmp/ssh_log

啟動 RU
replace /user-plane-configuration/tx-array-carries/active


set-processing-elements.xml
set-rx-compression.xml
set-vlan.xml
set-uplane-carriers.xml

* yangcli-pro
```
[root@opennesswkn-1 ~]# yangcli-pro --server=192.167.27.56 --ncport=830 --user=root
```
* create-subscription
yangcli 連上登入後，可以透過 create-subscription 
```
[root@opennesswkn-1 ~]# yangcli-pro

  yangcli-pro version 20.10-3
  libssh2 version 1.8.0

  Copyright (c) 2008-2012, Andy Bierman, All Rights Reserved.
  Copyright (c) 2012-2020, YumaWorks, Inc., All Rights Reserved.

  Type 'help' or 'help <command-name>' to get started
  Use the <tab> key for command and value completion
  Use the <enter> key to accept the default value in brackets

  These escape sequences are available when filling parameter values:

        ?       help
        ??      full help
        ?s      skip current parameter
        ?se     skip rest of optional parameters
        ?c      cancel current command

  These assignment statements are available when entering commands:

        $<varname> = <expr>     Local user variable assignment
        $$<varname> = <expr>    Global user variable assignment
        @<filespec> = <expr>    File assignment

> connect

Enter NcxUserName value for leaf <user>
:connect> root

Enter host value for leaf <server>
:connect> 192.167.27.56

Enter the number of the selected case statement:

  1: case password:
       leaf password
  2: case no-password:
       leaf no-password

Enter case number [1 - 2]:
:connect> 1

Enter string value for leaf <password>
:connect>

NETCONF 1.1 session established for root on 192.167.27.56

Client Session Id: 1
Server Session Id: 1

Server Protocol Capabilities
   base:1.0
   base:1.1
   interleave:1.0
   notification:1.0
   partial-lock:1.0
   rollback-on-error:1.0
   url:1.0
   validate:1.0
   validate:1.1
   with-defaults:1.0
   writable-running:1.0
   xpath:1.0
   yang-library:1.0

Server Module Capabilities
   foxconn-rru-led-control@2021-09-01
   iana-crypt-hash@2014-08-06
      Features:
         crypt-hash-md5
         crypt-hash-sha-256
         crypt-hash-sha-512
   iana-hardware@2018-03-13
   iana-if-type@2017-01-19
   ietf-crypto-types@2019-07-02
   ietf-dhcpv6-types@2018-01-30
   ietf-hardware@2018-03-13
      Features:
         entity-mib
         hardware-state
         hardware-sensor
   ietf-inet-types@2013-07-15
   ietf-interfaces@2018-02-20
      Features:
         arbitrary-names
         pre-provisioning
         if-mib
   ietf-ip@2018-02-22
      Features:
         ipv4-non-contiguous-netmasks
         ipv6-privacy-autoconf
   ietf-netconf-acm@2018-02-14
   ietf-netconf-monitoring@2010-10-04
   ietf-netconf-notifications@2012-02-06
   ietf-netconf-partial-lock@2009-10-19
   ietf-netconf-with-defaults@2011-06-01
   ietf-system@2014-08-06
      Features:
         radius
         authentication
         local-users
         radius-authentication
         ntp
         ntp-udp-port
         timezone-name
         dns-udp-tcp-port
   ietf-yang-library@2016-06-21
   ietf-yang-types@2013-07-15
   nc-notifications@2008-07-14
   notifications@2008-07-14
   o-ran-alarm-id@2019-02-04
   o-ran-compression-factors@2020-08-10
      Features:
         CONFIGURABLE-FS-OFFSET
   o-ran-delay-management@2020-08-10
      Features:
         ADAPTIVE-RU-PROFILE
   o-ran-dhcp@2019-07-03
   o-ran-file-management@2019-07-03
   o-ran-fm@2019-02-04
   o-ran-hardware@2020-04-17
      Features:
         ENERGYSAVING
   o-ran-interfaces@2020-04-17
      Features:
         UDPIP-BASED-CU-PLANE
         ALIASMAC-BASED-CU-PLANE
   o-ran-lbm@2019-02-04
   o-ran-module-cap@2020-08-10
      Features:
         LAA
         EAXC-ID-GROUP-SUPPORTED
         TRANSPORT-FRAGMENTATION
         DSS_LTE_NR
         PRACH-STATIC-CONFIGURATION-SUPPORTED
         SRS-STATIC-CONFIGURATION-SUPPORTED
         CONFIGURABLE-TDD-PATTERN-SUPPORTED
   o-ran-mplane-int@2019-07-03
   o-ran-operations@2019-07-03
   o-ran-performance-management@2020-04-17
      Features:
         GRANULARITY-TRANSPORT-MEASUREMENT
         GRANULARITY-EAXC-ID-MEASUREMENT
   o-ran-processing-element@2020-04-17
      Features:
         SHARED_CELL
   o-ran-software-management@2019-07-03
   o-ran-supervision@2020-04-17
   o-ran-sync@2020-08-10
      Features:
         GNSS
         ANTI-JAM
   o-ran-trace@2019-07-03
   o-ran-transceiver@2019-07-03
   o-ran-troubleshooting@2019-02-04
   o-ran-uplane-conf@2020-08-10
      Features:
         EAXC-GAIN-CORRECTION
         TX-REFERENCE-LEVEL
   o-ran-usermgmt@2019-07-03
   yuma-app-common@2012-08-16
   yuma-mysession@2010-05-10
   yuma-ncx@2012-01-13
   yuma-proc@2012-10-10
   yuma-time-filter@2012-11-15
   yuma-types@2012-06-01
   yuma123-mysession-cache@2018-11-12
   ietf-netconf@2011-06-01
      Features:
         writable-running
         candidate
         confirmed-commit
         rollback-on-error
         validate
         startup
         url
         xpath
   yuma123-netconf-types@2017-06-23
   yuma123-system@2017-03-26

Server Enterprise Capabilities
   None

Protocol version set to: RFC 6241 (base:1.1)
Default target set to: <running>
Save operation mapped to: none
Default with-defaults behavior: explicit
Additional with-defaults behavior: trim,report-all,report-all-tagged
YANG library set to: RFC 7895
module-set-id: 5cc41aecae24eb828d720481be1163e6d26e1f27

ietf-crypto-types@2019-07-02.yang:8.3: warning(1015): import not used

o-ran-interfaces@2020-04-17.yang:33.3: warning(1015): import not used

o-ran-operations@2019-07-03.yang:18.3: warning(1015): import not used

o-ran-uplane-conf@2020-08-10.yang:1646.24: warning(1050): unique-stmt component conditions do not match parent list

o-ran-uplane-conf@2020-08-10.yang:1727.24: warning(1050): unique-stmt component conditions do not match parent list

root@192.167.27.56>
```
* xget /user-plane-configuration/tx-array-carriers
在系統剛啟動時的狀態
```
root@192.167.27.56> xget /user-plane-configuration/tx-array-carriers

RPC Data Reply 2 for session 1 [default]:

rpc-reply {
  data {
    user-plane-configuration {
      tx-array-carriers  TX-Ca0 {
        name TX-Ca0
        center-of-channel-bandwidth 4700000000
        channel-bandwidth 100000000
        active INACTIVE
        state DISABLED
        type NR
        duplex-scheme TDD
        rw-duplex-scheme TDD
        rw-type NR
        gain -30.0
      }
    }
  }
}
```
* xget /user-plane-configuration/tx-array-carriers
執行了 edit-config config=@set-uplane-carriers.xml 之後的狀態
```
root@192.167.27.56> edit-config config=@set-uplane-carriers.xml

Filling container /edit-config/input/target:
RPC OK Reply 5 for session 1 [default]:

root@192.167.27.56> xget /user-plane-configuration/tx-array-carriers

RPC Data Reply 6 for session 1 [default]:

rpc-reply {
  data {
    user-plane-configuration {
      tx-array-carriers  TX-Ca0 {
        name TX-Ca0
        center-of-channel-bandwidth 3840000000
        channel-bandwidth 100000000
        active ACTIVE
        state BUSY
        type NR
        duplex-scheme TDD
        rw-duplex-scheme TDD
        rw-type NR
        gain -30.0
      }
    }
  }
}
```
* 在 state BUSY 的情況下，無法使用 edit-config config=@set-uplane-carriers.xml 更改狀態
```
root@192.167.27.56> edit-config config=@set-uplane-carriers.xml

Filling container /edit-config/input/target:
RPC Error Reply 20 for session 1 [default]:

rpc-reply {
  rpc-error {
    error-type application
    error-tag in-use
    error-severity error
    error-app-tag resource-in-use
    error-path /o-ran-uplane-conf:user-plane-configuration/o-ran-uplane-conf:tx-array-carriers[o-ran-uplane-conf:name='TX-Ca0']/o-ran-uplane-conf:active
    error-message 'resource in use'
    error-info {
      error-number 257
    }
  }
}
```
* 啟動完成
```
root@192.167.27.56> xget /user-plane-configuration/tx-array-carriers

RPC Data Reply 21 for session 1 [default]:

rpc-reply {
  data {
    user-plane-configuration {
      tx-array-carriers  TX-Ca0 {
        name TX-Ca0
        center-of-channel-bandwidth 3840000000
        channel-bandwidth 100000000
        active ACTIVE
        state READY
        type NR
        duplex-scheme TDD
        rw-duplex-scheme TDD
        rw-type NR
        gain -30.0
      }
    }
  }
}
```
* INACTIVE
```
root@192.167.27.56> edit-config config=@set-uplane-carriers.xml

Filling container /edit-config/input/target:
RPC OK Reply 23 for session 1 [default]:

root@192.167.27.56> xget /user-plane-configuration/tx-array-carriers

RPC Data Reply 24 for session 1 [default]:

rpc-reply {
  data {
    user-plane-configuration {
      tx-array-carriers  TX-Ca0 {
        name TX-Ca0
        center-of-channel-bandwidth 3840000000
        channel-bandwidth 100000000
        active INACTIVE
        state DISABLED
        type NR
        duplex-scheme TDD
        rw-duplex-scheme TDD
        rw-type NR
        gain -30.0
      }
    }
  }
}
```
* xget /sync
查看目前 ptp4l 的狀態
```
root@192.167.27.56> xget /sync

RPC Data Reply 18 for session 1 [default]:

rpc-reply {
  data {
    sync {
      sync-status {
        sync-state FREERUN
        time-error 0.0
        frequency-error 0.0
        supported-reference-types  PTP {
          item PTP
        }
      }
      sync-capability {
        sync-t-tsc CLASS_B
      }
      ptp-config {
        domain-number 24
        accepted-clock-classes  248 {
          clock-classes 248
        }
        ptp-profile G_8275_1
      }
      ptp-status {
        lock-state UNLOCKED
        clock-class 0
        partial-timing-supported false
      }
    }
  }
}
```
```
root@192.167.27.56> xget /sync

RPC Data Reply 7 for session 1 [default]:

rpc-reply {
  data {
    sync {
      sync-status {
        sync-state LOCKED
        time-error 0.0
        frequency-error 0.0
        supported-reference-types  PTP {
          item PTP
        }
      }
      sync-capability {
        sync-t-tsc CLASS_B
      }
      ptp-config {
        domain-number 24
        accepted-clock-classes  248 {
          clock-classes 248
        }
        ptp-profile G_8275_1
      }
      ptp-status {
        lock-state LOCKED
        clock-class 0
        partial-timing-supported false
      }
    }
  }
}
```
* DU mac
```
root@192.167.27.56> replace /processing-elements/ru-elements/transport-flow/eth-flow/o-du-mac-address

Filling mandatory leaf /processing-elements/ru-elements/transport-flow/eth-flow/o-du-mac-address:
Enter mac-address value for leaf <o-du-mac-address>
root@192.167.27.56:replace> 00:11:22:33:44:66

Filling key leaf /processing-elements/ru-elements/name:
Enter string value for leaf <name>
root@192.167.27.56> PE0

RPC OK Reply 4 for session 6 [default]:
```
* vlan-id
```
root@192.167.27.56> replace /interfaces/interface/vlan-id

Filling optional leaf /interfaces/interface/vlan-id:
Enter uint16 value for leaf <vlan-id>
root@192.167.27.56:replace> 115

Filling key leaf /interfaces/interface/name:
Enter string value for leaf <name>
root@192.167.27.56> iC

RPC OK Reply 14 for session 1 [default]:
```
```
[root@opennesswkn-1 mplane]# cat set-vlan.xml
<interfaces xmlns="urn:ietf:params:xml:ns:yang:ietf-interfaces">
  <interface>
    <name>iC</name>
        <mac-address xmlns="urn:o-ran:interfaces:1.0">6c:ad:ad:00:00:ef</mac-address>
    <vlan-id xmlns="urn:o-ran:interfaces:1.0">115</vlan-id>
  </interface>
  <interface>
    <name>iU</name>
        <mac-address xmlns="urn:o-ran:interfaces:1.0">6c:ad:ad:00:00:ef</mac-address>
    <vlan-id xmlns="urn:o-ran:interfaces:1.0">116</vlan-id>
  </interface>
</interfaces>

root@192.167.27.56> edit-config config=@set-vlan.xml

Filling container /edit-config/input/target:
RPC OK Reply 12 for session 1 [default]:
```
* QoS of vlan-id
```
root@192.167.27.56> replace /interfaces/interface/class-of-service/u-plane-marking

Filling optional leaf /interfaces/interface/class-of-service/u-plane-marking:
Enter pcp value for leaf <u-plane-marking> [7]
root@192.167.27.56:replace> 0

Filling key leaf /interfaces/interface/name:
Enter string value for leaf <name>
root@192.167.27.56> iU

RPC OK Reply 7 for session 2 [default]:

root@192.167.27.56> replace /interfaces/interface/class-of-service/c-plane-marking

Filling optional leaf /interfaces/interface/class-of-service/c-plane-marking:
Enter pcp value for leaf <c-plane-marking> [7]
root@192.167.27.56:replace> 0

Filling key leaf /interfaces/interface/name:
Enter string value for leaf <name>
root@192.167.27.56> iC

RPC OK Reply 8 for session 2 [default]:
```
* mplane vlan range
```
root@192.167.27.56> replace /mplane-info/searchable-mplane-access-vlans-info/vlan-range/lowest-vlan-id

Filling optional leaf /mplane-info/searchable-mplane-access-vlans-info/vlan-range/lowest-vlan-id:
Enter vlan-id value for leaf <lowest-vlan-id>
root@192.167.27.56:replace> 169

RPC OK Reply 5 for session 2 [default]:

root@192.167.27.56> replace /mplane-info/searchable-mplane-access-vlans-info/vlan-range/highest-vlan-id

Filling optional leaf /mplane-info/searchable-mplane-access-vlans-info/vlan-range/highest-vlan-id:
Enter vlan-id value for leaf <highest-vlan-id>
root@192.167.27.56:replace> 175

RPC OK Reply 6 for session 2 [default]:
```

## Trouble Shooting
1. 下了 xget /user-plane-configuration/tx-array-carriers 沒有反應
可以先設定 set-uplane-carriers.xml 中的 tx-array-carriers 為 INACTIVE => 執行
再設定為 ACTIVE => 執行

2. ru-mac-address
無法使用 mplane 去更改 ru-mac-address
replace /processing-elements/ru-elements/transport-flow/eth-flow/ru-mac-address
在 RRHconfig_xran.xml 中，值也會固定寫成 RRH_SRC_MAC_ADDR = 00:00:00:00:00:00
可以用 ifconfig 去確認 RU MAC
```
root@arria10:~/test# ifconfig
lo        Link encap:Local Loopback
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:167658 errors:0 dropped:0 overruns:0 frame:0
          TX packets:167658 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:10400774 (9.9 MiB)  TX bytes:10400774 (9.9 MiB)

qse-eth   Link encap:Ethernet  HWaddr 6c:ad:ad:00:00:ef
          inet addr:192.167.27.56  Bcast:192.167.27.255  Mask:255.255.255.0
          inet6 addr: fe80::6ead:adff:fe00:ef/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST DYNAMIC  MTU:4000  Metric:1
          RX packets:2247730 errors:0 dropped:27 overruns:0 frame:0
          TX packets:871418 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:161384810 (153.9 MiB)  TX bytes:57855110 (55.1 MiB)
          Memory:ff224000-ff224fff
```
3. vlan-id CoS=7
因為預設的 CoS=7，所以設定了 vlan-id 後，會設定成 0xe0001/0xe0002