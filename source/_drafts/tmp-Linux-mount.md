---
title: tmp_Linux_mount
tags:
---
掛載硬碟
===

1. 在開機時，系統自動掛載
    a. 查看device node
        ll /sys/class/block
    b. 將第二顆硬碟掛載，並在每次開機時自動執行
        vim /etc/fstab
        /dev/sdb    /HDD1_2T    ext4    defaults,usrquota,grpquota   0       1 

2. 手動掛載
    sudo mount -t ext4 /dev/sdb /HDD1_2T

3. 掛載遠端目錄
    a. 利用Nautilus執行sftp
    b. sftp://nick@192.168.210.173/home/nick
    p.s. ctrl+l -> 叫出Nautlus的位址列