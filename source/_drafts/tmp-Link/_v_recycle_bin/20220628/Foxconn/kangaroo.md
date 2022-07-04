curl -X POST -d "username=admin&password=123456" http://192.168.56.3:8857/api/auth/login
curl -H "token: eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJwYXlsb2FkIjp7InVzZXJfaWQiOjIsInJvbGVfdHlwZSI6NSwiY29ycG9yYXRpb25faWQiOjJ9LCJleHAiOjE1NTc4MzUyODJ9.rEpfYNO-Nq1_E16SU-5SMGon4Bfy4cqcT-jLWXqH18o" -X GET http://192.168.56.3:8857/api/subject/list

* /auth/login
kangaroo
TOKEN=$(curl -X POST -d 'username=admin&password=123456' http://192.168.56.3:8857/api/auth/login | jq -r .data.token)
TOKEN=$(curl -X POST -d 'username=cyc&password=123456' http://192.168.56.3:8857/api/auth/login | jq -r .data.token)
TOKEN=$(curl -X POST -d 'username=root@faca.com.tw&password=faca123456!!!' http://192.168.56.3:8857/api/auth/login | jq -r .data.token)
face++
curl -i -X POST -H "User-Agent: Koala Admin" -d 'username=face@aptg.com.tw&password=123456' http://192.168.56.4/auth/login

* get subject list
curl -X GET -H "Authorization: Bearer ${TOKEN}" http://192.168.56.3:8857/api/subject/list | jq

* create subject
curl -X POST -H "Authorization: Bearer ${TOKEN}" -d "name=TEST001&job_number=131233123&subject_type=0" http://192.168.56.3:8857/api/subject | jq

* update subject
curl -X PUT -H "Authorization: Bearer ${TOKEN}" -d "name=Nick&job_number=831393" http://192.168.56.3:8857/api/subject/3473 | jq

* delete subject
curl -X DELETE -H "Authorization: Bearer ${TOKEN}" http://192.168.56.3:8857/api/subject/3473 | jq

* delete subject list
curl -X DELETE -H "Authorization: Bearer ${TOKEN}" http://192.168.56.3:8857/api/subject/list?name=8313 | jq

* add photo
curl -X POST -H "Authorization: Bearer ${TOKEN}" -F "photo=@avatar_03.png" http://192.168.56.3:8857/api/subject/photo

* add avatar
curl -X POST -H "Authorization: Bearer ${TOKEN}" --data-urlencode 'avatar='"$(base64 test.jpg)"'' -d "subject_type=0&name=test&job_number=123" http://192.168.56.3:8857/t/subject | jq

* get screen list
curl -X GET -H "Authorization: Bearer ${TOKEN}" http://192.168.56.3:8857/api/system/screen | jq

* get screen
face++
curl -X GET -H "Cookie: session=d69b7067-c402-41b4-b9e4-7d2693030c71" http://192.168.56.4/system/screen | jq

* create screen
curl -X POST -H "Authorization: Bearer ${TOKEN}" -d "box_id=0&camera_address=rtsp://test&camera_position=test" http://192.168.56.3:8857/api/system/screen | jq
curl -X POST -H "Authorization: Bearer ${TOKEN}" -d "camera_position=test&pad_id=test" http://192.168.56.3:8857/api/pad/login | jq
face++
curl -X POST -d "username=nnadmin@foxconn.com&password=faca123456&pad_id=nick01&device_type=2" http://10.60.7.108/pad/login

* update screen
curl -X PUT -H "Authorization: Bearer ${TOKEN}" -d "camera_address=rtsp://test2&camera_location=test2" http://192.168.56.3:8857/tapi/system/screen/3473 | jq

* delete screen
curl -X DELETE -H "Authorization: Bearer ${TOKEN}" http://192.168.56.3:8857/tapi/system/screen/3473 | jq

* get event list
curl -X GET -H "Authorization: Bearer ${TOKEN}" http://192.168.56.3:8857/api/event/list | jq


* delete event
curl -X DELETE -H "Cookie: session=ccab0eb3-e599-4628-ab74-8e3a2d56cdc7" http://192.168.56.4/event/events/878 | jq

* subject import
curl -X POST -H "Authorization: Bearer ${TOKEN}" -F "file=@test.zip" http://192.168.56.3:8857/api/subject/import.zip | jq

* get corporation
curl -X GET -H "Authorization: Bearer ${TOKEN}" http://192.168.56.3:8857/api/corporation/all | jq
curl -X GET -H "Authorization: Bearer ${TOKEN}" http://192.168.56.3:8857/api/corporation/list | jq

* create new corporation
curl -X POST -H "Authorization: Bearer ${TOKEN}" -d "name=cyc&username=cyc&password=123456" http://192.168.56.3:8857/api/corporation | jq


curl -X POST -d 'a=1&b=2&c=3' http://192.168.56.3:8857/api/subject/test
curl -X POST -H "Content-Type: application/json" -d '{"username":"xyz","password":"xyz"}' http://192.168.56.3:8857/api/subject/test

curl -X POST -H "Authorization: Bearer ${TOKEN}" -H 'Content-Type: application/json' -d '{"name":"TEST001","job_number":"test123","subject_type":"0","photo_ids":[3528]}' http://192.168.56.3:8857/tapi/subject | jq

curl -X PUT -H "Authorization: Bearer ${TOKEN}" -H 'Content-Type: application/json' -d '{"name":"TEST001","job_number":"test123","subject_type":"0","photo_ids":[3529,3530]}' http://192.168.56.3:8857/tapi/subject | jq