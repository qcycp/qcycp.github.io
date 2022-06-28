---
title: tmp_FACA_SDK_note
tags:
---
# SDK
##### app
curl -X POST -d "name=face&version=3.1&app_type=0" http://localhost:7790/api/app/register | jq
curl -X PUT -d "token=f63ed12e-db52-4342-9347-d53f09f3772c&version=3.1&app_type=1" http://localhost:7790/api/app/update | jq
curl -X POST -d "token= f63ed12e-db52-4342-9347-d53f09f3772c&status={\"cpu\":97, \"memory\":50, \"cameras\": [{\"camera_address\": \"rtsp://test1\", \"camera_position\": \"HC1\", \"camera_status\": 0}, {\"camera_address\": \"rtsp://test2\", \"camera_position\": \"HC2\", \"camera_status\": 0}]}" http://localhost:7790/api/app/status | jq

##### hook
curl -X GET -H "Authorization: Bearer ${TOKEN}" http://localhost:7790/api/mqtt/info | jq
curl -X POST -d "token=f63ed12e-db52-4342-9347-d53f09f3772c&name=TEST&data_type=1&url=http://192.168.56.3/api" http://localhost:7790/api/hook/register | jq
curl -X PUT -d "token=f63ed12e-db52-4342-9347-d53f09f3772c&uuid=f34806a8-d985-4e5d-9946-cf1bfbd395a1&name=TEST2&data_type=1&url=http://192.168.56.3/api" http://localhost:7790/api/hook | jq
curl -X DELETE -d "token=f63ed12e-db52-4342-9347-d53f09f3772c&uuid=f34806a8-d985-4e5d-9946-cf1bfbd395a1" http://localhost:7790/api/hook | jq

# Dashboard
### admin
TOKEN=$(curl -X POST -d 'username=admin&password=123456' http://localhost:7780/api/auth/login | jq -r .data.token)

##### user
curl -X GET -H "Authorization: Bearer ${TOKEN}" http://localhost:7780/api/user | jq
curl -X POST -H "Authorization: Bearer ${TOKEN}" -d "username=faca&password=123456&remark=test" http://localhost:7780/api/user | jq
curl -X POST -H "Authorization: Bearer ${TOKEN}" -d "username=foxconn&password=123456" http://localhost:7780/api/user | jq
curl -X PUT -H "Authorization: Bearer ${TOKEN}" -d "remark=123" http://localhost:7780/api/user/2 | jq
curl -X DELETE -H "Authorization: Bearer ${TOKEN}" http://localhost:7780/api/user/2 | jq
curl -X GET -H "Authorization: Bearer ${TOKEN}" http://localhost:7780/api/user/detail | jq
curl -X PUT -H "Authorization: Bearer ${TOKEN}" -d "password=123456&new_password=123456" http://localhost:7780/api/user/password | jq

##### logo
curl -X POST -H "Authorization: Bearer ${TOKEN}" -F "logo=@/home/user/logo.jpg" http://localhost:7780/api/logo | jq
curl -X DELETE -H "Authorization: Bearer ${TOKEN}" http://localhost:7780/api/logo | jq
curl -X POST -H "Authorization: Bearer ${TOKEN}" -F "logo=@/home/user/logo.jpg" http://localhost:7780/api/map | jq
curl -X DELETE -H "Authorization: Bearer ${TOKEN}" http://localhost:7780/api/map | jq

### user
TOKEN=$(curl -X POST -d 'username=faca&password=123456' http://localhost:7780/api/auth/login | jq -r .data.token)
TOKEN=$(curl -X POST -d 'username=foxconn&password=123456' http://localhost:7780/api/auth/login | jq -r .data.token)

##### attendance
curl -X GET -H "Authorization: Bearer ${TOKEN}" http://localhost:7780/api/subject/attendance?job_number=9527 | jq
curl -X GET -H "Authorization: Bearer ${TOKEN}" http://localhost:7780/api/vehicle/attendance?license=LC3-189 | jq
curl -X GET -H "Authorization: Bearer ${TOKEN}" "http://localhost:7780/api/attendance?license=LC3-189" | jq
curl -X GET -H "Authorization: Bearer ${TOKEN}" "http://localhost:7780/api/attendance?job_number=9527" | jq
curl -X GET -H "Authorization: Bearer ${TOKEN}" "http://localhost:7780/api/attendance?job_number=9527&license=LC3-189" | jq
curl -X GET -H "Authorization: Bearer ${TOKEN}" "http://localhost:7780/api/attendance/export?job_number=9527" --output export.xlsx

##### App
curl -X POST -H "Authorization: Bearer ${TOKEN}" -d "name=FACEPP&version=2.9" http://localhost:7780/api/register | jq
curl -X POST -H "Authorization: Bearer ${TOKEN}" -d "token=cb6f2006-439a-4264-b699-b5956a1f17aa" http://localhost:7780/api/update/status | jq

##### host
curl -X GET -H "Authorization: Bearer ${TOKEN}" http://localhost:7780/api/host | jq

##### hook
curl -X GET -H "Authorization: Bearer ${TOKEN}" http://localhost:7780/api/mqtt/info | jq
curl -X POST -H "Authorization: Bearer ${TOKEN}" -d "token=cb6f2006-439a-4264-b699-b5956a1f17aa&url=http://test" http://localhost:7780/api/hook | jq

##### statistic
curl -X GET -H "Authorization: Bearer ${TOKEN}" http://localhost:7780/api/statistic?period=day | jq
curl -X GET -H "Authorization: Bearer ${TOKEN}" "http://localhost:7780/api/statistic?period=day&category=subject" | jq
curl -X GET -H "Authorization: Bearer ${TOKEN}" "http://localhost:7780/api/statistic?period=day&category=vehicle" | jq

simulator
curl -X GET http://localhost:7780/gen/subject/event | jq
curl -X GET http://localhost:7780/gen/vehicle/event | jq
curl -X GET http://localhost:7780/update/app/status | jq


##### poc
curl -X POST -d "name=fr&version=1.2.3&app_type=0" http://10.36.94.120:7790/api/app/register
curl -X POST -d "name=lpr&version=a.b.c&app_type=1" http://10.36.94.120:7790/api/app/register

fr: 0b3de279-fff3-401d-bd19-1eb610a26fa3
lpr: ed60cebc-32b0-4022-aeca-34da5add44fd


hexo-blog-encrypt
