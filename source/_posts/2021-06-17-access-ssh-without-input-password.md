---
title: Access ssh without input password
abbrlink: e729699d
date: 2021-06-17 14:47:42
categories: System
tags:
- Linux
---
在 windown 下使用 ssh/scp 時，不需要輸入密碼

1. generate key in windows
```
C:\Users\User>ssh-keygen -t rsa
Generating public/private rsa key pair.
Enter file in which to save the key (C:\Users\User/.ssh/id_rsa):
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in C:\Users\User/.ssh/id_rsa.
Your public key has been saved in C:\Users\User/.ssh/id_rsa.pub.
The key fingerprint is:
SHA256:u7s0Cq8ljGfhuNonSa7CwLAxvyk9ebR8FFIitHGbeHk user@DESKTOP-A88C5KQ
The key's randomart image is:
+---[RSA 3072]----+
| .o .            |
|  .=.+.          |
|  o.=oE          |
|+  ....          |
|o=  .. .S        |
|o.o=...  .       |
|o+oBBo. +        |
|ooX+==.o o       |
|++o=.oo +o       |
+----[SHA256]-----+
```

2. 將 id_rsa.pub 內容複製進 linux ~/.ssh/authorized_keys
```
PS C:\Users\User> cat .ssh/id_rsa.pub
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDFTdfNrQFk+pnyFUpYlI9DjxcqgYhwaK1kPwKULW6qthMZ1331a/cczktzYGiRVDRa6AEdAAMdINi3Vw2tmfxAYOYGQA0GvRExTDQo+txWJlC6ZTQqrXgnDDldI9yDtlkOGFcUfvW6G/VVS0qdM1W5yN3hGHtGjccpsn/zal4dWFRuYv/b4iSLbcxtJG5tV5yEwqCA0da2QdT8NabKtcEi0D7N7V+ZWemlEnYZtGKHjAb25Lbk26wYFDHakCL1k75CloGPXoSp0M9smXLQ0d8MBbCJssQdMhQS4EHaeoihpHYB6dX66+wDPXvVv4gZOPpexOo64es9Uuz7RD5YxYIdlDFsH4LgJGUm7pC4BI1T618xlicc83VF7f2ElR5hSUROMWYld+MDlqAn4nftQyInzCXQsyAyRdq1mzbRKa7UvGiCmEdKUl+pj25+RjScTb7IWTqXXUCATcPmtg11B7AznnS5RkhvigXHGUH03X1HBHUtnI78frI+1/R6tjuesps= user@DESKTOP-A88C5KQ
```
* .ssh 資料夾的權限必須是 0700
* authorized_keys 檔案的權限必須是 0600
* 兩台機器 A、B 要溝通，在 A 上建立 public key and private key，然後將 public key 給 B，如此便能進行加密溝通