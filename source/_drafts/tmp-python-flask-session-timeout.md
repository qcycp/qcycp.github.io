---
title: tmp_python_flask_session_timeout
tags:
---
flask session 設定 timeout
===
```python
from datetime import timedelta
app.config['PERMANENT_SESSION_LIFETIME'] =  timedelta(minutes=5)
```