---
title: tmp_python_readwritelock
abbrlink: '9e161065'
tags:
---
[readerwriterlock · PyPI](https://pypi.org/project/readerwriterlock/)

Reader priority
```python
from readerwriterlock import rwlock
a = rwlock.RWLockRead()
```

Writer priority
```python
from readerwriterlock import rwlock
a = rwlock.RWLockWrite()
```

Fair priority
```python
from readerwriterlock import rwlock
a = rwlock.RWLockFair()
```

```python
with a.gen_rlock():
      #Read stuff
with a.gen_wlock():
      #Write stuff
```