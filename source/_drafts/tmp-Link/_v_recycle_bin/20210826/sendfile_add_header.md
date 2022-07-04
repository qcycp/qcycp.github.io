```python
response = make_response(send_file(output))
response.headers['Cache-Control'] = 'no-cache'
response.headers["Expires"] = 0
response.headers["Pragma"] = "no-cache"

return response
```