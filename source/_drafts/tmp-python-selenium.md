---
title: tmp_python_selenium
abbrlink: e257631e
tags:
---
selenium
===

```python
from selenium import webdriver
chrome_options = webdriver.ChromeOptions()
chrome_options.add_argument('headless')
chrome_options.add_argument('--disable-gpu')
driver = webdriver.Chrome(r"C:\Users\user\Documents\Python\chromedriver.exe")
#driver = webdriver.Chrome("C:/Users/user/Documents/Python/chromedriver.exe")
#driver = webdriver.Chrome("C:\\Users\\user\\Documents\\Python\\chromedriver.exe")
driver.get('http://info512.taifex.com.tw/Future/OptQuote_Norl.aspx')
```