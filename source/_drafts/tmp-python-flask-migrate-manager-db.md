---
title: tmp_python_flask_migrate_manager_db
tags:
---
Flask-Migrate manager db
===

```python
# manager.py
from app import create_app  
from flask_script import  Manager
from flask_migrate import MigrateCommand, Migrate   
from app.foundation import db

app = create_app()
manager = Manager(app)
migrate = Migrate(app, db)

manager.add_command('db', MigrateCommand)

if __name__ == '__main__':
    manager.run()
```

接著就可以利用shell來管理db的migration


$ python manage.py db init
$ python manage.py db migrate
$ python manage.py db upgrade


https://github.com/nummy/flask-script-cn https://my.oschina.net/lijsf/blog/158828