---
title: tmp_python_multithread_multiprocess
tags:
---
http://violin-tao.blogspot.com/2017/05/python3_26.html

```python
#coding=utf-8
import threading

def thread_job():


    # 把目前的 thread 顯示出來看看
    print("This is an added Thread, number is {}\n".format(threading.current_thread()))

def main():
    # 添加一個 thread 
    added_thread = threading.Thread(target=thread_job)
    # 執行 thread
    added_thread.start() # This is an added Thread, number is <Thread(Thread-1, started 123145466363904)>
    # 看目前有幾個 thread
    print(threading.active_count()) # 2
    # 把所有的 thread 顯示出來看看
    print(threading.enumerate()) # [<_MainThread(MainThread, started 140736627270592)>, <Thread(Thread-1, started 123145466363904)>]
    # 把目前的 thread 顯示出來看看
    print(threading.current_thread()) #<_MainThread(MainThread, started 140736627270592)>

if __name__ == '__main__':
    main()
```