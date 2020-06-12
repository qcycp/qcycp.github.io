---
title: middleware for golang(gin)
abbrlink: a3df554
date: 2020-06-12 11:16:17
categories: [Programming, golang]
tags:
- golang
---
* c.Next()
It means that after middleware is done executing, we can pass on request handler to the next function in the chain.
* main.go
```golang
package main

import (
    "fmt"
    "net/http"
    
    "github.com/gin-gonic/gin"
)

func before(c *gin.Context) {
    fmt.Println("before")
    c.Next()
}

func after(c *gin.Context) {
    fmt.Println("after")
    c.Next()
}

func main() {
    r := gin.Default()

    r.Use(before)
    r.GET("/", func(c *gin.Context) {
        fmt.Println("do something...")
        c.String(http.StatusOK, "Hello World")
    }, after)


    r.Run(":8888")
}
```
* result
`curl -X GET http://127.0.0.1:8888`
```bash
[GIN-debug] GET    /                         --> main.after (5 handlers)
[GIN-debug] Listening and serving HTTP on :8888
before
do something...
after
[GIN] 2020/06/12 - 11:12:52 | 200 |     262.611µs |    192.168.56.5 | GET      "/"
```
* middleware function can be written in another way
```golang
func before() gin.HandlerFunc {
    fmt.Println("do something here...")
    return func(c *gin.Context) {
        fmt.Println("before")
        c.Next()
    }
}

func main() {
    //
    r.Use(before())
    //
}
```