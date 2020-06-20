---
title: list Operation in Python
abbrlink: ccc82893
date: 2020-06-01 11:32:41
categories: [Programming, Python]
tags: 
- Python
---
* List
```
a = [1, 2, 3, 4]
b = [1, 4, 5, 6]
```
* 交集
[法一]
```
result = [val for val in a if val in b] # [1, 4]
```
[法二]
```
result = list(set(a).intersection(set(b))) # [1, 4]
```
* 合集
```
result = list(set(a).union(set(b))) # [1, 2, 3, 4, 5, 6]
```
* 差集
```
result_a = list(set(a).difference(set(b))) # [2, 3]
result_b = list(set(b).difference(set(a))) # [5, 6]
```