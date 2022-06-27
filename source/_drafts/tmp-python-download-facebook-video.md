---
title: tmp_python_download_facebook_video
tags:
---
Download facebook video by python
===

1. install youtube-dl
python -m pip install youtube-dl

2. downloading 會自動下載解析度較高的影片
$ youtube-dl https://www.facebook.com/iROCKCOCO/videos/1818801338140040/

3. 加上減大寫F -F 會顯示影片所有畫質清單
$ youtube-dl -F https://www.facebook.com/iROCKCOCO/videos/1818801338140040/
[facebook] 1818801338140040: Downloading webpage
[info] Available formats for 1818801338140040:
format code extension resolution note
2105155613033519ad m4a audio only [eng] DASH audio 49k , m4a_dash container, mp4a.40.5 (48000Hz)
1834386369934495vd mp4 480x270 [eng] DASH video 152k , mp4_dash container, avc1.4d401e, video only
101407697388467v mp4 640x360 [eng] DASH video 292k , mp4_dash container, avc1.4d401e, video only
1868468709840325v mp4 854x480 [eng] DASH video 433k , mp4_dash container, avc1.4d401e, video only
428273060927193v mp4 1280x720 [eng] DASH video 635k , mp4_dash container, avc1.4d401f, video only
313773112484882v mp4 1920x1080 [eng] DASH video 1397k , mp4_dash container, avc1.4d4028, video only
dash_sd_src mp4 unknown
dash_sd_src_no_ratelimit mp4 unknown
dash_hd_src mp4 unknown
dash_hd_src_no_ratelimit mp4 unknown (best)

4. 加上減小寫f -f 可以複製清單中的format code，下載你選的畫質影片
$ youtube-dl -f 313773112484882v https://www.facebook.com/iROCKCOCO/videos/1818801338140040/

5. 若有audio only跟Dash video，可以利用加號 + 來進行下載自動合併
p.s. 必須先安裝ffmpeg，才能使用合併的功能
a. download ffmpeg
https://ffmpeg.zeranoe.com/builds/
b. setup ffmpeg
https://www.youtube.com/watch?v=pHR3ttH5t-w

6. download video+audio and merge automatically
$ youtube-dl -f 313773112484882v+2105155613033519ad https://www.facebook.com/iROCKCOCO/videos/1818801338140040/