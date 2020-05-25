---
title: linux notes
abbrlink: 106b04cc
date: 2020-05-25 16:48:03
categories: Linux
tags:
- linux
---
* change image format
```
$ sudo apt install imagemagick
//change png files to jpg
$ mogrify -format jpg *.png
//change bmp files to jpg
$ mogrify -format jpg *.bmp
```
* deb files
```
$ sudo dpkg -i 軟體套件名稱.deb
$ sudo apt-get remove 軟體套件名稱
```
* check connection status
```
$ ping ip
$ echo "hello" | nc ip port
```
* file format
dos格式文件傳輸到unix系統時，會在每行的結尾多一個`^M`
```
//in vim
//查詢file format
:set ff

//  設定file format
:set ff=dos
:set ff=unix
```