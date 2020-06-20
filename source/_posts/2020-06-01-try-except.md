---
title: try-except in Python
abbrlink: 2abc1d30
date: 2020-06-01 15:25:40
categories: [Programming, Python]
tags: 
- Python
---
else: 如果沒有發生例外，執行
finally: 無論有沒有發生例外，都會執行
```python
try:
    print("Normal execution block")
except A:
    print("Exception A handle")
except B:
    print("Exception B handle")
except:
    print("Other exception handle")
else:
    print("if no exception, get here")
finally:
    print("finally")
```

`Exception`會獲得除了SystemExit，KeyboardInterrupt和GeneratorExit之外的所有異常
如果想捕獲這三個異常，將Exception改成`BaseException`即可。
```python
try:
   ...
except BaseException as e:
   ...
   print('Reason:', e)
```