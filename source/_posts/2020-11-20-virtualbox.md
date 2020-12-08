---
title: VirtualBox - 重新設定 vdi disk 大小
abbrlink: 67ead39f
date: 2020-11-20 18:30:27
categories: VirtualBox
tags:
- VirtualBox
---
1. 目前配置大小為 32G
![](image01.png)
2. 以系統管理員身份執行 cmd，重新設定大小為 100G
`VBoxManage modifyhd E:\vm\testing\testing.vdi -–resize 102400`
![](image02.png)
![](image03.png)