```
class MyClass(object):
    def __init__(self):
        self.a = 10
        self.b = {'key': 'value'}

if __name__ == "__main__":
    ins = MyClass()
    print(ins) #<__main__.MyClass object at 0x7f4dd1c2a470>
```

__str__()用來定義傳回物件描述字串，通常用來描述的字串是對使用者友善的說明文字，如果對物件使用str()，所呼叫的就是__str__()。
如果要定義對開發人員較有意義的描述，例如傳回產生實例的類別名稱之類的，則可以定義__repr__()，如果對物件使用repr()，則所呼叫的就是__repr__()。

```
class MyClass(object):
    def __init__(self):
        self.a = 10
        self.b = {'key': 'value'}

    #自定義當print MyClass instance object時，要返回什麼內容
    def __str__(self):
        return "a: " + str(self.a) + ", b: " + str(self.b)

if __name__ == "__main__":
    ins = MyClass()
    print(ins) #a: 10, b: {'key': 'value'}
```