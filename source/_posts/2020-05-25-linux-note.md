---
title: Linux Notes
abbrlink: 106b04cc
date: 2020-05-25 16:48:03
categories: Linux
tags:
- Linux
---
* change image format
```bash
$ sudo apt install imagemagick
//change png files to jpg
$ mogrify -format jpg *.png
//change bmp files to jpg
$ mogrify -format jpg *.bmp
```
* deb files
```bash
$ sudo dpkg -i 軟體套件名稱.deb
$ sudo apt-get remove 軟體套件名稱
```
* check connection status
```bash
$ ping ip
$ echo "hello" | nc ip port
```
* file format
dos格式文件傳輸到unix系統時，會在每行的結尾多一個`^M`
```bash
//in vim
//查詢file format
:set ff

//  設定file format
:set ff=dos
:set ff=unix
```
* add-apt-repository
透過add-apt-repository新增的資訊，會存在
`/etc/apt/sources.list.d`
* 查詢一個process在執行期間，context switch的次數
  * voluntary_ctxt_switches: 自願  
  * nonvoluntary_ctxt_switches: 強制  
```bash
$ grep ctxt /proc/6415/status
voluntary_ctxt_switches:        80757
nonvoluntary_ctxt_switches:     805
```
* 查看process切换的每秒統計值
`pidstat -w 1`
```bash
$ sudo apt install sysstat
$ pidstat -w 1
Linux 4.4.0-131-generic (vm-docker)     04/02/2019      _x86_64_        (4 CPU)

05:14:06 PM   UID       PID   cswch/s nvcswch/s  Command
05:14:07 PM     0         7     38.61      0.00  rcu_sched
05:14:07 PM     0        23     19.80      0.00  ksoftirqd/3
05:14:07 PM     0        29      0.99      0.00  khungtaskd
```
* useful tools
  * landscape-common
  Show system information when ssh logging
```bash
  System information as of Fri Jun 12 16:37:37 CST 2020

  System load:                    0.24
  Usage of /:                     25.7% of 97.93GB
  Memory usage:                   78%
  Swap usage:                     71%
  Processes:                      310
  Users logged in:                1
  IP address for enp0s3:          10.0.2.15
  IP address for enp0s8:          192.168.56.5
```
* Boot Information
  * boot-id, 每次重開機都會自動生成一組unique uuid
`cat /proc/sys/kernel/random/boot_id`
  * Bootup Identifier History
`journalctl --list-boots`
* Machine Identifier
`cat /etc/machine-id`
* Hard Drive Block ID
`sudo blkid | grep -oP 'UUID="\K[^"]+'`
* Drive Identifiers
`sudo fdisk -l | grep -i "Disk identifier" | awk '{print $3}'`