---
title: tmp_python_webpage_scroll_down
tags:
---
Python selenium 開網頁後自動捲動網頁到底部 2
===

```python
from selenium import webdriver
import time

driver = webdriver.Chrome()
driver.get("https://www.instagram.com/joeychua8_official/")

# Get scroll height
last_height = driver.execute_script("return document.body.scrollHeight")
y = driver.execute_script("return document.body.scrollTop")

count = 0
step = 200
while True:
    if y < last_height:
        y += 200 #scroll 200 units
    command = "window.scrollTo(0, " + str(y) + ");"
    driver.execute_script(command)

    # Wait to load page
    time.sleep(0.5)

    # Calculate new scroll height and compare with last scroll height
    new_height = driver.execute_script("return document.body.scrollHeight")
    if new_height == last_height:
        count += 1
        if count == 20: #re-scroll 20 times
            break
    else:
        count = 0
        last_height = new_height
```