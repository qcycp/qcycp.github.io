https://juejin.im/post/5b4b267f6fb9a04fd93e23ea

```
pip install bootstrap-flask
```

```
from flask_bootstrap import Bootstrap
from flask import Flask

app = Flask(__name__)

bootstrap = Bootstrap(app)
```


```
from flask_bootstrap import Bootstrap
from flask import Flask

bootstrap = Bootstrap()

def create_app():
    app = Flask(__name__)
    bootstrap.init_app(app)

    return app
```

```
$ git clone https://github.com/greyli/bootstrap-flask.git
$ cd bootstrap-flask
$ virtualenv venv
$ source venv/bin/activate
$ pip install flask flask-wtf flask-sqlalchemy bootstrap-flask
$ cd bootstrap-flask/examples
$ flask run

```