---
title: tmp_Linux_ubuntu_system_information
abbrlink: bff6618e
tags:
---
ubuntu 查詢系統資訊
===

# 查詢ubuntu版本
lsb_release -a
cat /etc/issue
# 查詢kernel版本
uname -a

# CPU 資訊
cat /proc/cpuinfo

# MEM 資訊
cat /proc/meminfo

# 查看記憶體使用情形
free

# free -m (以 MB 的方式顯示)
free -m (以 MB 的方式顯示)

# 在ubuntu下查詢顯卡型號
lspci | grep VGA

查UUID找出指定硬碟
sudo blkid
root@tpvswa04:/home/architecture# blkid -s UUID
/dev/sda1: UUID="544e01e2-5d4f-46ca-9d4c-13ca5e0e6caa"
/dev/sda5: UUID="f5af296c-df79-4b5c-8782-55362e619d6d"
/dev/sdb: UUID="443b0d1d-1d9e-4a25-bf37-2bf25b0d3c70"
/dev/sdc: UUID="84b2c00e-bafb-497f-9cda-6a9b95a91795"

輸出硬碟規格
fdisk -l /dev/sdb

$df -h
會顯示出硬碟的掛載狀況

mkfs -t ext4 /dev/sdb1
選擇格式化成ext4類型

查詢系統位元及kernel版本
===

查詢kernel版本
nick@tpvswa05:~ $ uname -r
3.13.0-32-generic

查詢系統位元
nick@tpvswa05:~ $ uname -m
x86_64

查詢ubuntu系統版本
===

nick@tpvswa05:~ $ lsb_release -a
No LSB modules are available.
Distributor ID: Ubuntu
Description: Ubuntu 12.04.5 LTS
Release: 12.04
Codename: precise

查詢系統位元及kernel版本
===

查詢kernel版本
nick@tpvswa05:~ $ uname -r
3.13.0-32-generic

查詢系統位元
nick@tpvswa05:~ $ uname -m
x86_64