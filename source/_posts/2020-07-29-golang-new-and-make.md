---
title: new and make
abbrlink: 7f85b3c1
date: 2020-07-29 08:51:18
categories: [Programming, Go]
tags:
- Go
---
* new
  * 返回指標，指向分配給宣告變數的記憶體空間
  * 會初始化宣告的變數, 如 string 會賦值為 ""，number 會賦值為 0
  * 對於 channel, map, slice 等等, 會賦值為 nil
```golang
p := new(int)

var v int
p := &v

person := new(map[string]interface{})
person["name"] = "John" // invalid operation: people["name"] (type *map[string]interface {} does not support indexing)
```
* make
  * 不會返回指標
  * 用來初始化數據結構，包含 channel, map, slice, etc.
```golang
slice := make([]int, 0, 100)
hash := make(map[int]bool, 10)
ch := make(chan int, 5)
```