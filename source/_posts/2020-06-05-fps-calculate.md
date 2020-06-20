---
title: Calculate FPS
abbrlink: 6e72c2d5
date: 2020-06-05 14:20:39
categories: [Programming, Python]
tags:
- Python
---
```python
from imutils.video import FPS
fps = FPS().start()
#do something...
fps.update()
fps.stop()
logging.info("[INFO] elapsed time: {:.3f}".format(fps.elapsed()))
logging.info("[INFO] approx. FPS: {:.2f}".format(fps.fps()))
```