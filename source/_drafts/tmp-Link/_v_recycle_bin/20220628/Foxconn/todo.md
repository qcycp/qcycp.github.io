- [x] fr control
- [x] test case for new mechanism
- [x] functional each stage
- [x] 2.1/2.9 config + 活體 config
- [x] add fd_model config
- [x] 增加刪除track的條件, for example, tracker的框框超出邊界了
- [x] 放大crop image
- [x] 將所有常數統一定義在const.py裡
- [x] FR timeout，會沒有response
- [x] 把FR control改成: 同時間只會送出5個request，第六個會等待有人回來，才往下送
- [x] memcache (disable/enable by config for each camera)
- [x] get log
- [x] memcache get/set timeout/exception blabla...
- [x] worker的數目 config control
- [x] notify web frontend - image_bad_quality
- [x] test case for 1人/1秒
- [ ] 如果某一個thread/while loop真的掛了，有辦法restart嗎
- [ ] 在fd前多做一次track??
- [ ] 不同的track機制，瘋狂做fd，用fd的框框根據距離紀錄track
- [ ] 根據統計資訊，刪除太大太小的track
- [x] store recognize failed 圖, nginx瀏覽
- [ ] recognize failed 圖, 一鍵下載
- [ ] portal
- [ ] re-register
- [x] download log api timeout?

- [x] 統計資訊，看出各個stage的狀況
- [ ] 刪除statisitc舊紀錄?
- [x] statistic加入fr平均時間
- [x] get statistic不指定start end，只秀24筆?
- [x] frame is none wait/notify
- [x] 若設定的授權數小於目前數量，返回特定error
- [x] websocket 訊息、數據
- [x] logs存放路徑，如果不是用docker會錯誤
- [ ] polling face++ screen => 刪除ipcam
- [ ] 夾執行時間的方式可以改善
PadManager
- [ ] 把授權數仿照IMFR方式做

* 需求
trouble shooting
test case and coverage
25000人測試
end to end ci/cd

A document to describe NN requirement
A document to describe the test cases which created according to the requirement document.
A document to describe the test result
A document to describe how to identify the root cause if running error
A CI/CD setup to verify IMFR can pass the test cases

- 2.1
  * /recognize
    1. 員工
    2. 陌生人
    3. 沒有臉

- 2.9
  * /recognize
    1. 員工
    2. 陌生人
    3. 沒有臉
  * /pad_recognize
    1. 員工
    2. 陌生人
    3. 沒有臉

http://192.168.56.3:5074/api/display?type=ver&location=HAHAHA&stage=qr
http://192.168.56.3:5074/api/display?type=img&location=HAHAHA&stage=qr

http://192.168.56.3:5074/api/display?type=ver&location=HAHAHA&stage=tk
http://192.168.56.3:5074/api/display?type=img&location=HAHAHA&stage=tk

http://192.168.56.3:5074/api/display?type=ver&location=GOGOGO&stage=fd
http://192.168.56.3:5074/api/display?type=img&location=GOGOGO&stage=fd


http://192.168.56.3:5074/api/display?type=ver&stage=fr&location=0
http://192.168.56.3:5074/api/display?type=img&stage=fr&location=0

http://192.168.56.3:5074/api/display?type=ver&stage=fr&location=1
http://192.168.56.3:5074/api/display?type=img&stage=fr&location=1

http://192.168.56.3:5074/api/display?type=ver&stage=fr&location=2
http://192.168.56.3:5074/api/display?type=img&stage=fr&location=2

http://192.168.56.3:5074/api/display?type=ver&stage=fr&location=3
http://192.168.56.3:5074/api/display?type=img&stage=fr&location=3

http://192.168.56.3:5074/api/display?type=ver&stage=fr&location=4
http://192.168.56.3:5074/api/display?type=img&stage=fr&location=4


http://192.168.56.3:5074/api/display?type=ver&location=HAHAHA&stage=fr
http://192.168.56.3:5074/api/display?type=size&location=HAHAHA&stage=fr


http://192.168.56.3:5074/api/display?type=ver&location=HAHAHA&stage=newface
http://192.168.56.3:5074/api/display?type=img&location=HAHAHA&stage=newface

http://192.168.56.3:5074/api/imfr/log

curl -X POST -d "token=HAHAHA&debug_mode=1" http://192.168.56.3:5074/api/debug/mode
curl -X POST -d "debug_mode=1" http://192.168.56.3:5074/api/debug/mode/fr


http://192.168.56.3:5074/api/statistic?location=GOGOGOGO
http://192.168.56.3:5074/api/statistic?location=HAHAHA

* enable/disable
POST -d "token=&debug_mode=1" /api/debug/mode
POST -d "debug_mode=1" /api/debug/mode/fr

* viewer
GET /api/viewer?stage=&type=&token=&index=

|          |   stage   |   type   | token | index |
| -------- | --------- | -------- | ----- | ----- |
| qr       | qr        | img/ver  | V     | -     |
| fd       | fd        | img/ver  | V     | -     |
| tk       | tk        | img/ver  | V     | -     |
| newface  | newface   | img/ver  | V     | -     |
| frqsize  | frqsize   | size/ver | V     | -     |
| frthread | frthread  | img/ver  | -     | V     |
| 辨識失敗  | TBD       | TBD      | TBD   | TBD   |

* statistic
GET /api/fr/info?type=

|           |  type   |
| --------- | ------- |
| fraverage | avg/ver |



WSGIServer.py
config.py
main.py
app/__init__.py
app/foundation.py
app/models/logfiles.py
app/models/statistic.py
app/views/config.py
app/views/imfr.py
app/views/ipcam.py
app/views/render.py
app/views/statistic.py
app/views/viewer.py
common/APICaller.py
common/api_utils.py
common/config_manager.py
common/const.py
common/data_manager.py
common/data_storage.py
common/error_code.py
common/face_object.py
common/face_track_data.py
common/json_builder.py
common/logger.py
common/memcache_util.py
common/realtime_statistic.py
common/track_data.py
common/track_object.py
common/db_utils.py
common/parser.py
test/__init__.py
test/test_APICaller.py
test/test_WSGIServer.py
test/test_api_utils.py
test/test_config.py
test/test_config_manager.py
test/test_data_manager.py
test/test_imfr.py
test/test_ipcam.py

831/2438 = 65.9%