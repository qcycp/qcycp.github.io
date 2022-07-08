---
title: tmp_python_opencv
abbrlink: 3c16e598
tags:
---
opencv sample code
===

[【Python】改善 VideoCapture 的影像延遲 \| 夏恩的程式筆記 - 點部落](https://dotblogs.com.tw/shaynling/2017/12/28/091936)

```python
import cv2

# ip camera 的擷取路徑
URL = "rtsp://admin:admin@192.168.1.1/video.h264"

# 建立 VideoCapture 物件
ipcam = cv2.VideoCapture(URL)

# 使用無窮迴圈擷取影像，直到按下Esc鍵結束
while True:
    # 使用 read 方法取回影像
    stat, I = ipcam.read()

    # 加上一些影像處理...

    # imshow 和 waitkey 需搭配使用才能展示影像
    cv2.imshow('Image', I)
    if cv2.waitKey(1) == 27:
        ipcam.release()
        cv2.destroyAllWindows()
        break
```