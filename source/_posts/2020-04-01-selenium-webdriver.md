---
title: Open Web Page using Selenium
abbrlink: 3db6e2b6
date: 2020-04-01 17:30:14
categories: [Programming, Python]
tags:
- Python
- Docker
- Selenium
---
```python
import os
from selenium import webdriver

if __name__ == '__main__':
    chrome_options = webdriver.ChromeOptions()
    chrome_options.add_argument('--headless')
    chrome_options.add_argument('--no-sandbox')
    chrome_options.add_argument('--disable-dev-shm-usage')
    driver = webdriver.Chrome(executable_path='/usr/bin/chromedriver', options=chrome_options)
    driver.implicitly_wait(30)
    driver.get('https://google.com')
```

```bash
FROM python:3.6-alpine

ADD app.py /
RUN apk add --update bash chromium chromium-chromedriver
RUN pip install selenium
CMD ["python", "app.py"]
```