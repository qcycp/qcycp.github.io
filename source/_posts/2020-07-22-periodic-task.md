---
title: Periodic Task
abbrlink: 812d43
date: 2020-07-22 16:42:40
categories: [Programming, Golang]
tags:
- Golang
---
* General goroutine
```golang
go func() {
    for true {
        //do something...
        time.Sleep(1 * time.Second)
    }
}()
```
* time.Ticker
```golang
var ticker *time.Ticker
ticker = time.NewTicker(1 * time.Second)
go func() {
    for t := range ticker.C {
        fmt.Println(t)
        //do something...
    }
}()

ticker.Stop()
```