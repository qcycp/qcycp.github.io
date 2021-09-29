---
title: flask_shell
abbrlink: 8623ed20
date: 2021-08-31 11:54:08
categories:
tags:
---
```
(venv) $ flask shell
Python 3.7.0 (v3.7.0:1bf9cc5093, Jun 27 2018, 04:06:47) [MSC v.1914 32 bit (Intel)] on win32
App: app [production]
Instance: C:\tmp\work\20180828_kangaroo\backend\kangaroo\instance
>>> from app.models.User import User
>>> admin = User(username='aptg_hq@perobot.com.tw')
>>> admin.password = '123456'
>>> from app.foundation import db
>>> db.session.add(admin)
>>> db.session.commit()
>>>
```