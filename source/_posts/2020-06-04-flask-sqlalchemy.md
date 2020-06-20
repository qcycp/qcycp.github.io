---
title: Flask sqlalchemy
abbrlink: 9d490f81
date: 2020-06-04 17:32:48
categories: [Programming, Python]
tags:
- Python
- Flask
---
* Preparation
```bash
(venv) $ pip install flask flask-sqlalchemy
```
* edit main.py
```python
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
import hashlib
import os

app = Flask(__name__)

pjdir = os.path.abspath(os.path.dirname(__file__))

app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///' + os.path.join(pjdir, 'data.sqlite')
db = SQLAlchemy(app)

class User(db.Model):
    __tablename__ = 'users'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(20))
    username = db.Column(db.String(20), unique=True, nullable=False)
    password = db.Column(db.String(20), nullable=False)
    def __init__(self, name, username, password):
        self.name = name
        self.username = username
        self.password = hashlib.sha1(password).hexdigest()
    def __repr__(self):
        return "User('{}','{}', '{}')".format(
            self.name,
            self.username,
            self.password
        )

db.create_all()
db.session.commit()

@app.route('/')
def index():
    return '<h1>Hello World!</h1>'

if __name__ == '__main__':
    app.run()
```
* Test using flask shell
```
(venv) $ flask shell
Python 3.6.9 (default, Apr 18 2020, 01:56:04) 
[GCC 8.4.0] on linux
App: main [production]
Instance: /home/user/data/sqlalchemy/instance
>>> from main import db
>>> db.create_all() # 執行完後，就會建立data.sqlite
>>> from main import User
>>> user_1 = User('user1', 'username1', 'password_1'.encode('utf-8'))
>>> user_2 = User('user2', 'username2', 'password_2'.encode('utf-8'))
>>> user_3 = User('user3', 'username3', 'password_3'.encode('utf-8'))
>>> db.session.add_all([user_1, user_2, user_3])
>>> db.session.commit()
>>> db.session.query(User)
<flask_sqlalchemy.BaseQuery object at 0x05389DB0>
>>> db.session.query(User).all()
[User('user1','username1', '3833b3a1c69cf71a31d86cb5bb4d3866789b4d1e'), User('user2','username2', '148dfdc3c539d35004cb808ca84e17ff962af744'), User('user3','username3', '2f508abdcc1da55a452e2436b47e9a860cdbdcc6')]
>>> User.query.all()
[User('user1','username1', '3833b3a1c69cf71a31d86cb5bb4d3866789b4d1e'), User('user2','username2', '148dfdc3c539d35004cb808ca84e17ff962af744'), User('user3','username3', '2f508abdcc1da55a452e2436b47e9a860cdbdcc6')]
>>>
```
