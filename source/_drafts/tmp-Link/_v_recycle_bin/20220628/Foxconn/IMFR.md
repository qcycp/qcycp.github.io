IMFR
===

1. 陌生人的處理=>一直瘋狂retry
2. time.sleep的機制=>sleep by fixed timestamp
3. FD/TK library=>opencv haar/eye+dlib
4. FD/FR處理速度控制、data loading control=>根據處理速度，一筆接一筆
5. Face++/QR/FD/TK/FR=>performance analysis for each part
6. image size configuration=>800x450(50x50) dynamic resize
7. test plan、program=>track indication in windowns, multi-thread stress test

Q: thread analysis=>一路camera會有幾條thread?
Q: python opencv讀取rtsp frame會不會有latency?

cpu busy command
seq 3 | xargs -P0 -n1 timeout 5 yes > /dev/null
seq 3 | xargs -P0 -n1 md5sum /dev/zero
3 是 thread number
seq 3 | xargs -P0 -n1 timeout 5 md5sum /dev/zero
timeout 是跑的時間



判斷是no face之後，要不要刪track
直接刪/過十秒刪/always不刪
always不刪=> tk也不能因為它一直做


1. 所有face都塞到同一個queue
2. 統一由一個thread去queue裡抓資料出來，然後用非同步的api丟出request (非同步的worker(thread)數量限制為10)
a. 在送辨識前，檢查該face還在不在track_list中
b. 刪除track時，如果有已經送辨識，但是還沒有處理的face，刪除之 (因為worker只有10，實際上送辨識的只會有10筆，其餘的會先被queue住，刪除那些queue住的)
4. api response回來後會自動執行callback function
5. 從face_list抓出資料送辨識後，固定睡100ms (待送的face很多，每個face送辨識一定會間隔100ms，沒有face就會白睡100ms，然後被wait卡住)

rtsp://172.18.71.11:8554/CH001.sdp

[Python threads synchronization: Locks, RLocks, Semaphores, Conditions, Events and Queues \| Laurent Luce's Blog](https://www.laurentluce.com/posts/python-threads-synchronization-locks-rlocks-semaphores-conditions-events-and-queues/)

[Python线程同步机制: Locks, RLocks, Semaphores, Conditions, Events和Queues - Zhou's Blog](http://yoyzhou.github.io/blog/2013/02/28/python-threads-synchronization-locks/)


curl -F "image=@/home/user/test.png" -F "group=http://127.0.0.1:8866/sync/features" -F "check_quality=False" -F "check_fmp=False" -F "with_landmark=False" -X POST http://127.0.0.1:8080/recognize


curl -F "image=@/home/user/test.png" -F "group=http://127.0.0.1:8866/sync/features?screen_token=LAB_B" -F "check_quality=False" -F "check_fmp=False" -F "with_landmark=False" -X POST http://127.0.0.1:8080/recognize

curl -F "image=@/home/user/hahaha.jpg" -F "group=http://127.0.0.1:8866/sync/features" -F "check_quality=False" -F "check_fmp=False" -F "with_landmark=False" -X POST http://localhost:8080/recognize


curl -X GET http://192.168.56.3:5074/api/ipcam
curl -X DELETE -d "id=0" http://192.168.56.3:5074/api/ipcam
curl -X POST -d "Host=192.168.56.1&Location=LAB_C&RelayDelay=0.15&RelayIP=192.168.1.199&RelayPort=12345&Token=NO_2&URL=E6-IN-01.mp4" http://192.168.56.3:5074/api/ipcam
curl -X PUT -d "id=0&Host=192.168.56.1&Location=LAB_C&RelayDelay=0.15&RelayIP=192.168.1.199&RelayPort=12345&Token=NO_2&URL=E6-IN-01.mp4" http://192.168.56.3:5074/api/ipcam

curl -X PUT -d "min_face=30&fr_failed_retry=5" http://192.168.56.3:5074/api/config/fd
curl -X POST -d "max=0&token=PEROBOT" http://192.168.56.3:5074/api/ipcam/max
curl -X GET http://192.168.56.3:5074/api/imfr/info
curl -X GET http://192.168.56.3:5074/api/config
curl -X GET http://192.168.56.3:5074/api/config/fd
curl -X GET http://192.168.56.3:5074/api/config/engine
curl -X GET http://192.168.56.3:5074/api/restart/imfr
curl -X GET http://192.168.56.3:5074/api/stop/imfr
curl -X GET http://192.168.56.3:5074/api/start/imfr

20190419
1. face++ version選擇
2. 活體開關
3. fd model選擇
4. show stranger


ISSUES
- Performance issue
* 0000097: When backend in high CPU usage, it may lost some of captured faces
We repeat to display 10 visitor photos(each photo display interval was 10secs) in front of IPCAM1 to see if face app can recognize all visitors, but we found sometimes it lost some faces.
If IPCAM1 has capture one face and it cause backend's CPU in high usage, then IPCAM2 may lost it captured face.

* 0000112: [IMFR]Static recognition performance not meet requirement
According to IMFR A1.1.0 release note says "The target performance of IMFR is 1 captured face from each IPCAM can be recognized within 1 second", if IMFR can achieve this, then it should be able to recognized 900 faces per hour for each IP CAM/Streaming but we found static recognition can not meet this target.

* 0000113: [IMFR]靜態辨識效能呈現每天微幅逐步遞減趨勢
經6天觀察, 3路靜態辨識每天同一時間區段(07:00~08:00)的辨識人次, 有往下掉的趨勢!
另外比較6天中, 每天3個固定不同時段辨識數量統計後, 也發現辨識效能呈現微幅逐步遞減的趨勢, 如附圖！
在辨識資料庫與串流影片固定的情況下, 每一路的每日辨識數量應該趨近於相同, 而不應該出現下降的趨勢

* 0000120: [IMFR]IPCAM突然停止辨識後又恢復辨識
3/14 IPCAM每小時辨識紀錄, 中間有6小時辨識中斷, 然後又突然恢復辨識,
問題發生的前一天, 辨識人次數據也異常, 本來都只有2xx~3xx人次/hr
中午大約11點多開始, 在改完IMFR config之後辨識人次暴增從590上升至758人次

* 0000091: Frontend avatar display timing delay around 30 to 60 secs
When employee recognized by face engine, then the avatar display on frontend web after 30~60 secs delay.

* 0000096: After 7 days running, frontend and backend are hanging
After 7 days running, frontend and backend are hanging, face app had no IPCam recognition result and frontend did not pop out any recognition result as well.

- No face recognition event issue
* 0000114: [IMFR]經過4天持續辨識後, 其中3路無辨識結果
3/7開始設置了5路的靜態辨識(無任何動態辨識),但經過週末兩日後發現, 陸續有3路無法辨識, 但是這幾路rtsp仍然可以正常播放
與Ryan確認, 這幾路IMFR仍然有抓到frame, 但是face++辨識紀錄卻沒有任何辨識結果！重啟stream server重連後, 仍然無法此排除問題

- Link down issue
* 0000099: Camera can not reconnect to face engine after link flapping
After disconnect and reconnect below two camera's ethernet cable, we found that face app can not learn cameras and these camera are not recover connections to face engine, frontend had no recognition result as well.

* 0000115: [IMFR]VM重啟後, 4路串流無法進行辨識
3/7在測試環境部署完後, 啟動rtsp streaming server, 但是4路rtsp串流都沒有辨識結果, 僅IPCAM(LAB_B)可進行辨識
經Ryan重啟IMFR之後, 4路rtsp串流恢復顯示辨識結果

- Face tracking issue
* 0000100: Face engine recognized the same person as both employee and stranger
Face engine recognized the same person as employee and stranger.
We observed the order of recognition result is employee then stranger. 

* 0000101: Hikvision camera may captured one person's face twice
We compared below cameras behavior, and found Hikvision camera may captured each face twice, but GeoVison camera did not have this issue.

- Memory usage issue
* 0000103: Face++ static recognition service dead and recognition not working after 2 days stress
Set up below cameras
LAB_A(GeoVision) = 192.168.0.177 -> emulate gate exit
LAB_B(GeoVision) = 192.168.0.178 -> continues face detect stress
LAB_C(Hikvision) = 192.168.0.64 -> emulate gate entrance
pad@sqa = 172.18.71.101(NAT) -> continues face detect stress
After around 2 days running, we saw all the cameras and pad recognition had no recognize result.

* 0000110: [IMFR]After 5 days stress, the static recognition dead
We setup below testbed and found the latest recognition record with static recognition is at 2019-02-06, after 5 days stress static recognition dead.

- Face detection issue
* 0000111: Need to improve face feature fetch algorithm
Found face engine do recognize some faceless frame as a valid face profile and waste resource to fetch and search it, e.g. "stairs" and "air-conditioner controller".
This may not good to a long term service, please consider to improve the face detect algorithm.


* Face recognition long delay issue.
The same F++ VM was used by VMFR and IMFR and the faces being recognized by VMFR will impact the execution time of IMFR.

* No 23:55 to 24:00 time slot, so no people can be recognized during this period.

* Memory leakage if registered IPCAM was link down but not being removed.
如果camera斷了/關了??


- IMFR
1. camera resolution設定720p，crop 後圖像太小，造成辨識結果 Internal Error 500 (2019/1/19)
2. face recognize result 延遲超過10分鐘(2019/1/21)
3. no face could be found => 人臉太小、真的不是臉
4. 10/10000錯誤，造成track無法刪除、影響臉部辨識後track機制的判斷 (2019/2/19)
5. 圖像太小，加上只retry 3次，造成retry 3次後，必須等待10秒才能重新辨識 (2019/4/8)
6. 重啟imfr vm，imfr無法順利啟動，因為rtsp stream尚未讀取成功，造成width/height計算失敗 (2019/3/5)
7. 重啟rtsp streaming，imfr無法重新連線
8. 持續執行一段時間後，無辨識結果 => 因為FR stage有exception沒有捕捉到，所以FR thread結束執行了 (2019/3/7)
9. 網路問題，造成imfr無法讀取rtsp stream
10.23:55~00:00無法辨識 (2019/3/27)
SQA
1. 會漏人
2. 辨識效率不達標 900人/hour
3. 辨識效率下降
4. 前端顯示latency 30~60s
5. 無辨識事件，然後container自己restart
6. face++/imfr vm crash => /recognize失敗
7. 重複辨識

- WebFrontend
1. 頭像太小 (2018/12/21)
2. 頭像變形
3. image url問題
4. 沒有頭像，但有開門(2019/1/23)
5. time server掛掉(2019/1/25)
6. websocket連接失敗(幾乎都是人為操作錯誤)
7. 陌生人無顯示
8. cache
9. 三不五時websocket會斷線重連 (2019/4/11)

- TvFrontend
1. APK crash跳出 (2019/1/5)
2. 黑屏
3. Image Server欄位存不進去
4. settings icon點了之後，打不開 (第一個情況是便當打不開、第二個情況是Remix打不開)
5. APK crash跳出，跳出前，有部分avatar無顯示 (2019/3/5)

2019/1/11 HC field trial
2019/1/16 HC gate control by IMFR
2019/1/19 LH field trial
2019/2/19 HC update
2019/2/20 HC update
2019/2/26 LH background field trial
2019/3/21 LH frontend vis IMFR
2019/3/29 HC update
2019/4/2  HC update
2019/4/10 LH 統一換成TvFrontend



```
{
    "IPCam": {
        "0": {
            "Host": "192.168.0.13",
            "Location": "LAB_C",
            "URL": "rtsp://192.168.33.51/emp_1000_FPS12.mp4",
            "RelayIP": "",
            "RelayPort": "",
            "RelayDelay": 0.05,
            "Token": "3e3e2834"
        },
        "1": {
            "Host": "192.168.0.13",
            "Location": "LAB_D",
            "URL": "rtsp://192.168.33.52/emp_2000_FPS12.mp4",
            "RelayIP": "",
            "RelayPort": "",
            "RelayDelay": 0.05,
            "Token": "d9b773a7"
        },
        "2": {
            "Host": "192.168.0.13",
            "Location": "LAB_E",
            "URL": "rtsp://192.168.33.53/emp_3000_FPS12.mp4",
            "RelayIP": "",
            "RelayPort": "",
            "RelayDelay": 0.05,
            "Token": "4d4cd7c0"
        },
        "3": {
            "Host": "192.168.0.13",
            "Location": "LAB_F",
            "URL": "rtsp://192.168.33.54/emp_4000_FPS12.mp4",
            "RelayIP": "",
            "RelayPort": "",
            "RelayDelay": 0.05,
            "Token": "a5903935"
        }
    }
}
```

```
{
    "FDConfig": [
        {
            "scaleFactor_face": 1.5,
            "minNeighbors_face": 5,
            "minSizeLen_face": 35,
            "minSizeWid_face": 35,
            "scaleFactor_eye": 1.05,
            "minNeighbors_eye": 3,
            "minSizeLen_eye": 20,
            "minSizeWid_eye": 20,
            "isStragerShow": 0,
            "isLowConfidenceShow": 0,
            "reconnectionTime": 20,
            "imageWidth": 800,
            "imageHeight": 450,
            "trackerRefreshInterval": 10,
            "trackerAcceptQuality": 4,
            "tk_control": "disable",
            "tk_execution_interval": 80,
            "fr_failed_retry": 3,
            "fd_execution_time_interval": 0.3,
            "fr_event_interval": 0.1,
            "fd_model": "alt",
            "workers": 4
        }
    ],
    "EngineConfig": [
        {
            "URL": "192.168.33.12",
            "ACC": "face@aptg.com.tw",
            "PSW": "123456",
            "retry": 5,
            "timeout": 5,
            "server": "disable",
            "version": "2.9",
            "fmp": 0
        }
    ]
}
```