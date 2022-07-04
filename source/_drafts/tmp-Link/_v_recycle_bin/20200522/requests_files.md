```
files = {'image': open('pic.jpg','rb')}
payload = {'screen_token': '25833f35'}

res = requests.post(url, files=files, data=payloads)
print(res.text)
```