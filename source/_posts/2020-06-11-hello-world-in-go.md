---
title: Hello World in golnag(gin)
abbrlink: 2ac2687f
date: 2020-06-11 14:39:53
categories: [Programming, golang]
tags:
- golang
---
1. 安裝golang
go version 1.11+ is required for gin
```bash
sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt update
sudo apt install golang-go
```
2. 安裝gin套件
`go get -u github.com/gin-gonic/gin`
3. app.go
```golang
package main

import (
    "net/http"
    "github.com/gin-gonic/gin"
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