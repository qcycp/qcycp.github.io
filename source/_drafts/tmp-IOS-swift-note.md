---
title: tmp_IOS_swift_note
abbrlink: '7e316195'
tags:
---
1. 使用 let 来声明常量，使用 var 来声明变量。一个常量的值，在编译的时候，并不需要有明确的值，但是你只能为它赋值一次。

2.
```
let apples = 3
let sentence1  = "I have " + String(apples) + " apples."
let sentence2  = "I have \(apples) apples."
```

3.
```
var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    //do-nothing
}
```

4. 
```
let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"
```

5.
```
//使用 ..< 创建的范围不包含上界，如果想包含的话需要使用 ...
var total = 0
for i in 0..<4 {
    total += i
}
```

6. 
```
//默认情况下，函数使用它们的参数名称作为它们参数的标签，在参数名称前可以自定义参数标签，或者使用 _ 表示不使用参数标签。
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet(person:"Bob", day: "Tuesday")

func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet("John", on: "Wednesday")
```

7.
```
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()
```

