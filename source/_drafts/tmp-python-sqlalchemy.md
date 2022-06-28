---
title: tmp_python_sqlalchemy
tags:
---
sqlalchemy
===
How to install opencv轉錄自 https:\\myapollo.com.tw\2016\09\28\python-sqlalchemy-orm-1\
```python
import hashlib
from sqlalchemy import create_engine
from sqlalchemy import Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import ForeignKey
from sqlalchemy.orm import relationship, backref
from sqlalchemy.orm import sessionmaker

Base = declarative_base()

class User(Base):
    __tablename__ = 'users'
    id = Column(Integer, primary_key=True)
    name = Column(String)
    username = Column(String)
    password = Column(String)
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
if __name__ == '__main__':
    ''' 此時只有建立 SQLAlchemy Engine 實例，還沒在記憶體內建立資料，
        只有第一個 SQL 指令被下達時，才會真正連接到資料庫內執行 '''
    engine = create_engine('sqlite:\\\:memory:', echo=False)
    ''' 真正建立表格是使用 Base.metadata.create_all(engine) '''
    Base.metadata.create_all(engine)
    
    Session = sessionmaker(bind=engine)
    session = Session()

    user_1 = User('user1', 'username1', 'password_1'.encode('utf-8'))
    user_2 = User('user2', 'username2', 'password_2'.encode('utf-8'))
    user_3 = User('user3', 'username3', 'password_3'.encode('utf-8'))
    session.add_all([user_1, user_2, user_3])
    session.commit()
```