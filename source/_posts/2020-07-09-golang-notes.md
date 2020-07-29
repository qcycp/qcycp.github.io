---
title: Golang notes
abbrlink: d5617b5e
date: 2020-07-09 10:52:47
categories: [Programming, Go]
tags:
- Go
---
* 宣告byte variable
```
single := byte('A')
array := []byte{'A', 'B', 'C'}
```
* package
1. package main 是程式入口，其餘的 package name 必須和所在的資料夾同名
2. 同一個 package 內，互相調用的 variable or function，命名可以不分大小寫
3. 跨 package 調用時，被使用的 variable or function，命名必須大寫開頭
4. 編譯
`go run a.go b.go`
`go run *.go`
`go build a.go b.go`
`go build .`
5. 多層目錄
  * 目錄結構
project
├── common
│   └── b.go
└── a.go
  * 初始化 module
`user@user:~/project$ go mod init project`
執行之後會產生 go.mod 檔案
  * 使用
在a.go中，`import (common "project/common")`
然後呼叫 `common.foo()`
* 初始化專案，當專案中有多個目錄結構時，需要建立 `go.mod` 來標示專案的根目錄，確保各個 module 在 import 時的相依性
`$ go mod init project`
* release / debug mode
```bash
[GIN-debug] [WARNING] Running in "debug" mode. Switch to "release" mode in production.
 - using env:   export GIN_MODE=release
 - using code:  gin.SetMode(gin.ReleaseMode)
```
* Reference
[跟煎鱼学 Go](https://eddycjy.gitbook.io/golang/)
[學習Go](https://ithelp.ithome.com.tw/articles/10205062)

