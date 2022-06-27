---
title: tmp_python_flask_login
tags:
---
Flask-login
===

使用Flask-Login應用最重要的部分是LoginManager類 

```python
from flask_login import LoginManager
login_manager = LoginManager()
login_manager.init_app(app)
```

Flask-Login要求實作一些常見的屬性及方法
is_authenticated: 如果使用者提供有效的登入憑證，返回True
is_active: 如果允許使用者登入，返回True，False可用於禁用帳號
is_anonymous: 一般使用者為False
get_id(): 必須回傳使用者獨有的識別碼，編碼成Unicode字串

Flask-Login有個UserMixin類別，它提供默認的對於所有這些特性和方法的實現
```python
from flask_login import UserMixin
class User(db.Model, UserMixin):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(64), nullable=False, index=True, unique=True)
    password_hash = db.Column(db.String(256), nullable=False)
```

使用UserMinxin，get_id()回傳的是id，可以自己定義回傳的資料
但根據get_id回傳的資料，user_loader帶入的參數也會有所不同
```python
def get_id(self):
    return self.username

@login_manager.user_loader
def load_user(id):
    # 此時id會是username
```
默認的，當一個用戶視圖訪問一個login_required視圖而不登錄時，Flask-Login將會通過flash工具傳出一個信息然後將他們重定向到登錄視圖 可以通過LoginManager.login_view來設定登入網頁的view function 
```python
login_manager.login_view = "auth_bp.login"
```
默認flash工具發出的信息是Please log in to access this page。可以通過設置LoginManager.login_message來自定義這段信息 
```python
login_manager.login_message = '...'
```
Flask-Login要求app應該指定一個當它用使用者的辨識碼從資料庫載入使用者時要呼叫的函式
login_manager.user_loader裝飾器的用途是向Flask-Login註冊該函式，當Flask-Login需要取得已登入的使用者的資訊時就會呼叫它 
```python
@login_manager.user_loader
def load_user(user_id):
    return User.query.get(int(user_id))
```
在需要登入才能訪問的函式，加上login_required即可進行保護 
```python
from flask_login import login_required

@app.route('/secret')
@login_required
def secret():
    return 'Only authenticated users are allowed!'
```