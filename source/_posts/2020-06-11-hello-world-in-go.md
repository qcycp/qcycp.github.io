---
title: Hello World in golang
abbrlink: 2ac2687f
date: 2020-06-11 14:39:53
categories: [Programming, golang]
tags:
- golang
---
1. 安裝golang
```bash
sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt update
sudo apt install golang-go
```
2. 安裝gin套件
go version 1.11+ is required
`go get -u github.com/gin-gonic/gin`
3. app.go
```golang
package main

import (
    "github.com/gin-gonic/gin"
    "net/http"
)

func main() {
    r := gin.Default()

    r.GET("/", func(c *gin.Context) {
        c.String(http.StatusOK, "Hello World!")
    })

    r.Run(":8888")
}
```
4. start server
`go run app.go`