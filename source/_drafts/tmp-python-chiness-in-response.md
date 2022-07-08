---
title: tmp_python_chiness_in_response
abbrlink: 140e2d25
tags:
---
Flask response json including 中文
===

當return jsonify中包含中文時，在response中的中文會被編碼成unicode
```python
{ "code": -3000, "data": {}, "desc": "\u5bc6\u7801\u4e0d\u6b63\u786e" }

# 在config中加入
app.config['JSON_AS_ASCII'] = False

{ "code": -3000, "data": {}, "desc": "密码不正确" }
```

如果是改成return json.dumps，在參數中加上ensure_ascii即可
```python
return json.dumps(ret, ensure_ascii=False)
```

https://blog.csdn.net/fo11ower/article/details/70062524
