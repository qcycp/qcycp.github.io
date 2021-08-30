---
title: python_threading_pause_stop
abbrlink: c85a5f4f
date: 2021-08-26 10:08:26
categories:
tags:
---
```python
#!/usr/bin/env python
# coding: utf-8

import threading
import time

class Job(threading.Thread):

    def __init__(self, *args, **kwargs):
        super(Job, self).__init__(*args, **kwargs)
        self.__flag = threading.Event()     # 用於暫停執行緒的標識
        self.__flag.set()                   # 設定為True
        self.__running = threading.Event()  # 用於停止執行緒的標識
        self.__running.set()                # 將running設定為True

    def run(self):
        while self.__running.isSet():
            self.__flag.wait()              # 為True時立即返回, 為False時阻塞直到內部的標識位為True後返回
            print time.time()
            time.sleep(1)

    def pause(self):
        self.__flag.clear()                 # 設定為False, 讓執行緒阻塞

    def resume(self):
        self.__flag.set()                   # 設定為True, 讓執行緒停止阻塞

    def stop(self):
        self.__flag.set()                   # 將執行緒從暫停狀態恢復, 如何已經暫停的話
        self.__running.clear()              # 設定為False
```