---
title: File Upload Operation
abbrlink: f3b1b78
date: 2020-07-21 08:52:35
categories: [Programming, Go]
tags:
- Go
---
* server
```golang
package main

import (
    "fmt"
    "net/http"
    "github.com/gin-gonic/gin"
)

func upload(c *gin.Context) {
    code := 200
    res := make(map[string]interface{})

    param1 := c.PostForm("param1")
    param2 := c.PostForm("param2")

    file, err := c.FormFile("file")
    if err != nil {
        fmt.Println(err)
        code = 401
    }

    res["param1"] = param1
    res["param2"] = param2
    res["filename"] = file.Filename
    res["filesize"] = file.Size

    c.JSON(http.StatusOK, gin.H {
        "code":  code,
        "data": res,
    })
}

func main() {
    r := gin.Default()
    r.POST("/upload", upload)
    r.Run(":8888")
}
```
* client
```golang
package main

import (
    "bytes"
    "fmt"
    "io"
    "io/ioutil"
    "log"
    "mime/multipart"
    "net/http"
    "os"
    "path/filepath"
)

func newfileUploadRequest(uri string, params map[string]string, paramName, path string) (*http.Request, error) {
    file, err := os.Open(path)
    if err != nil {
        return nil, err
    }
    defer file.Close()

    body := &bytes.Buffer{}
    writer := multipart.NewWriter(body)
    part, err := writer.CreateFormFile(paramName, filepath.Base(path))
    if err != nil {
        return nil, err
    }
    _, err = io.Copy(part, file)

    for key, val := range params {
        _ = writer.WriteField(key, val)
    }
    err = writer.Close()
    if err != nil {
        return nil, err
    }

    req, err := http.NewRequest("POST", uri, body)
    req.Header.Set("Content-Type", writer.FormDataContentType())
    return req, err
}

func main() {
    payload := map[string]string{
        "param1": "test1",
        "param2": "test2",
    }
    url := "http://192.168.56.3:8888/upload"
    request, err := newfileUploadRequest(url, payload, "file", "/home/user/test.txt")
    if err != nil {
        log.Fatal(err)
    }
    client := &http.Client{}
    resp, err := client.Do(request)
    if err != nil {
        log.Fatal(err)
    } else {
        defer resp.Body.Close()
        body, err := ioutil.ReadAll(resp.Body)
        if err != nil {
            log.Fatal(err)
        }
        fmt.Println(string(body))
    }
}
```
* output
```json
{
  "code": 200,
  "data": {
    "filename": "test.txt",
    "filesize": 684,
    "param1": "test1",
    "param2": "test2"
  }
}
```