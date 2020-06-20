---
title: multiprocessing pool in python
abbrlink: 91c6bb0e
date: 2020-06-19 10:15:19
categories: [Programming, python]
tags:
- python
---
```python
import logging
import os
import random
import time
from multiprocessing import Pool

def foo(x):
    print("[%s] Hello %s" % (os.getpid(), x))
    time.sleep(random.uniform(0.5, 2))
    print("[%s] Bye %s" % (os.getpid(), x))
    return x

def bar(result):
    print("[%s] %s" % (os.getpid(), result))

def subprocess_initializer():
    print("[%s] init" % os.getpid())

if __name__ == '__main__':
    pool = Pool(processes=2, initializer=subprocess_initializer)
    print("Before ...")

    for x in range(3):
        pool.apply_async(foo, (x,))

    # 因為map是block的，所以用result來接return value能直接有正確的結果
    result = pool.map(foo, range(3))

    # map_async可以使用callback function來處理結果
    # 也可以使用result.get()，get()會將main process block住，等待map_async執行完畢
    result = pool.map_async(foo, range(3), callback=bar)
    print(result.get())

    print("After ...")
    pool.close()
    pool.join()
```
* class multiprocessing.pool.Pool([processes[, initializer[, initargs[, maxtasksperchild[, context]]]]])
  * processes
The number of worker processes to use. If processes is None then the number returned by os.cpu_count() is used.
  * initializer
each worker process will call initializer(*initargs) when it starts.
  * maxtasksperchild
The number of tasks a worker process can complete before it will exit and be replaced with a fresh worker process, to enable unused resources to be freed. The default maxtasksperchild is None, which means worker processes will live as long as the pool.
當work process完成了一定數量的執行次數後，會自動重啟該work process
* map(func, iterable[, chunksize])
main process會被block住，整個map指令完成之後才往下
`chunksize`=1 by default，每次work process可以接收到的任務數量，當iterables很大時，將chunksize設定的越大，總執行效率越好，但耗費的記憶體越多
```
Before ...
[25832] Hello 0
[25833] Hello 1
[25832] Bye 0
[25832] Hello 2
[25833] Bye 1
[25832] Bye 2
After ...
```
* map_async(func, iterable[, chunksize[, callback[, error_callback]]])
main process不會被block住，且可以指定callback function
```
Before ...
After ...
[25851] Hello 0
[25852] Hello 1
[25851] Bye 0
[25851] Hello 2
[25852] Bye 1
[25851] Bye 2
```
* imap(func, iterable[, chunksize])
A lazier version of map(). `imap` returns an iterator and `map` returns a list.
假設參數為[1, 2, 3]，執行結果不論誰先完成，return value還是會按照[1, 2, 3]的順序
* imap_unordered(func, iterable[, chunksize])
The same as imap() except that the ordering of the results from the returned iterator should be considered arbitrary.
假設參數為[1, 2, 3]，return value會根據執行完成的順序，e.g. [2, 1, 3]
* starmap(func, iterable[, chunksize])
* starmap_async(func, iterable[, chunksize[, callback[, error_callback]]])
效果相同於map，但是可傳入多個參數
`pool.map(foo, [0, 1, 2, 4])`
`pool.starmap(foo, [(1, 2), (3, 4)])`
* apply(func[, args[, kwds]])
參數不同於map，因為每一個apply指令都是block的，所以0, 1, 2是循序執行的
```
Before ...
[26201] Hello 0
[26201] Bye 0
[26202] Hello 1
[26202] Bye 1
[26201] Hello 2
[26201] Bye 2
After ...
```
* apply_async(func[, args[, kwds[, callback[, error_callback]]]])
```
Before ...
After ...
[29118] Hello 0
[29119] Hello 1
[29119] Bye 1
[29119] Hello 2
[29118] Bye 0
[29119] Bye 2
```
* close()
Prevents any more tasks from being submitted to the pool. Once all the tasks have been completed the worker processes will exit.
* terminate()
Stops the worker processes immediately without completing outstanding work.
* join()
Wait for the worker processes to exit. One must call close() or terminate() before using join().
* callback function
由main process執行
* Reference
https://docs.python.org/3/library/multiprocessing.html

* ThreadPool vs Pool
```
from multiprocessing import Pool
ppool = Pool(workers)

from multiprocessing.pool import ThreadPool
tpool = ThreadPool(workers)
```
兩種pool的使用方式一模一樣，差異在於由thread or process實作
IO bound jobs -> multiprocessing.pool.ThreadPool
CPU bound jobs -> multiprocessing.Pool