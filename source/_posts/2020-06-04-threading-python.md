---
title: Threading in Python
abbrlink: 828ababc
date: 2020-06-04 16:59:38
categories: [Programming, Python]
tags:
- Python
---
```python
import threading
import time

# 子執行緒的工作函數
def job():
  for i in range(5):
    print("Child thread:", i)
    time.sleep(1)

# 建立一個子執行緒
t = threading.Thread(target = job)

# 執行該子執行緒
t.start()

# 主執行緒繼續執行自己的工作
for i in range(3):
  print("Main thread:", i)
  time.sleep(1)

# 等待 t 這個子執行緒結束
t.join()

print("Done.")
```

```bash
Child thread: 0
Main thread: 0
Main thread: 1
Child thread: 1
Main thread: 2
Child thread: 2
Child thread: 3
Child thread: 4
Done.
```

```python
import threading
import time

# 子執行緒的工作函數
def job(num):
  print("Thread", num)
  time.sleep(1)

# 建立 5 個子執行緒
threads = []
for i in range(5):
  threads.append(threading.Thread(target = job, args = (i,)))
  threads[i].start()

# 主執行緒繼續執行自己的工作
# ...

# 等待所有子執行緒結束
for i in range(5):
  threads[i].join()

print("Done.")
```

```python
import threading
import time

# 子執行緒類別
class MyThread(threading.Thread):
  def __init__(self, num):
    threading.Thread.__init__(self)
    self.num = num

  def run(self):
    print("Thread", self.num)
    time.sleep(1)

# 建立 5 個子執行緒
threads = []
for i in range(5):
  threads.append(MyThread(i))
  threads[i].start()

# 主執行緒繼續執行自己的工作
# ...

# 等待所有子執行緒結束
for i in range(5):
  threads[i].join()

print("Done.")
```

```bash
Thread 0
Thread 1
Thread 2
Thread 3
Thread 4
Done.
```

* reference
https://blog.gtwang.org/programming/python-threading-multithreaded-programming-tutorial/