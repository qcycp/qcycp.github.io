get params and transfer to dict for GET/POST(form, json) requests
```python
params = request.args.to_dict() or request.form.to_dict() or request.get_json()
```


from urllib.parse import urlencode
url = {'rtsp': 'E6-IN-01.mp4'}
ret = requests.get('/api/subject/list?'+urlencode(url), headers=headers)