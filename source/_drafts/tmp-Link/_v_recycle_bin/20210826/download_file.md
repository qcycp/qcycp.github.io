```python
from flask import Flask
from flask import send_file
app = Flask(__name__)

@app.route('/download')
def downloadFile ():
    #For windows you need to use drive name [ex: F:/example.pdf]
    path = "/examples.pdf"
    return send_file(path, as_attachment=True, cache_timeout=-1)
```