host: 192.168.1.233
user/123456
docker vm: 192.168.0.160
user/1234


facepp
192.168.1.50 => in
192.168.1.51 => out

登入帳密
MOD4-face@innolux.com
MOD4-face

PORT FORWARDING: 192.168.1.168
relay_in: 192.168.1.131~137
relay_out:192.168.1.121~127

Gate 192.168.1.88 12345
HR   192.168.1.100


先192.168.1.233再192.168.0.160
user/123456

curl -i -X POST -H "User-Agent: Koala Admin" -d 'username=MOD4-face@innolux.com&password=MOD4-face' http://192.168.1.50/auth/login


```
2019-06-04 19:20:13,199 - [websocket.py:137] - INFO Remove Pad: 0C:9D:92:33:41:1C
2019-06-04 19:20:13,200 - [websocket.py:137] - INFO Remove Pad: 0C:9D:92:33:41:02
2019-06-04 19:20:13,201 - [websocket.py:137] - INFO Remove Pad: 0C:9D:92:33:3E:F8
2019-06-04 19:20:13,201 - [websocket.py:137] - INFO Remove Pad: 0C:9D:92:33:3E:A0
2019-06-04 19:20:13,202 - [websocket.py:137] - INFO Remove Pad: 0C:9D:92:33:3E:3A
2019-06-04 19:20:13,202 - [websocket.py:137] - INFO Remove Pad: 0C:9D:92:33:3C:68
2019-06-04 19:20:13,204 - [websocket.py:137] - INFO Remove Pad: 0C:9D:92:33:3E:6A
2019-06-04 19:20:13,204 - [websocket.py:137] - INFO Remove Pad: 0C:9D:92:33:40:F0
2019-06-04 19:20:13,206 - [websocket.py:137] - INFO Remove Pad: 0C:9D:92:33:41:04
2019-06-04 19:20:13,208 - [websocket.py:137] - INFO Remove Pad: 0C:9D:92:33:40:20
2019-06-04 19:20:13,209 - [websocket.py:137] - INFO Remove Pad: 0C:9D:92:33:3D:4A
2019-06-04 19:20:13,210 - [websocket.py:137] - INFO Remove Pad: 0C:9D:92:33:3F:D8
2019-06-04 19:20:13,211 - [websocket.py:137] - INFO Remove Pad: 0C:9D:92:33:3F:92
2019-06-04 19:20:13,213 - [websocket.py:137] - INFO Remove Pad: 0C:9D:92:33:3C:1E
```

```
-H "Cookie: session=3c8d8462-8590-435e-9227-485f96e4bec5"
curl -X POST -d "username=MOD4-face@innolux.com&password=MOD4-face&pad_id=0C:9D:92:33:41:04" http://192.168.56.3:1392/api/pad/login
curl -X POST -d "username=MOD4-face@innolux.com&password=MOD4-face&pad_id=0C:9D:92:33:41:1C" http://192.168.56.3:1392/api/pad/login
curl -X POST -d "username=MOD4-face@innolux.com&password=MOD4-face&pad_id=0C:9D:92:33:41:02" http://192.168.56.3:1392/api/pad/login
curl -X POST -d "username=MOD4-face@innolux.com&password=MOD4-face&pad_id=0C:9D:92:33:40:20" http://192.168.56.3:1392/api/pad/login
curl -X POST -d "username=MOD4-face@innolux.com&password=MOD4-face&pad_id=0C:9D:92:33:3E:3A" http://192.168.56.3:1392/api/pad/login
curl -X POST -d "username=MOD4-face@innolux.com&password=MOD4-face&pad_id=0C:9D:92:33:3F:92" http://192.168.56.3:1392/api/pad/login
curl -X POST -d "username=MOD4-face@innolux.com&password=MOD4-face&pad_id=0C:9D:92:33:3F:D8" http://192.168.56.3:1392/api/pad/login
curl -X POST -d "username=MOD4-face@innolux.com&password=MOD4-face&pad_id=0C:9D:92:33:3E:A0" http://192.168.56.3:1392/api/pad/login
curl -X POST -d "username=MOD4-face@innolux.com&password=MOD4-face&pad_id=0C:9D:92:33:3E:F8" http://192.168.56.3:1392/api/pad/login
curl -X POST -d "username=MOD4-face@innolux.com&password=MOD4-face&pad_id=0C:9D:92:33:3C:68" http://192.168.56.3:1392/api/pad/login
curl -X POST -d "username=MOD4-face@innolux.com&password=MOD4-face&pad_id=0C:9D:92:33:3E:6A" http://192.168.56.3:1392/api/pad/login
curl -X POST -d "username=MOD4-face@innolux.com&password=MOD4-face&pad_id=0C:9D:92:33:3D:4A" http://192.168.56.3:1392/api/pad/login
curl -X POST -d "username=MOD4-face@innolux.com&password=MOD4-face&pad_id=0C:9D:92:33:40:F0" http://192.168.56.3:1392/api/pad/login
curl -X POST -d "username=MOD4-face@innolux.com&password=MOD4-face&pad_id=0C:9D:92:33:3C:1E" http://192.168.56.3:1392/api/pad/login
```

```
{
	"code": 0,
	"data": [{
		"allow_all_subjects": true,
		"allow_visitor": true,
		"allowed_subject_ids": [],
		"box_address": null,
		"box_heartbeat": null,
		"box_status": "1",
		"box_token": null,
		"camera_address": null,
		"camera_name": "In 01",
		"camera_position": "Pad In 01",
		"camera_status": "-1",
		"description": null,
		"id": 43,
		"network_switcher": null,
		"network_switcher_drive": 1,
		"network_switcher_status": "-1",
		"network_switcher_token": null,
		"screen_token": "0C:9D:92:33:3C:1E",
		"server_time": 1559642739.482085,
		"type": 2
	},
	{
		"allow_all_subjects": true,
		"allow_visitor": true,
		"allowed_subject_ids": [],
		"box_address": null,
		"box_heartbeat": null,
		"box_status": "1",
		"box_token": null,
		"camera_address": null,
		"camera_name": "In 02",
		"camera_position": "Pad In 02",
		"camera_status": "-1",
		"description": null,
		"id": 44,
		"network_switcher": null,
		"network_switcher_drive": 1,
		"network_switcher_status": "-1",
		"network_switcher_token": null,
		"screen_token": "0C:9D:92:33:3E:A0",
		"server_time": 1559642739.482085,
		"type": 2
	},
	{
		"allow_all_subjects": true,
		"allow_visitor": true,
		"allowed_subject_ids": [],
		"box_address": null,
		"box_heartbeat": null,
		"box_status": "1",
		"box_token": null,
		"camera_address": null,
		"camera_name": "In 03",
		"camera_position": "Pad In 03",
		"camera_status": "-1",
		"description": null,
		"id": 45,
		"network_switcher": null,
		"network_switcher_drive": 1,
		"network_switcher_status": "-1",
		"network_switcher_token": null,
		"screen_token": "0C:9D:92:33:3C:68",
		"server_time": 1559642739.482085,
		"type": 2
	},
	{
		"allow_all_subjects": true,
		"allow_visitor": true,
		"allowed_subject_ids": [],
		"box_address": null,
		"box_heartbeat": null,
		"box_status": "1",
		"box_token": null,
		"camera_address": null,
		"camera_name": "In 04",
		"camera_position": "Pad In 04",
		"camera_status": "-1",
		"description": null,
		"id": 46,
		"network_switcher": null,
		"network_switcher_drive": 1,
		"network_switcher_status": "-1",
		"network_switcher_token": null,
		"screen_token": "0C:9D:92:33:3E:6A",
		"server_time": 1559642739.482085,
		"type": 2
	},
	{
		"allow_all_subjects": true,
		"allow_visitor": true,
		"allowed_subject_ids": [],
		"box_address": null,
		"box_heartbeat": null,
		"box_status": "1",
		"box_token": null,
		"camera_address": null,
		"camera_name": "In 05",
		"camera_position": "Pad In 05",
		"camera_status": "-1",
		"description": null,
		"id": 47,
		"network_switcher": null,
		"network_switcher_drive": 1,
		"network_switcher_status": "-1",
		"network_switcher_token": null,
		"screen_token": "0C:9D:92:33:3D:4A",
		"server_time": 1559642739.482085,
		"type": 2
	},
	{
		"allow_all_subjects": true,
		"allow_visitor": true,
		"allowed_subject_ids": [],
		"box_address": null,
		"box_heartbeat": null,
		"box_status": "1",
		"box_token": null,
		"camera_address": null,
		"camera_name": "pack in 06",
		"camera_position": "Pack in 06",
		"camera_status": "-1",
		"description": "",
		"id": 55,
		"network_switcher": null,
		"network_switcher_drive": 1,
		"network_switcher_status": "-1",
		"network_switcher_token": null,
		"screen_token": "0C:9D:92:33:3E:F8",
		"server_time": 1559644655.978636,
		"type": 2
	},
	{
		"allow_all_subjects": true,
		"allow_visitor": true,
		"allowed_subject_ids": [],
		"box_address": null,
		"box_heartbeat": null,
		"box_status": "1",
		"box_token": null,
		"camera_address": null,
		"camera_name": "out 05",
		"camera_position": "Pad out 05",
		"camera_status": "-1",
		"description": null,
		"id": 56,
		"network_switcher": null,
		"network_switcher_drive": 1,
		"network_switcher_status": "-1",
		"network_switcher_token": null,
		"screen_token": "0C:9D:92:33:41:04",
		"server_time": 1559644655.978636,
		"type": 2
	},
	{
		"allow_all_subjects": true,
		"allow_visitor": true,
		"allowed_subject_ids": [],
		"box_address": null,
		"box_heartbeat": null,
		"box_status": "1",
		"box_token": null,
		"camera_address": null,
		"camera_name": "pad out 04",
		"camera_position": "Pad out 04",
		"camera_status": "-1",
		"description": "",
		"id": 57,
		"network_switcher": null,
		"network_switcher_drive": 1,
		"network_switcher_status": "-1",
		"network_switcher_token": null,
		"screen_token": "0C:9D:92:33:41:1C",
		"server_time": 1559644655.978636,
		"type": 2
	},
	{
		"allow_all_subjects": true,
		"allow_visitor": true,
		"allowed_subject_ids": [],
		"box_address": null,
		"box_heartbeat": null,
		"box_status": "1",
		"box_token": null,
		"camera_address": null,
		"camera_name": "Out 03",
		"camera_position": "Pad Out 03",
		"camera_status": "-1",
		"description": null,
		"id": 58,
		"network_switcher": null,
		"network_switcher_drive": 1,
		"network_switcher_status": "-1",
		"network_switcher_token": null,
		"screen_token": "0C:9D:92:33:41:02",
		"server_time": 1559644655.978636,
		"type": 2
	},
	{
		"allow_all_subjects": true,
		"allow_visitor": true,
		"allowed_subject_ids": [],
		"box_address": null,
		"box_heartbeat": null,
		"box_status": "1",
		"box_token": null,
		"camera_address": null,
		"camera_name": "Out 02",
		"camera_position": "Pad Out 02",
		"camera_status": "-1",
		"description": null,
		"id": 61,
		"network_switcher": null,
		"network_switcher_drive": 1,
		"network_switcher_status": "-1",
		"network_switcher_token": null,
		"screen_token": "0C:9D:92:33:40:20",
		"server_time": 1559644655.978636,
		"type": 2
	},
	{
		"allow_all_subjects": true,
		"allow_visitor": true,
		"allowed_subject_ids": [],
		"box_address": null,
		"box_heartbeat": null,
		"box_status": "1",
		"box_token": null,
		"camera_address": null,
		"camera_name": "out07",
		"camera_position": "pack out",
		"camera_status": "-1",
		"description": null,
		"id": 64,
		"network_switcher": null,
		"network_switcher_drive": 1,
		"network_switcher_status": "-1",
		"network_switcher_token": null,
		"screen_token": "0C:9D:92:33:3E:3A",
		"server_time": 1559644655.978636,
		"type": 2
	},
	{
		"allow_all_subjects": true,
		"allow_visitor": true,
		"allowed_subject_ids": [],
		"box_address": null,
		"box_heartbeat": null,
		"box_status": "1",
		"box_token": null,
		"camera_address": null,
		"camera_name": "pack in 07",
		"camera_position": "pack in 07",
		"camera_status": "-1",
		"description": null,
		"id": 65,
		"network_switcher": null,
		"network_switcher_drive": 1,
		"network_switcher_status": "-1",
		"network_switcher_token": null,
		"screen_token": "0C:9D:92:33:3F:92",
		"server_time": 1559644655.978636,
		"type": 2
	},
	{
		"allow_all_subjects": true,
		"allow_visitor": true,
		"allowed_subject_ids": [],
		"box_address": null,
		"box_heartbeat": null,
		"box_status": "1",
		"box_token": null,
		"camera_address": null,
		"camera_name": "pack out 06",
		"camera_position": "pack out 06",
		"camera_status": "-1",
		"description": null,
		"id": 66,
		"network_switcher": null,
		"network_switcher_drive": 1,
		"network_switcher_status": "-1",
		"network_switcher_token": null,
		"screen_token": "0C:9D:92:33:3F:D8",
		"server_time": 1559644655.978636,
		"type": 2
	},
	{
		"allow_all_subjects": true,
		"allow_visitor": true,
		"allowed_subject_ids": [],
		"box_address": null,
		"box_heartbeat": null,
		"box_status": "1",
		"box_token": null,
		"camera_address": null,
		"camera_name": "Out 01",
		"camera_position": "Pad Out 01",
		"camera_status": "-1",
		"description": null,
		"id": 113,
		"network_switcher": null,
		"network_switcher_drive": 1,
		"network_switcher_status": "-1",
		"network_switcher_token": null,
		"screen_token": "0C:9D:92:33:40:F0",
		"server_time": 1559644655.978636,
		"type": 2
	}],
	"page": {
		"count": 21,
		"current": 1,
		"size": 10,
		"total": 3
	}
}
```