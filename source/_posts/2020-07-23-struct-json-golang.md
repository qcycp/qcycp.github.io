---
title: struct, map, and json
abbrlink: d8b7f59e
date: 2020-07-23 14:19:48
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
* Call by pointer
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
* Delete elements in a array
```golang
for id, person := range People {
    if person.Name == "John" {
        People = append(People[:id], People[id+1:]...)
        break
    }
}
```
* 序列化 struct to json string
  * func Marshal(v interface{}) ([]byte, error)
```golang
data_json, _ := json.MarshalIndent(data, "", "  ")
fmt.Println(string(data_json))
//{
//  "Name": "John",
//  "age": 30
//}
```
  * func NewEncoder(w io.Writer) *Encoder
  * func (enc *Encoder) Encode(v interface{}) error
```golang
if err := json.NewEncoder(os.Stdout).Encode(&data); err != nil {
    fmt.Println(err)
}
//stdout: {"Name":"John","age":30}
```
* 反序列化 json string to struct
  * func Unmarshal(data []byte, v interface{}) error
```golang
data := []byte(`{"name" : "John" , "age" : 30}`)
var person Person
json.Unmarshal(data, &person)
fmt.Println(person) //{John 30}
```
  * func NewDecoder(r io.Reader) *Decoder
  * func (dec *Decoder) Decode(v interface{}) error
```golang
data := `{"name" : "John" , "age" : 30}`
var person Person
if err := json.NewDecoder(strings.NewReader(data)).Decode(&person); err == nil {
    fmt.Println(person) //{John 30}
}
```
* pointer items in struct
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
* map
  * 如果有一串資料 {"Name": "John", "Gender": "Male"}，可以使用 map 來儲存
```golang
data := make(map[string]string)
data["Name"] = "John"
data["Gender"] = "Male"
fmt.Println(data) //map[Gender:Male Name:John]
```
  * 如果資料中有多種不同的型別 {"Name": "John", "Gender": "Male", "Age": 20}，可以藉由 interface{} 來處理
```golang
data := make(map[string]interface{})
data["Name"] = "John"
data["Gender"] = "Male"
data["Age"] = 20
fmt.Println(data) //map[Age:20 Gender:Male Name:John]
```
  * 多層取值
    * 存取已知的 key
```golang
data_json := []byte(`{"Name": "John", "Age": 20, "Friend": {"Name": "Mary", "Age": 25}}`)
var data map[string]interface{}
json.Unmarshal(data_json, &data)

fmt.Println(data) //map[Age:20 Friend:map[Age:25 Name:Mary] Name:John]
friend := data["Friend"].(map[string]interface{})
fmt.Println(friend) //map[Age:25 Name:Mary]
fmt.Println("friend: " + friend["Name"].(string)) //friend: Mary
```
    * 列舉所有內容
```golang
data_json := []byte(`{"Name": "John", "Age": 20, "BestFriend": {"Name": "Mary", "Age": 25}, "Friends": ["Mark", "Mike"]}`)
var data interface{}
json.Unmarshal(data_json, &data)
m := data.(map[string]interface{})

for k, v := range m {
    rt := reflect.TypeOf(v)
    if rt.Kind() == reflect.Slice {
        n := v.([]interface{})
        for i, u := range n { 
            fmt.Println(k, i, u)
        }
    } else if rt.Kind() == reflect.Map {
        n := v.(map[string]interface{})
        for i, u := range n { 
            fmt.Println(k, i, u)
        }
    } else {
        fmt.Println(k ,v)
    }
}
```
```
Name John
Age 20
BestFriend Name Mary
BestFriend Age 25
Friends 0 Mark
Friends 1 Mike
```