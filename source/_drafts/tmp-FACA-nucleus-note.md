---
title: tmp_FACA_nucleus_note
abbrlink: 9a92eb79
tags:
---
1. 每個 stage 負責的工作 , 每個 stage 運作的重點以及時間
2. source_stage 選 target 的機制 (挑選是否公平 , retry 時的選擇機制考量)
3. retry 機制如何運作
4. 是否有在 process crash 時 , 系統可以有紀錄

Trace exec time(ms) <-- 發現 track 到辨識完的時間
identify time(ms) <--- 實際目標鎖定以後到辨識完畢的時間



image quality 紀錄 http://10.36.94.194:2222/task-view-1632.html
image quality http://10.36.94.101/SI/nucleus_vas/commit/f5ede947738f8b7a4a1ce8d1010e2c2a82c35955
你有發現啥有問題的  或是效能問題  可以記錄在  http://10.36.94.194:2222/task-view-1614.html

靜態辨識最簡單的 flow  http://10.36.94.101/SI/nucleus_vas/blob/dev/src/cpp/hh_recognize.cpp

如果你要改改 code 可以用   ssh user@10.60.3.12 -p 10022 密碼 123456
folder /home/user/data/app/nucleus_vas


user@user:~/data/app/nucleus_vas$ git log
commit f5ede947738f8b7a4a1ce8d1010e2c2a82c35955 (HEAD -> dev, origin/dev)
Author: Anson Ku <anson.cc.ku@fii-foxconn.com>
Date:   Tue Feb 11 06:06:11 2020 +0000

    Add image quality function

user@user:~/data/app/nucleus_vas$ git branch -a
* dev


Q
1. 
faces = g_fd_recognize->Detect(background, false);
這些臉會有順序嗎? 取faces[0]來處理，它有什麼優先權條件?
1:N api送來的臉如果有兩個?
2. 
p_feature1 = target_feature.data();
de_feature1 = g_fr_recognize->Dequantize(p_feature1);

if (p_feature1 == NULL) {...}
如果p_feature1真的是null，g_fr_recognize->Dequantize不會出錯嗎?
3. source stage 包含 read rtsp frame -> face detection -> update tracking list
分開?





1. source
* read rtsp frame
capture.read(bgr_frame);
* face detection
vas_fd->Detect(bgr_frame, true);
* update tracking list
doTracking(tracking_list);
* choose available track according to yaw/pitch/roo/...
  * if all faces cannot pass the condition => skip and goto next frame
* update base frame according score

2. feature
* check quality
* extract feature
* get crop image

3. compare
* comapre all features and get recognition result

4. event
* prepare recognition events

5. track
* send result to websocket

T1
setup server
T2
receive track event => send event
T3
send keepalive event

crash log紀錄、notify
靜態1.N api pipeline


Q
1. kangaroo跟nucleus的溝通? 改分數/pitch/roll/yaw
2. 
3. 

todo list
1A. GPU版本的辨識照片id錯誤，這樣會無法在前端顯示出辨識事件中，是根據哪一張照片來比對feature的

2C. 許多threshold散落各地，且值從哪來?
threshold_similarity = 73;
靜態
fd_builder.min_face_ratio = 0.044;
fd_builder.redetection_period = 10;
動態
fd_builder.min_face_ratio = 0.050;

3B. 1:N的分數固定是73? 從後台改的分數只針對動態?

4C. system ability, 目前辨識的效能? 一個1:N要多久? 在部署完之後，一鍵知道有沒有問題(cpu有沒有pin)

5B. 靜態API中的open_door判斷可以拿掉

6C. 固定隔13個frame印一次fd結果，真正偵測到臉的fd不一定會被印到，這樣會失了真意

7D. multi-face track

8C. dataset裡包含了所有subject的資料，在更改辨識不相關的欄位時，也會影響到dataset的更新 => 沒有必要
    只需要subject_id跟photo足以?!

9D. 陌生人太多，對於考勤紀錄可能不會有影響，但不適用於陌生人告警，是否也可以用某些條件/閥值來控制

10C. nucleus crash record/notify
     => when nucleus start, append message to a log file
     => 大約一個小時會有一份(10M)的log，總共只會留19+1份，夠嗎?

11D. 靜態辨識api改為pipeline處理

12C. std library to array

13C. 1:N api不會建thread去執行

14C. hh_Camera::stage_track，不是event trigger的


問題
1. nvidia gpu的code在git的哪個project?

Note: 在哪裡監控IPCAM reconnected


typedef enum {
    0 TRACK_STATE_NULL,
    1 TRACK_STATE_TRACKING,
    2 TRACK_STATE_BESTFRAME,
    3 TRACK_STATE_FEATURE,
    4 TRACK_STATE_RECOGNIZE,
    5 TRACK_STATE_WAIT_RETRY,
    6 TRACK_STATE_WAIT_RETRY_GONE,
    7 TRACK_STATE_RECOGNIZE_SOCKET,
    8 TRACK_STATE_DISAPPEAR
} hh_TrackState_t;

init
main
  CWrapper_Init
    hh_system_init
      hh_system_load_configuration_file
      hh_checkin_init
      hh_recognize_init
      hhi_feature_extraction_init
    StartDatasetManager
    StartCameraManager



hh_WebSocketServer::workerLoop_T3 3s
hh_Camera::stage_source 15fps
hh_Camera::stage_track 400ms


Todo:
1. 連不上的ipcam，不要create thread(fd/fr handler)
2. 簡單查看ipcam fps方法

今天討論的 performance optimization, 麻煩也針對 maximum throughput 做個量測與評估
例如 8 cores 4 streams
1 core for read frame
1 core for inference
然後看最大可以處理怎麼樣的 input frame resolution and FPS?


今天討論的 performance optimization, 麻煩也針對 maximum throughput 做個量測與評估
例如 8 cores 4 streams
1 core for read frame
1 core for inference
然後看最大可以處理怎麼樣的 input frame resolution and FPS?

更改cpu core
for i in {4..13}; do echo "Disable CPU#${i}: $(echo 0 | sudo tee /sys/devices/system/cpu/cpu${i}/online)"; done
for i in {4..13}; do echo "Enable CPU#${i}: $(echo 1 | sudo tee /sys/devices/system/cpu/cpu${i}/online)"; done

20200325
1. faces_ready_to_next_stage最後沒有delete


20200408
Todo:
1. 精簡dataset
2. 取消start_time/end_time檢查
3. 確認正式部署後source code有沒有刪掉



---------+-----------------+-----------------------------+-------------------------+--------------------------+------------------+---------------------+--------+-----------+-------------+------------+----------------+--------+----------+
| id  | token                                | camera_type | type | camera_name | camera_address                                        | camera_position | camera_status | network_switcher | network_switcher_drive | description | deleted | max_subject_per_frame | face_min_width | face_min_height | face_detection_resize_ratio | camera_resolution_width | camera_resolution_height | camera_fps_ratio | camera_accept_socre | worker | yaw_angle | pitch_angle | roll_angle | corporation_id | box_id | bind_mac |
+-----+--------------------------------------+-------------+------+-------------+-------------------------------------------------------+-----------------+---------------+------------------+------------------------+-------------+---------+-----------------------+----------------+-----------------+-----------------------------+-------------------------+--------------------------+------------------+---------------------+--------+-----------+-------------+------------+----------------+--------+----------+
|  81 | 4b17cb50-4fd4-47dc-bdbe-8a76905c6cd9 |           1 |    1 |             | rtsp://192.168.200.220:8554/E6-IN-01-15fps-ffmpeg.mp4 | haapy_time_1    | 0             |                  |                      0 |             |       0 |                     2 |             64 |              64 |                           2 |                    1920 |                     1080 |                1 |                  73 |      1 |        20 |          20 |         20 |              1 |      2 | NULL     |
|  83 | 57c95142-0c6e-477f-8919-ca43f8579ad9 |           1 |    1 |             | rtsp://192.168.200.220:8555/E6-IN-01-15fps-ffmpeg.mp4 | happy_time_2    | 0             |                  |                      0 |             |       0 |                     2 |             64 |              64 |                           2 |                    1920 |                     1080 |                1 |                  73 |      1 |        20 |          20 |         20 |              1 |      2 | NULL     |
|  84 | 188c9274-3622-482a-9c3e-7cca78cb90dc |           1 |    1 |             | rtsp://192.168.200.220:8556/E6-IN-01-15fps-ffmpeg.mp4 | happy_time_3    | 0             |                  |                      0 |             |       0 |                     2 |             64 |              64 |                           2 |                    1920 |                     1080 |                1 |                  73 |      1 |        20 |          20 |         20 |              1 |      2 | NULL     |
|  85 | 61293265-9c45-4725-a228-043642dfc6ac |           1 |    1 |             | rtsp://192.168.200.220:8557/E6-IN-01-15fps-ffmpeg.mp4 | happy_time_4    | 0             |                  |                      0 |             |       0 |                     2 |             64 |              64 |                           2 |                    1920 |                     1080 |                1 |                  73 |      1 |        20 |          20 |         20 |              1 |      2 | NULL     |
|  86 | 49240cc3-0c41-41dd-9ff5-98e7f81fce53 |           1 |    1 |             | rtsp://192.168.200.221:8554/E6-IN-01-15fps-ffmpeg.mp4 | happy_time_5    | 0             |                  |                      0 |             |       0 |                     2 |             64 |              64 |                           2 |                    1920 |                     1080 |                1 |                  73 |      1 |        20 |          20 |         20 |              1 |      2 | NULL     |
|  87 | 75bcb2ee-26bf-4daf-89dc-f37ff1451b65 |           1 |    1 |             | rtsp://192.168.200.221:8555/E6-IN-01-15fps-ffmpeg.mp4 | happy_time_6    | 0             |                  |                      0 |             |       0 |                     2 |             64 |              64 |                           2 |                    1920 |                     1080 |                1 |                  73 |      1 |        20 |          20 |         20 |              1 |      2 | NULL     |
|  88 | 7fcd41a9-cf5b-46d4-85c4-42f944d936de |           1 |    1 |             | rtsp://192.168.200.221:8556/E6-IN-01-15fps-ffmpeg.mp4 | happy_time_7    | 0             |                  |                      0 |             |       0 |                     2 |             64 |              64 |                           2 |                    1920 |                     1080 |                1 |                  73 |      1 |        20 |          20 |         20 |              1 |      2 | NULL     |
|  89 | 7e9c0939-e80f-453d-9b20-b60d1193095c |           1 |    1 |             | rtsp://192.168.200.221:8557/E6-IN-01-15fps-ffmpeg.mp4 | happy_time_8    | 0             |                  |                      0 |             |       0 |                     2 |             64 |              64 |                           2 |                    1920 |                     1080 |                1 |                  73 |      1 |        20 |          20 |         20 |              1 |      2 | NULL     |
|  91 | 0ec6a2aa-31a4-48b2-85bc-50551701b0a6 |           1 |    1 |             | rtsp://192.168.200.222:8554/E6-IN-01-15fps-ffmpeg.mp4 | happy_time_9    | 0             |                  |                      0 |             |       0 |                     2 |             64 |              64 |                           2 |                    1920 |                     1080 |                1 |                  73 |      1 |        20 |          20 |         20 |              1 |      2 | NULL     |
|  92 | a200b7fe-7bea-4111-88ff-29dbcea31349 |           1 |    1 |             | rtsp://192.168.200.222:8555/E6-IN-01-15fps-ffmpeg.mp4 | happy_time_10   | 0             |                  |                      0 |             |       0 |                     2 |             64 |              64 |                           2 |                    1920 |                     1080 |                1 |                  73 |      1 |        20 |          20 |         20 |              1 |      2 | NULL     |
| 102 | 965f1393-a98a-4f1b-bc79-e77602e31156 |           1 |    1 |             | rtsp://192.168.200.222:8556/E6-IN-01-15fps-ffmpeg.mp4 | happy_time_11   | 0             |                  |                      0 |             |       0 |                     2 |             64 |              64 |                           2 |                    1920 |                     1080 |                1 |                  73 |      1 |        20 |          20 |         20 |              1 |      2 | NULL     |
| 103 | 7c9edf6c-060d-415e-97d5-2fc0e207223d |           1 |    1 |             | rtsp://192.168.200.222:8557/E6-IN-01-15fps-ffmpeg.mp4 | happy_time_12   | 0             |                  |                      0 |             |       0 |                     2 |             64 |              64 |                           2 |                    1920 |                     1080 |                1 |                  73 |      1 |        20 |          20 |         20 |              1 |      2 | NULL     |



300 No face is detected in register_image
301 Error: source jpg file isn't valid
302 More than 1 face are detected in register_image
303 extract feature fail
304 face match failed