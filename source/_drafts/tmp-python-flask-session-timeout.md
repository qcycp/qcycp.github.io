---
title: tmp_python_flask_session_timeout
abbrlink: 49d5e095
tags:
---
flask session 設定 timeout
===
```python
from datetime import timedelta
app.config['PERMANENT_SESSION_LIFETIME'] =  timedelta(minutes=5)
```