---
title: update_go_version
abbrlink: 606eb6c7
date: 2020-08-31 10:25:51
categories: [Software, CentOS]
tags:
- CentOS
---
0. Information of go
```
$ go version
go version go1.12.13 linux/amd64
$ echo $GOROOT
/usr/local/go
```
1. Delete old version
```
$ sudo rm -rf $GOROOT
```
2. Download target go version
https://golang.org/dl/
```
$ wget https://golang.org/dl/go1.15.linux-amd64.tar.gz
```
3. Install
```
$ sudo tar -C /usr/local -xzf go1.15.linux-amd64.tar.gz
```