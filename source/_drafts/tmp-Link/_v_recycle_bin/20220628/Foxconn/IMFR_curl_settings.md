curl -X POST -d 'max=5&token=FACAIMFRADMIN!@#$' http://192.168.56.3:5074/api/ipcam/max
curl -X PUT -d 'URL=192.168.33.11&ACC=face@aptg.com.tw&PSW=123456&version=2.9' http://192.168.56.3:5074/api/config/engine
curl -X POST -d 'Host=192.168.33.11&Location=test&URL=rtsp://192.168.33.55:8554/CH001.SDP&RelayIP=&RelayPort=&RelayDelay=' http://192.168.56.3:5074/api/ipcam
curl -X GET http://192.168.56.3:5074/api/restart/imfr

