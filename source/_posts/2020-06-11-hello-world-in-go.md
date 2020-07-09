---
title: Hello World for Golnag
abbrlink: 2ac2687f
date: 2020-06-11 14:39:53
categories: [Programming, Go]
tags:
- Go
---
* 安裝 Golang in 開發環境
go version 1.11+ is required for gin
```bash
sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt update
sudo apt install golang-go
```
* Without any framework
```golang
package main

import (
    "fmt"
    "log"
    "net/http"
)

func index(w http.ResponseWriter, r *http.Request){
    fmt.Fprintf(w, "Hello World!")
}

func main() {
    http.HandleFunc("/", index)
    http.HandleFunc("/api", func(w http.ResponseWriter, r *http.Request) {
        res := "Hello World!"
        fmt.Fprintf(w, "%s", res)
    })


    log.Fatal(http.ListenAndServe(":8888", nil))
}
```
* Using gin
1. 安裝gin套件
`go get -u github.com/gin-gonic/gin`
2. app.go
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
3. start server
`go run app.go`
4. compile
`go build`
`go build -o app`