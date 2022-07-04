http://www.yihaomen.com/article/python/323.htm

list 的交集
```
#方法一:
a=[2,3,4,5]
b=[2,5,8]
tmp = [val for val in a if val in b]
print tmp
#[2, 5]

#方法二
print list(set(a).intersection(set(b)))
```

list 的合集
```
print list(set(a).union(set(b)))
```

list 的差集
```
print list(set(b).difference(set(a))) # b中有而a中没有的
```