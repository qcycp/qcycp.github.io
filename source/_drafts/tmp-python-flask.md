---
title: tmp_python_flask
tags:
---
flask
===
url_for() 函數最簡單的用法是以視圖函數名作為參數，返回對應的url，還可以用作加載靜態文件，如
```
<link rel="stylesheet" href="{{url_for('static',filename='css\index.css')}}">
```

If you are using blueprints, url_for should be invoked as url_for(blueprint_name.func_name)
```python
@routes.route('\')
@routes.route('\index')
def index():
    return redirect(url_for('subject_list')) # redirect to \subject\list
    
@routes.route('\subject\list' , methods=['GET'])
def subject_list():
    return render_template('subject_list.html')
```