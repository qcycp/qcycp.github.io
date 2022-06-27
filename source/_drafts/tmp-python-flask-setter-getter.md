---
title: tmp_python_flask_setter_getter
tags:
---
Flask setter getter
===

```python
class Subject(db.Model):
    password_hash = db.Column(db.String(256), nullable=False)
    # 這裡定義了real_name，不直接宣告成name是為了避免跟property name區隔
    # 否則會產生錯誤 RecursionError: maximum recursion depth exceeded
    real_name = db.Column(db.String(64), nullable=False, index=True)

    @property
    def password(self):
        raise AttributeError('password is not a readable attribute')

    # 有宣告property password，這裡才能使用password.setter
    @password.setter
    def password(self, password):
        self.password_hash = generate_password_hash(password.encode('utf-8'))
        
    def check_password(self, password):
        return check_password_hash(self.password_hash.encode('utf-8'), password.encode('utf-8'))

    # 效果等同於呼叫subject.name時，會回傳subject.name
    @property
    def name(self):
        return self.real_name
    
    # Neither 'Column' object nor 'Comparator' object has an attribute 'setter'
    # 所以需要宣告property name，這裡才能使用name.setter
    @name.setter
    def name(self, name):
        self.real_name = name
        self.pinyin = slug(name, style=pypinyin.NORMAL, separator='')
```