```python
 49 def auth():
 50     config = current_app.config
 51     url = "http://" + config.get("FACE_PP_HOST") + config.get("FACE_PP_API_PREFIX") + "/auth/login"
 52     headers = {'User-Agent': 'Koala Admin'}
 53     payload = {
 54         "username": config.get("FACE_PP_LOGIN_USER"),
 55         "password": config.get("FACE_PP_LOGIN_PASSWORD")
 56     }
 57     s = requests.session()
 58     s.post(url, data=payload, headers=headers)

```