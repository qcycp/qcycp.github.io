---
title: middleware for golang(mux)
abbrlink: 1509988e
date: 2020-06-12 15:54:03
categories: [Programming, golang]
tags:
- golang
---
* main.go
```golang
package main
  
import (
    "fmt"
    "net/http"
    "github.com/gorilla/mux"
)

func before(h http.Handler) http.Handler {
    fn := func(w http.ResponseWriter, r *http.Request) {
        fmt.Println("before")
        h.ServeHTTP(w, r)
    }

    return http.HandlerFunc(fn)
}

func after(h http.Handler) http.Handler {
    fn := func(w http.ResponseWriter, r *http.Request) {
        h.ServeHTTP(w, r)
        fmt.Println("run after")
    }

    return http.HandlerFunc(fn)
}

func main() {
    r := mux.NewRouter()
    r.HandleFunc("/", Hello)
    http.ListenAndServe(":8888", after(before(r)))
}

func Hello(w http.ResponseWriter, req *http.Request) {
    fmt.Println("do something...")

    //w.Write([]byte("Hello World!"))
    fmt.Fprintln(w, "Hello World!")
} 
```
* result
`curl -X GET http://127.0.0.1:8888`
```bash
before
do something...
after
```