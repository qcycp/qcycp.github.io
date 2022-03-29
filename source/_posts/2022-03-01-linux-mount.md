---
title: mount USB in linux
abbrlink: 965b1254
date: 2022-03-01 11:52:40
categories:
tags:
---
```
[root@gnb ~]# lsblk
NAME            MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
sda               8:0    0 447.1G  0 disk
├─sda1            8:1    0   200M  0 part /boot/efi
├─sda2            8:2    0     1G  0 part /boot
└─sda3            8:3    0   446G  0 part
  ├─centos-root 253:0    0    50G  0 lvm  /
  ├─centos-swap 253:1    0     4G  0 lvm  [SWAP]
  └─centos-home 253:2    0   392G  0 lvm  /home
```
* 插入 USB
```
[root@gnb ~]# lsblk
NAME            MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
sda               8:0    0 447.1G  0 disk
├─sda1            8:1    0   200M  0 part /boot/efi
├─sda2            8:2    0     1G  0 part /boot
└─sda3            8:3    0   446G  0 part
  ├─centos-root 253:0    0    50G  0 lvm  /
  ├─centos-swap 253:1    0     4G  0 lvm  [SWAP]
  └─centos-home 253:2    0   392G  0 lvm  /home
sdb               8:16   1  58.9G  0 disk
└─sdb1            8:17   1  58.9G  0 part
```
* mount
```
[root@gnb ~]# mount /dev/sdb1 /mnt/usb
[root@gnb ~]# lsblk
NAME            MAJ:MIN RM   SIZE RO TYPE MOUNTPOINT
sda               8:0    0 447.1G  0 disk
├─sda1            8:1    0   200M  0 part /boot/efi
├─sda2            8:2    0     1G  0 part /boot
└─sda3            8:3    0   446G  0 part
  ├─centos-root 253:0    0    50G  0 lvm  /
  ├─centos-swap 253:1    0     4G  0 lvm  [SWAP]
  └─centos-home 253:2    0   392G  0 lvm  /home
sdb               8:16   1  58.9G  0 disk
└─sdb1            8:17   1  58.9G  0 part /mnt/usb
```
* umount
```
[root@gnb ~]# umount /dev/sdb1
```