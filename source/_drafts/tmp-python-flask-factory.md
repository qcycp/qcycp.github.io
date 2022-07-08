---
title: tmp_python_flask_factory
abbrlink: 852a8182
tags:
---
Flask factory
===
在開始學 Flask 的時候，我們都是直接通過app=Flask(__name__)來創建一個app實例的。這樣做沒什麼問題，但如果我們想為每個實例分配不同的配置，比如有測試環境的配置，開發環境的配置和生產環境的配置等。
利用create_app(param)的方式，就可以根據不同的參數來建立app instance，也可以建立多個app instance
```python
def create_app(config_filename):
    app = Flask(__name__)
    app.config.from_pyfile(config_filename)

    return app

from app import create_app

if __name__ == '__main__':
    app = create_app('default')
    app.run(host='127.0.0.1', port=5200, debug=True)
```