使用curl執行webapi，結果可以拋給jq，顯示會比較漂亮

sudo apt-get install jq

```sh
user@vm-docker:~$ echo '{ "name":"John", "age":31, "city":"New York" }' | jq .
{
  "name": "John",
  "age": 31,
  "city": "New York"
}
```

sample 1
```sh
user@vm-docker:~/kangaroo$ curl -X POST -d 'username=admin&password=123456' http://192.168.56.3:8857/api/auth/login | jq .
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   252  100   222  100    30   3324    449 --:--:-- --:--:-- --:--:--  3363
{
  "code": 0,
  "data": {
    "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJwYXlsb2FkIjp7InVzZXJfaWQiOjIsInJvbGVfdHlwZSI6NSwiY29ycG9yYXRpb25faWQiOjJ9LCJleHAiOjE1NTc4MzU5MjJ9.0WJI8-15UGxsjHLTyfUwnEaDCAT3wLtml5z1OmKG2kg"
  },
  "page": {}
}
user@vm-docker:~/kangaroo$ curl -X POST -d 'username=admin&password=123456' http://192.168.56.3:8857/api/auth/login | jq '.data'
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   252  100   222  100    30   4414    596 --:--:-- --:--:-- --:--:--  4440
{
  "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJwYXlsb2FkIjp7InVzZXJfaWQiOjIsInJvbGVfdHlwZSI6NSwiY29ycG9yYXRpb25faWQiOjJ9LCJleHAiOjE1NTc4MzU5NTR9.t-o18LSAvlraTi_KZvm7CcjhV-zEzLJd0hu0FK74B7Q"
}
user@vm-docker:~/kangaroo$ curl -X POST -d 'username=admin&password=123456' http://192.168.56.3:8857/api/auth/login | jq '.data.token'
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   252  100   222  100    30   4236    572 --:--:-- --:--:-- --:--:--  4269
"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJwYXlsb2FkIjp7InVzZXJfaWQiOjIsInJvbGVfdHlwZSI6NSwiY29ycG9yYXRpb25faWQiOjJ9LCJleHAiOjE1NTc4MzU5Njl9.lVni19qqRuHNjdy7PCGa_1ahTMvrybLH92AA-7Uyl7g"
user@vm-docker:~/kangaroo$ curl -X POST -d 'username=admin&password=123456' http://192.168.56.3:8857/api/auth/login | jq -r '.data.token'
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   252  100   222  100    30   4136    558 --:--:-- --:--:-- --:--:--  4188
eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJwYXlsb2FkIjp7InVzZXJfaWQiOjIsInJvbGVfdHlwZSI6NSwiY29ycG9yYXRpb25faWQiOjJ9LCJleHAiOjE1NTc4MzU5ODN9.teUzWI3M-ghGvIAbp4nxfY9axhg4qo1ikY7pllUGtms
```

sample 2
```sh
user@vm-docker:~$ curl -X GET http://192.168.56.3:5074/api/ipcam/status
{"code":0,"data":[{"Location":"qwe","URL":"rtsp://192.168.56.3:8888/CH001.sdp","status":null}]}
user@vm-docker:~$ curl -X GET http://192.168.56.3:5074/api/ipcam/status | jq
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100    96  100    96    0     0  42876      0 --:--:-- --:--:-- --:--:-- 48000
{
  "code": 0,
  "data": [
    {
      "Location": "qwe",
      "URL": "rtsp://192.168.56.3:8888/CH001.sdp",
      "status": null
    }
  ]
}
user@vm-docker:~$ curl -X GET http://192.168.56.3:5074/api/ipcam/status | jq .data
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100    96  100    96    0     0  24615      0 --:--:-- --:--:-- --:--:-- 32000
[
  {
    "Location": "qwe",
    "URL": "rtsp://192.168.56.3:8888/CH001.sdp",
    "status": null
  }
]
user@vm-docker:~$ curl -X GET http://192.168.56.3:5074/api/ipcam/status | jq .data[0]
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100    96  100    96    0     0  18373      0 --:--:-- --:--:-- --:--:-- 19200
{
  "Location": "qwe",
  "URL": "rtsp://192.168.56.3:8888/CH001.sdp",
  "status": null
}
user@vm-docker:~$ curl -X GET http://192.168.56.3:5074/api/ipcam/status | jq .data[0].URL
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100    96  100    96    0     0  21052      0 --:--:-- --:--:-- --:--:-- 24000
"rtsp://192.168.56.3:8888/CH001.sdp"
user@vm-docker:~$ curl -X GET http://192.168.56.3:5074/api/ipcam/status | jq -r .data[0].URL
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100    96  100    96    0     0  40660      0 --:--:-- --:--:-- --:--:-- 48000
rtsp://192.168.56.3:8888/CH001.sdp
```