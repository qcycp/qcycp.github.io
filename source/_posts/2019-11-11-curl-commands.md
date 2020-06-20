---
title: curl指令
abbrlink: 7de9a293
date: 2019-11-11 20:42:15
categories: [Software, curl]
tags:
- curl
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
* Get further information from curl
  * simple mode
  `$ curl -w 'Total: %{time_total}s\n' -o /dev/null -s http://ip:port/api/`
  * Create a new file, curl-format.txt, and paste in:
```
    time_namelookup:  %{time_namelookup}s\n
       time_connect:  %{time_connect}s\n
    time_appconnect:  %{time_appconnect}s\n
   time_pretransfer:  %{time_pretransfer}s\n
      time_redirect:  %{time_redirect}s\n
 time_starttransfer:  %{time_starttransfer}s\n
                    ----------\n
         time_total:  %{time_total}s\n
```
  * Make a request
```
$ curl -w "@curl-format.txt" -o /dev/null -s "http://ip:port/api/"
-w "@curl-format.txt" tells cURL to use our format file
-o /dev/null redirects the output of the request to /dev/null
-s tells cURL not to show a progress meter
```