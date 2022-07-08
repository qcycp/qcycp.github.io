---
title: tmp_python_flask_set_cookie
abbrlink: 94d9c2a2
tags:
---
flask set_cookie
===
```python
from flask import make_response

@app.route('\')
def index():
    response = make_response()
    response.set_cookie('key', '1234', expires=time.time()+5) #5 seconds
    return response
```

另一種方式，response是json資料，再把cookie加進去
```python
res = requests.get(url, params = payload, headers = headers)
res_json = json.loads(res.text)
    
ret = jsonify(res_json)
ret.set_cookie('key', session['key'], expires=time.time()+5)

return ret
```