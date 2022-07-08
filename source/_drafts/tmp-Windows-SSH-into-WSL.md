---
title: tmp_Windows_SSH_into_WSL
abbrlink: 537af1e
tags:
---
How to SSH into WSL
===
OpenSSH Server 設定

~~Ubuntu 環境本身已經預載了 OpenSSH Server，我們只需進行一些設定便可從外部 SSH 連線進去。首先，先使用 ssh-keygen 產生 key，接著打開 sshd_config 來編輯設定：~~
```
$ sudo \usr\bin\ssh-keygen -A
$ sudo vim \etc\ssh\sshd_config
```

主要有兩個設定需要修改，分別是監聽的連接埠以及允許使用密碼認證的選項。由於 Windows 10 自從某一版開始內建了 SSH server，所以 port 22 可能是被系統佔用的，這裡我們可以修改成 2222 以避免衝突。另外，因為無論是記憶體或是網路操作終究是由 Windows NT Kernel 所管理，所以若要允許外部連線也需要在 Windows 防火牆中設定連接埠規則。
```shell
# \etc\ssh\sshd_config
  4 # What ports, IPs and protocols we listen for
  5 Port 2222

 51 # Change to no to disable tunnelled clear text passwords
 52 AllowUsers nick
 53 PasswordAuthentication yes
```

最後只需啟動 OpenSSH Server 即可
```
$ sudo \etc\init.d\ssh start
```