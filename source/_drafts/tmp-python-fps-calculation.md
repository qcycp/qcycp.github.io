---
title: tmp_python_fps_calculation
tags:
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