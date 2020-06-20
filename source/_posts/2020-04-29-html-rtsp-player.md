---
title: RTSP Player on Web Page
abbrlink: b9c5d30
date: 2020-04-29 11:40:29
categories: Web
tags:
- JSMpeg
---
* git source: https://github.com/qcycp/SampleCode/tree/master/HTML_RTSP_Player
* reference: https://my.oschina.net/chengpengvb/blog/1832469?p=4

包含三個部份
1. NodeJS: contains a http server to receive content from ffmpeg and send out these data via websocket
`$ node websocket.js secret 8081 8082`

2. FFmpeg: decode rtsp streaming and encode to mpeg1, then send to a http streaming
`$ ffmpeg -rtsp_transport tcp -i rtsp://10.60.6.28:8554/CH001.sdp -r 20 -q 0 -f mpegts -codec:v mpeg1video -codec:a mp2 -s 1280x720 http://127.0.0.1:8081/secret/rtsp`

3. JSMpeg: receive video content via websocket and do MPEG1 video & MP2 audio decode in JavaScript

* FFmpeg
```
-rtsp_transport tcp: receive rtsp streaming input via tcp
-i rtsp://10.60.6.28:8554/CH001.sdp: rtsp streaming input
-r 20: set output frame rate, MPEG-1/2 does not support 15/1 fps
-q 0: use fixed quality scale
-f mpegts: set force output format
-codec:v mpeg1video: set output video codec
-codec:a mp2:  set output audio codec
-s 1280x720: set output frame size
```

* JSMpeg
1. https://github.com/phoboslab/jsmpeg
2. MPEG1 Video & MP2 Audio Decoder in JavaScript
```html
<body>
    <canvas id="video"></canvas>
    
    <script type="text/javascript" src="jsmpeg.min.js"></script>
    <script type="text/javascript">
        var canvas = document.getElementById('video');
        var url = 'ws://127.0.0.1:8082/rtsp';
        var player = new JSMpeg.Player(url, {canvas: canvas});
    </script>
</body>
```