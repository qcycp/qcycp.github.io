curl -i -X POST -H "User-Agent: Koala Admin" -d 'username=face@aptg.com.tw&password=123456' http://192.168.56.4/auth/login
```
user@vm-docker:~/kangaroo/deploy$ curl -i -X POST -H "User-Agent: Koala Admin" -d 'username=face@aptg.com.tw&password=123456' http://192.168.56.4/auth/login
HTTP/1.1 200 OK
Server: nginx/1.10.3 (Ubuntu)
Date: Mon, 03 Jun 2019 02:43:54 GMT
Content-Type: application/json
Content-Length: 1062
Connection: keep-alive
Set-Cookie: session=3c8d8462-8590-435e-9227-485f96e4bec5; HttpOnly; Path=/

{
  "code": 0,
  "data": {
    "avatar": "",
    "company": {
      "attendance_on": false,
      "attendance_weekdays": [
        1,
        2,
        3,
        4,
        5
      ],
      "consigner": "R",
      "create_time": 1544695630,
      "data_version": 1,
      "deployment": 1,
      "door_range": [
        [
          0,
          0
        ],
        [
          24,
          0
        ]
      ],
      "door_weekdays": [
        1,
        2,
        3,
        4,
        5
      ],
      "feature_version": 7,
      "fmp_on": false,
      "full_day": true,
      "id": 1,
      "logo": "/static/images/logo.png",
      "name": "APTG",
      "notdetermined_on": true,
      "remark": "",
      "scenario": "\u6b63\u5e38\u4f7f\u7528",
      "upload": true,
      "yellowlist_warn": false
    },
    "company_id": 1,
    "id": 2,
    "organization_id": null,
    "password_reseted": true,
    "permission": [],
    "role_id": 2,
    "username": "face@aptg.com.tw",
    "verify": false
  },
  "page": {}
}
```