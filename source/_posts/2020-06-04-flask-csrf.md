---
title: Flask csrf
abbrlink: 5a69f21c
date: 2020-06-04 16:26:30
categories: [Programming, Python]
tags:
- Python
- Flask
---
csrf: Cross-Site Request Forgery, 跨站請求攻擊或跨站偽造請求
在使用者不知情的情況下，讓使用者的瀏覽器自動送出請求給目標網站，利用使用者當前的身份去做一些未經過授權的操作以達攻擊目的
開啟csrf的配置，可以確保request是由網頁中的form送出的 而不是hacker自己偽造的
`pip install flask-wtf`
```python
from flask_wtf.csrf import CsrfProtect

csrf = CsrfProtect()

def create_app():
    app = Flask(__name__)
    app.config['SECRET_KEY'] = '...'
    csrf.init_app(app)
```