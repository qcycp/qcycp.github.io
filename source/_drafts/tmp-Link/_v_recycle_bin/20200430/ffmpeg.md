With this command I had poor image quality
ffmpeg -i rtsp://192.168.XXX.XXX:554/live.sdp -vcodec copy -acodec copy -f mp4 -y MyVideoFFmpeg.mp4

With this, almost without delay, I got good image quality.
ffmpeg -i rtsp://192.168.XXX.XXX:554/live.sdp -b 900k -vcodec copy -r 60 -y MyVdeoFFmpeg.avi

node websocket.js supersecret 8081 8082
轉流
ffmpeg -rtsp_transport tcp -i rtsp://10.60.6.28:8554/CH001.sdp -r 30 -q 0 -f mpegts -codec:v mpeg1video -s 1280x720 http://192.168.56.3:8081/supersecret/live1

640x480 55
1280x720 80

https://my.oschina.net/chengpengvb/blog/1832469?p=4
https://blueeyes.com.tw/CCTV_WebNVR.php
https://www.kazovision.com/sports/livescore/?lang=cht



推流
ffmpeg -re -i mv.mp4 -q 0 -f mpegts -codec:v mpeg1video -s 1280x720 http://192.168.56.3:8081/supersecret/live1