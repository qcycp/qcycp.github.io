* 2.1 圖片路徑
/data/koala_online/upload

* 2.9 圖片路徑
/koala-data/upload

* updater log
tail -F /var/log/supervisor/updater-stdout.log | grep POST

* trident
/usr/local/etc/trident

* 開啟debug模式-（顯示底庫質量分數、識別抓圖質量、置信度）
chrome瀏覽器，打開開發者控制台，在console中輸入：
localStorage["debug_score"] = true

* koalo-online
/home/koala/koala-online

* 手動update feature資料檔案
rm -rf /home/koala/koala_local_storage.ft7.json
sudo supervisorctl restart updater

#### 2.9
##### /pad_recognize
* 陌生人
```
{
  "can_door_open": false,
  "error": 100,
  "person": {
    "confidence": 60.755955,
    "id": 163,
    "photo_id": 163,
    "subject_id": 163
  }
}
```
* 沒臉
```
{
  "can_door_open": false,
  "error": 100,
  "person": null
}
```
* 辨識成功
```
{
  "can_door_open": true,
  "error": 0,
  "person": {
    "avatar": "/static/upload/avatar/2019-02-25/v2_52c87656a332ee5ec7f85cec8bf6b1715a742047.jpg",
    "birthday": null,
    "create_time": 1551066549,
    "department": "",
    "description": "",
    "end_time": 0,
    "entry_date": null,
    "id": 15205,
    "interviewee": "",
    "interviewee_pinyin": "",
    "inviter_id": null,
    "job_number": "LH4395",
    "name": "LH4395",
    "origin_photo_id": 18901,
    "remark": "",
    "start_time": 0,
    "subject_type": 0,
    "title": ""
  }
}
```
ws://10.60.7.108:9000/video?url=rtsp://test
##### /recognize
curl -F "image=@server.png" -F screen_token=nick01 -X POST http://10.60.7.108:8866/recognize
* 陌生人
```
{
  "can_door_open": false,
  "error": 7
}
```
* 沒臉
```
{
  "code": -300,
  "data": {},
  "desc": "\u6ca1\u6709\u68c0\u6d4b\u5230\u4eba\u8138"
}
```
* 辨識成功
```
{
  "can_door_open": true,
  "error": 0,
  "person": {
    "confidence": 84.32076,
    "id": 18901,
    "photo_id": 18901,
    "subject_id": 15205,
    "tag": "{\"remark\": \"\", \"subject_type\": 0, \"description\": \"\", \"name\": \"LH4395\", \"title\": \"\", \"start_time\": 0, \"inviter_id\": null, \"interviewee\": \"\", \"id\": 15205, \"origin_photo_id\": 18901, \"birthday\": null, \"create_time\": 1551066549, \"entry_date\": null, \"department\": \"\", \"end_time\": 0, \"interviewee_pinyin\": \"\", \"job_number\": \"LH4395\", \"avatar\": \"/static/upload/avatar/2019-02-25/v2_52c87656a332ee5ec7f85cec8bf6b1715a742047.jpg\"}"
  }
}
```
![](_v_images/20190426191943569_2130.png =1250x)


koala.json
```
"17": {
	"src": "data:image/jpeg;base64...",
	"remark": "",
	"subject_type": 0,
	"description": "",
	"name": "f7a0723e-99f4-463b-bde2-508ac28570bb",
	"title": "",
	"timestamp": 1571792101,
	"start_time": 0,
	"inviter_id": null,
	"interviewee": "",
	"job_number": "",
	"entry_date": null,
	"origin_photo_id": 1370,
	"birthday": null,
	"create_time": 1569978229,
	"avatar": "/static/upload/photo/2019-10-02/v2_795bca7a737d5df55cc6da29753f70e96d882f55.jpg",
	"department": "",
	"end_time": 0,
	"interviewee_pinyin": "",
	"id": 16,
	"uuid": "632d2c7d-2578-425c-a078-d8739a630948"
}
```

websocket
ws://172.18.66.199:9000/video?url=rtsp://172.18.66.188:8554/CH001.sdp
