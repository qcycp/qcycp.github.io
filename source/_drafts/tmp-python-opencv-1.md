---
title: tmp_python_opencv
tags:
---
opencv
===

在OpenCV中，grap/retrieve与read三个方法用于读取并解码帧，其具体功能如下：

grab: 顺序读取每一帧，但不做解码。
retrieve: 解码一帧。
read: 封装了grap与retrieve两个方法，顺序读取并解码帧。


Video类
下面我们封装一个Video类，其中除了封装了部分视频参数外，还提供了一个get_frame方法，该方法接受一个帧序数，读取视频中对应位置的帧并返回。

在构造函数中，我们读取了一个视频，并通过get方法获取了视频的帧率与总帧数。

而对于get_frame方法，我们实现的逻辑是：

判断帧序数是否越界。
设置读取的起始帧为序数index对应的那一阵。
顺次读取一帧并返回
具体的代码如下：

```python
import cv2

class Video(object):

    def __init__(self, path):
        self.cap = cv2.VideoCapture(path)
        if not self.cap.isOpened():
            raise IOError("fail to open video files")
        self.fps = self.cap.get(cv2.CAP_PROP_FPS)
        self.frame_count = int(self.cap.get(cv2.CAP_PROP_FRAME_COUNT))

    def get_frame(self, index):
        if index >= self.frame_count:
            raise IndexError("index out of bound!")
        self.cap.set(cv2.CAP_PROP_POS_FRAMES, index)
        ret, frame = self.cap.read()
        return frame

    def __del__(self):
        self.cap.release()
```

调用：

```python
import numpy.random as random
import cv2
from video import Video

video = Video("test.avi")
cv2.namedWindow("frame", cv2.WINDOW_NORMAL)

for i in range(10):
    index = random.randint(0, video.frame_count - 1)
    frame = video.get_frame(index)
    cv2.imshow("frame", frame)

    if (cv2.waitKey(1) & 0xFF == ord('q')):
        break;

cv2.destroyAllWindows()
```