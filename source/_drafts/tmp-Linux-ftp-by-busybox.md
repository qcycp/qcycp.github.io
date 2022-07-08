---
title: tmp_Linux_ftp_by_busybox
abbrlink: 7e916f5c
tags:
---
ftp by busybox
===
```shell
root@pl:/ $ busybox tcpsvd -v 0 21 busybox ftpd -w /mnt/usb_storage
busybox tcpsvd -v 0 21 busybox ftpd -w /mnt/usb_storage
tcpsvd: listening on 0.0.0.0:21, starting
tcpsvd: start 2061 192.168.31.183:21-192.168.31.236:12531
tcpsvd: status 1/30
```