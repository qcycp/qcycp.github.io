---
title: tmp_Linux_set_escape
abbrlink: 610a2bfa
tags:
---
發生錯誤後，停止shell script執行
===

在shell script中，加入"set -e"
可以在發生任何build error後，停止build code程序
若是沒加，可能會繼續往下執行script中的command