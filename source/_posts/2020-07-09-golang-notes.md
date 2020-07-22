---
title: Golang notes
abbrlink: d5617b5e
date: 2020-07-09 10:52:47
categories: [Programming, Go]
tags:
- Go
---
* struct
```golang
import (
    "encoding/json"
}

type Person struct {
    Name   string

    //轉換成JSON時，使用 age 代替 Age
    Age    int    `json:"age"`

    //轉換成JSON時，忽略此欄位
    Gender string `json:"-"`

    //轉換成JSON時，若此欄位為空，則忽略 (若int: 0 string: ""，則也會被忽略)
    Phone  string `json:",omitempty"`
}

func main() {
    data := Person {
        Name: "John",
        Age: 30,
        Gender: "male",
    }

    fmt.Println(data)
    //{John 30 male }

    fmt.Printf("%+v\n", data)
    //{Name:John Age:30 Gender:male Phone:}

    fmt.Printf("%#v\n", data)
    //main.Person{Name:"John", Age:30, Gender:"male", Phone:""}

    data_json, _ := json.MarshalIndent(data, "", "  ")
    fmt.Println(string(data_json))
    //{
    //  "Name": "John",
    //  "age": 30
    //}
}
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
* 初始化專案，當專案中有多個目錄結構時，需要建立 `go.mod` 來標示專案的根目錄，確保各個 module 在 import 時的相依性
`$ go mod init project`
* release / debug mode
```bash
[GIN-debug] [WARNING] Running in "debug" mode. Switch to "release" mode in production.
 - using env:   export GIN_MODE=release
 - using code:  gin.SetMode(gin.ReleaseMode)
```
* struct
```golang
type Person struct {
    Name string
    Age int
}
```
  * 宣告
```golang
p1 := &Person{}
p1.Name = "John"
p1.Age = 20
fmt.Println(*p1) //{John 20}

p2 := new(Person)
p2.Name = "John"
p2.Age = 20
fmt.Println(*p2) //{John 20}

var p3 Person
p3.Name = "John"
p3.Age = 20
fmt.Println(p3) //{John 20}
```
  * call by pointer
```golang
func modify(p *Person) {
    p.Name = "Bob"
}
modify(p1)
fmt.Println(*p1) //{Bob 20}

modify(p2)
fmt.Println(*p2) //{Bob 20}

modify(&p3)
fmt.Println(p3) //{Bob 20}
```
  * Append data into struct array
```golang
func main() {
    john := Person{Name:"John",Age:20}
    mary := Person{Name:"Mary",Age:25}

    var People []Person
    People = append(People, john)
    People = append(People, mary)
    fmt.Println(People) //[{John 20} {Mary 25}]
}
```
  * Access data in the struct array
```golang
func dump(People []Person) {
    for id, person := range People {
        //可以用person，也可以用People[id]來存取資料
        //0: Name: John, Age: 20
        //1: Name: Mary, Age: 25
        fmt.Printf("%d: Name: %s, Age: %d\n", id, person.Name, People[id].Age)
    }
}
```
  * delete elements in a array
```golang
for id, person := range People {
    if person.Name == "John" {
        People = append(People[:id], People[id+1:]...)
        break
    }
}
```
* new and make
  * `new`
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
  * `make`
    * 不會返回指標
    * 用來初始化數據結構，包含 channel, map, slice, etc.
```golang
slice := make([]int, 0, 100)
hash := make(map[int]bool, 10)
ch := make(chan int, 5)
```

* map
如果有一串資料 {"Name": "John", "Gender": "Male"}，使用map來儲存
```golang
data := make(map[string]string)
data["Name"] = "John"
data["Gender"] = "Male"
fmt.Println(data) //map[Gender:Male Name:John]
```
如果資料中有多種不同的型別 {"Name": "John", "Gender": "Male", "Age": 20}，可以藉由interface{}來處理
```golang
data := make(map[string]interface{})
data["Name"] = "John"
data["Gender"] = "Male"
data["Age"] = 20
fmt.Println(data) //map[Age:20 Gender:Male Name:John]
```
多層取值
```golang
var result map[string]interface{}
data_json := []byte(`{"Name": "John", "Age": 20, "Friend": {"Name": "Mary", "Age": 25}}`)
json.Unmarshal(data_json, &result)
fmt.Println(result) //map[Age:20 Friend:map[Age:25 Name:Mary] Name:John]
friend := result["Friend"].(map[string]interface{})
fmt.Println(friend) //map[Age:25 Name:Mary]
fmt.Println("friend: " + friend["Name"].(string)) //friend: Mary
```

* Reference
[跟煎鱼学 Go](https://eddycjy.gitbook.io/golang/)
[學習Go](https://ithelp.ithome.com.tw/articles/10205062)

