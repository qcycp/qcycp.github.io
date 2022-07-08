---
title: tmp_python_instagram_downloader
abbrlink: a4c3387a
tags:
---
Instagram Downloader
===

```python
import requests
from bs4 import BeautifulSoup
import json
import tkinter as tk
import os
import threading

def downloadJob():
    btnDown.config(state="disabled")
    btnDown.config(text = "下載中")
    labelMsg.config(text = "")

    fpath = path.get()
    fpath = fpath.replace("\\", "\\\\")
    if url.get() == "":
        labelMsg.config(text="請輸入下載的URL!!")
        return

    res = requests.get(url.get())
    soup = BeautifulSoup(res.text, "lxml")
    # print(soup.prettify()) #輸出排版後的 HTML 程式碼

    # 抓出所有標籤為
```