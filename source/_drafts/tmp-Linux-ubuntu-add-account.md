---
title: tmp_Linux_ubuntu_add_account
tags:
---
ubuntu新增帳戶
===

1. 新增使用者
    useradd nick
2. 設定密碼
    passwd nick
3. 更改user的group id
    usermod -g architecture nick
4. 複製環境檔案
    cp /home/defaultuser/.profile /home/testuser
    cp /home/defaultuser/.bashrc /home/testuser
5. 設定所屬帳號的權限
    chown -R testuser.architecture /home/testuser
6. 更改登入home目錄
    usermod -d /home/testuser testuser
7. 刪除該帳號
    userdel testuser

GUI介面新增使用者 System Settings/User Accounts/
用GUI來新增帳戶才會自動創建個人目錄

查看目前系統中所有的帳戶
cat /etc/passwd

可以在/etc/passwd去更改登入的home folder跟帳號的group權限
architecture:x:1000:1000:architecture,,,:/home/architecture:/bin/bash
nick:x:1001:1000:Nick Cheng,,,:/HDD1_2T/nick:/bin/bash