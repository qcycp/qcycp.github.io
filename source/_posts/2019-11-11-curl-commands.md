---
title: curl指令
categories: [Software, curl]
tags:
- curl
abbrlink: 7de9a293
date: 2019-11-11 20:42:15
description: 常用的curl指令
---
# GET
- `curl -X GET http://localhost:80/api/get`
- `curl -X GET "http://localhost:80/api/get?param1=abc&param2=123"`

# POST
- form
  - `curl -X POST -d "username=admin&password=123456" http://localhost:80/auth/login`
- json
  - `curl -H "Content-Type:application/json" -X POST -d '{"username": "admin", "password": "123456"}' http://localhost:80/auth/login`
- `curl -X POST -F "image=@/home/user/test.jpg" http://localhost:80/upload/image`
- `curl -X POST -F "image=@/home/user/test.jpg" -F "token=123456" http://localhost:80/upload/image`
- `curl -X POST -H 'Content-Type: application/json' -d '{"username": "test", "password":"123456", "list_data":[1, 2]}' http://localhost:80/api/post`
- `curl -X POST --data-urlencode 'photo='"$(base64 image.jpg)"'' -d "name=Nick" http://localhost:80/upload/data`
- `curl -X POST -H "Content-Type: application/json" -d @/home/user/data.json http://localhost:80/api/file/payload`

# PUT
- `curl -X PUT -d "data=test" http://localhost:80/api/put`

# Delete
- `curl -X DELETE http://localhost:80/api/delete`

# Download file
- `curl -X GET "http://localhost:80/api/download/data" --output file.ext`

# Show headers
- `curl -i -X POST -d 'username=admin&password=123456' http://localhost:80/auth/login`
```sh
HTTP/1.1 200 OK
Server: nginx/1.10.3 (Ubuntu)
Date: Mon, 03 Jun 2019 02:43:54 GMT
Content-Type: application/json
Content-Length: 1062
Connection: keep-alive
Set-Cookie: session=3c8d8462-8590-435e-9227-485f96e4bec5; HttpOnly; Path=/

{
  "code": 0,
  "data": "..."
}
```