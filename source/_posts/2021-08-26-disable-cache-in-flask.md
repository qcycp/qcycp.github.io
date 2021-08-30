---
title: disable_cache_in_flask
abbrlink: 3b817890
date: 2021-08-26 09:30:28
categories:
tags:
---
[Disabling caching in Flask](https://arusahni.net/blog/2014/03/flask-nocache.html)

```
from nocache import nocache

@app.route('/my_endpoint')
@nocache
def my_endpoint():
    return render_template(...)
```