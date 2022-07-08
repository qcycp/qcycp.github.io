---
title: tmp_FACA_multisite_note
abbrlink: 548564ca
tags:
---


### root
TOKEN=$(curl -X POST -d 'username=root@faca.com.tw&password=faca123456' http://localhost:8890/auth/login | jq -r .data.token)
curl -X GET -H "Authorization: Bearer ${TOKEN}" http://localhost:8890/user | jq
curl -X POST -H "Authorization: Bearer ${TOKEN}" -d "username=admin&password=123456" http://localhost:8890/user | jq


### super_admin
##### login
TOKEN=$(curl -X POST -d 'username=admin&password=123456' http://localhost:8890/auth/login | jq -r .data.token)

##### user
curl -X GET -H "Authorization: Bearer ${TOKEN}" http://localhost:8890/user | jq
curl -X POST -H "Authorization: Bearer ${TOKEN}" -d "username=faca&password=123456" http://localhost:8890/user | jq
curl -X POST -H "Authorization: Bearer ${TOKEN}" -d "username=foxconn&password=123456" http://localhost:8890/user | jq
curl -X POST -H "Authorization: Bearer ${TOKEN}" -H 'Content-Type: application/json' -d '{"username":"faca","password":"123456","site_ids":[]}' http://localhost:8890/user | jq
curl -X PUT -H "Authorization: Bearer ${TOKEN}" -d "description=123" http://localhost:8890/user/4 | jq
curl -X PUT -H "Authorization: Bearer ${TOKEN}" -H 'Content-Type: application/json' -d '{"username":"faca","description":"123","site_ids":[]}' http://localhost:8890/user/4 | jq
curl -X DELETE -H "Authorization: Bearer ${TOKEN}" http://localhost:8890/user/3 | jq
curl -X PUT -H "Authorization: Bearer ${TOKEN}" -d "password=123456&old_password=123456" http://localhost:8890/user/6 | jq

##### site
curl -X GET -H "Authorization: Bearer ${TOKEN}" http://localhost:8890/site/count | jq
curl -X GET -H "Authorization: Bearer ${TOKEN}" http://localhost:8890/site | jq
curl -X GET -H "Authorization: Bearer ${TOKEN}" http://localhost:8890/site/disconnected | jq
curl -X POST -H "Authorization: Bearer ${TOKEN}" -d "site_code=A001&host_code=A001" http://localhost:8890/site/host | jq
curl -X PUT -H "Authorization: Bearer ${TOKEN}" -d "description=123" http://localhost:8890/site/4 | jq
curl -X DELETE -H "Authorization: Bearer ${TOKEN}" http://localhost:8890/site/3 | jq

##### host
curl -X GET -H "Authorization: Bearer ${TOKEN}" http://localhost:8890/host | jq
curl -X GET -H "Authorization: Bearer ${TOKEN}" http://localhost:8890/host?site_id=2 | jq
curl -X PUT -H "Authorization: Bearer ${TOKEN}" -d "description=test" http://localhost:8890/host/3 | jq

##### subject
curl -X GET -H "Authorization: Bearer ${TOKEN}" http://localhost:8890/subject/count | jq
curl -X GET -H "Authorization: Bearer ${TOKEN}" http://localhost:8890/subject | jq
curl -X GET -H "Authorization: Bearer ${TOKEN}" http://localhost:8890/subject?"site_ids=\[1,2\]" | jq
curl -X GET -H "Authorization: Bearer ${TOKEN}" http://localhost:8890/subject?site_ids=1,2 | jq
curl -X POST -H "Authorization: Bearer ${TOKEN}" -d "subject_type=0&name=Nick&job_number=831392" http://localhost:8890/subject | jq
curl -X POST -H "Authorization: Bearer ${TOKEN}" -H 'Content-Type: application/json' -d '{"subject_type":0,"name":"Nick","job_number":"831392","site_ids":[1,2]}' http://localhost:8890/subject | jq
curl -X POST -H "Authorization: Bearer ${TOKEN}" --data-urlencode 'avatar='"$(base64 avatar_02.bmp)"'' -d "subject_type=0&name=Nick&job_number=831398" http://localhost:8890/subject | jq
curl -X PUT -H "Authorization: Bearer ${TOKEN}" -H 'Content-Type: application/json' -d '{"site_ids":[1,2,3]}' http://localhost:8890/subject/1 | jq
curl -X DELETE -H "Authorization: Bearer ${TOKEN}" http://localhost:8890/subject/1 | jq
curl -X POST -H "Authorization: Bearer ${TOKEN}" -F "file=@/home/user/Desktop.zip" -F "subject_type=0" http://localhost:8890/subject/import | jq
curl -X GET -H "Authorization: Bearer ${TOKEN}" http://localhost:8890/subject/export?subject_type=0 --output export.zip

### admin
##### login
TOKEN=$(curl -X POST -d 'username=faca&password=123456' http://localhost:8890/auth/login | jq -r .data.token)
TOKEN=$(curl -X POST -d 'username=foxconn&password=123456' http://localhost:8890/auth/login | jq -r .data.token)

##### user
curl -X PUT -H "Authorization: Bearer ${TOKEN}" -d "password=123456&new_password=1234" http://localhost:8890/user/password | jq

##### subject
curl -X GET -H "Authorization: Bearer ${TOKEN}" http://localhost:8890/subject | jq




TOKEN=$(curl -X POST -d 'username=root@faca.com.tw&password=faca123456' http://localhost:8890/auth/login | jq -r .data.token)
curl -X POST -H "Authorization: Bearer ${TOKEN}" -d "username=admin&password=123456" http://localhost:8890/user | jq
TOKEN=$(curl -X POST -d 'username=admin&password=123456' http://localhost:8890/auth/login | jq -r .data.token)
curl -X POST -H "Authorization: Bearer ${TOKEN}" -d "site_code=A001&host_code=AH001" http://localhost:8890/site/host | jq
curl -X POST -H "Authorization: Bearer ${TOKEN}" -d "site_code=A001&host_code=AH002" http://localhost:8890/site/host | jq
curl -X POST -H "Authorization: Bearer ${TOKEN}" -d "site_code=A002&host_code=AH003" http://localhost:8890/site/host | jq
curl -X POST -H "Authorization: Bearer ${TOKEN}" -d "site_code=B001&host_code=BH001" http://localhost:8890/site/host | jq
curl -X POST -H "Authorization: Bearer ${TOKEN}" -d "site_code=C001&host_code=CH001" http://localhost:8890/site/host | jq
curl -X POST -H "Authorization: Bearer ${TOKEN}" -H 'Content-Type: application/json' -d '{"subject_type":0,"name":"Nick","job_number":"831392","site_ids":[1,2]}' http://localhost:8890/subject | jq
curl -X POST -H "Authorization: Bearer ${TOKEN}" -H 'Content-Type: application/json' -d '{"subject_type":0,"name":"Test","job_number":"123456","site_ids":[3]}' http://localhost:8890/subject | jq
curl -X POST -H "Authorization: Bearer ${TOKEN}" -H 'Content-Type: application/json' -d '{"subject_type":0,"name":"HaHaHa","job_number":"654321","site_ids":[4]}' http://localhost:8890/subject | jq
curl -X POST -H "Authorization: Bearer ${TOKEN}" -H 'Content-Type: application/json' -d '{"username":"faca","password":"123456","site_ids":[1,2,3]}' http://localhost:8890/user | jq
curl -X POST -H "Authorization: Bearer ${TOKEN}" -H 'Content-Type: application/json' -d '{"username":"foxconn","password":"123456","site_ids":[4]}' http://localhost:8890/user | jq
TOKEN=$(curl -X POST -d 'username=faca&password=123456' http://localhost:8890/auth/login | jq -r .data.token)






curl -X POST -H "Authorization: Bearer ${TOKEN}" --data-urlencode 'avatar='"$(base64 avatar.jpg)"'' -d "subject_type=0&name=Nick&job_number=831392" http://localhost:8890/subject | jq




curl -X PUT -H "Authorization: Bearer ${TOKEN}" --data-urlencode 'avatar='"$(base64 avatar_03.png)"'' http://localhost:8890/subject/20 | jq

curl -X POST -H "Authorization: Bearer ${TOKEN}" -d {"subject_type":0,"name":"Nick","job_number":"831399","site_ids":[1]} --data-urlencode {"photo_list":[""$(base64 avatar_02.bmp)""]} http://localhost:8890/subject | jq


curl -X POST -H "Authorization: Bearer ${TOKEN}" -H 'Content-Type: application/json' -d '{"subject_type":0,"name":"Nick","job_number":"831399","site_ids":[1,2]}' --data-urlencode 'avatar='"$(base64 avatar_02.bmp)"'' http://localhost:8890/subject | jq






1. subject delete => 真刪/假刪
2. event => query by subject_id, 要建index嗎?
3. event => 未識別的事件 如何表示?
4. event中的timestamp要建index? 後面已經有建index group了
5. event的query要怎麼寫?




1. dashboard: show user count?
2. event for each subject