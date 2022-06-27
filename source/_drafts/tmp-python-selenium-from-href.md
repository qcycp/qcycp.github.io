---
title: tmp_python_selenium_from_href
tags:
---
Python 抓取網頁中所有a href標籤內的網址
===

```python
from urllib.request import urlopen
from bs4 import BeautifulSoup

html = urlopen('http://math1.ck.tp.edu.tw/%E9%99%B3%E5%98%AF%E8%99%8E/teaching_material.html')
soup = BeautifulSoup(html, 'html.parser')
items = soup.find_all('a')
for item in items:
    data = item.get('href')
    print(data)
```