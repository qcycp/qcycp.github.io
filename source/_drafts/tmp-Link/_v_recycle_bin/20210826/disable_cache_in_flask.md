[Disabling caching in Flask](https://arusahni.net/blog/2014/03/flask-nocache.html)

```
from nocache import nocache

@app.route('/my_endpoint')
@nocache
def my_endpoint():
    return render_template(...)
```