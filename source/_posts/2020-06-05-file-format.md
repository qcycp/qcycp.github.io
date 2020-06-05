---
title: file_format
abbrlink: 66ad5460
date: 2020-06-05 14:36:39
categories: Linux
tags:
- vim
---
dos格式文件傳輸到unix系統時，會在每行的結尾多一個`^M`
* in vim
  * 查詢文件格式
`:set ff`
  * 設定文件格式為unix
`:set ff=unix`
設定文件格式為dos
`:set ff=dos`
