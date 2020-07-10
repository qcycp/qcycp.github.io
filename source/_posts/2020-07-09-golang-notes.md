---
title: Golang notes
abbrlink: d5617b5e
date: 2020-07-09 10:52:47
categories: [Programming, Golang]
tags:
- Golang
---
* print struct
```golang
import (
    "encoding/json"
}

type Person struct {
    Name  string
    Age int
}

data := Person {
    Name: "John",
    Age: 30,
}

fmt.Println(data)
//{John 30}

fmt.Printf("%+v\n", data)
//{Name:John Age:30}

fmt.Printf("%#v\n", data)
//main.Person{Name:"John", Age:30}

data_json, _ := json.MarshalIndent(data, "", "  ")
fmt.Println(string(data_json))
/*
{
  "Name": "John",
  "Age": 30
}
*/
```
```golang
import (
    "encoding/json"
}

type Person struct {
  Name string  `json:"name"`
  Age int      `json:"age"`
}

data := Person {
    Name: "John",
    Age: 30,
}

data_json, _ := json.MarshalIndent(data, "", "  ")
fmt.Println(string(data_json))
/*
{
  "name": "John",
  "age": 30
}
*/
```
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
* json
json.Unmarshal: 把 json 字串轉成 struct
json.Marshal: 把 struct 轉成 json 字串
```golang
package main

import (
    "encoding/json"
    "fmt"
)

type Person struct {
    Name string
    Age  int
}

func main() {
    data := []byte(`{"name" : "John" , "age" : 30}`)
    var person Person
    json.Unmarshal(data, &person)
    fmt.Println(person) //{John 30}
    jsondata, _ := json.Marshal(person)
    fmt.Println(string(jsondata)) //{"Name":"John","Age":30}
}
```
```golang
// Field is ignored by this package.
Field int `json:"-"`

// Field appears in JSON as key "Name".
Field int `json:"Name"`

// Field appears in JSON as key "Name" and
// the field is omitted from the object if its value is empty,
// as defined above.
Field int `json:"Name,omitempty"`

// Field appears in JSON as key "Field" (the default), but
// the field is skipped if empty.
// Note the leading comma.
Field int `json:",omitempty"`
```
```golang
type A struct {
    Enabled int
    Name string
}

type B struct {
    Enabled int
    Name string
}

type Services struct {
    A *A `json:",omitempty"`
    B *B `json:",omitempty"`
}

contents := []byte(`{"A":{"Enabled":1,"Name":"test"},"B":{"Enabled":0,"Name":"test"}}`)
var data Services 
json.Unmarshal(contents, &data)
if data.A.Enabled == 0 { 
    data.A = nil 
}
if data.B.Enabled == 0 { 
    data.B = nil 
}
data_json, _ := json.Marshal(data)
fmt.Println(string(data_json)) //{"A":{"Enabled":1,"Name":"test"}}
```


array
https://ithelp.ithome.com.tw/articles/10205062