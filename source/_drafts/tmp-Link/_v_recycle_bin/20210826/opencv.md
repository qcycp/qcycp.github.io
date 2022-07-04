https://blog.gtwang.org/programming/opencv-drawing-functions-tutorial/

#### 直線
cv2.line(影像, 開始座標, 結束座標, 顏色, 線條寬度)
```python
import numpy as np
import cv2

# 建立一張 512x512 的 RGB 圖片（黑色）
img = np.zeros((256, 256, 3), np.uint8)

# 將圖片用淺灰色 (200, 200, 200) 填滿
img.fill(200)

# 在圖片上畫一條紅色的對角線，寬度為 5 px
cv2.line(img, (0, 0), (255, 255), (0, 0, 255), 5)

# 顯示圖片
cv2.imshow('My Image', img)

# 按下任意鍵則關閉所有視窗
cv2.waitKey(0)
cv2.destroyAllWindows()
```

![opencv-drawing-functions-tutorial-20180108-1](_v_images/20190424093923797_9799.png =250x)

#### 方框
cv2.rectangle(影像, 頂點座標, 對向頂點座標, 顏色, 線條寬度)
```python
import numpy as np
import cv2

img = np.zeros((256, 256, 3), np.uint8)
img.fill(200)

cv2.line(img, (0, 0), (255, 255), (0, 0, 255), 5)

# 在圖片上畫一個綠色方框，線條寬度為 2 px
cv2.rectangle(img, (20, 60), (120, 160), (0, 255, 0), 2)

# 綠色實心方框
cv2.rectangle(img, (40, 80), (100, 140), (0, 255, 0), -1)

cv2.imshow('My Image', img)
cv2.waitKey(0)
cv2.destroyAllWindows()
```

![opencv-drawing-functions-tutorial-20180108-2](_v_images/20190424094027156_19362.png =250x)

#### 圓圈
cv2.circle(影像, 圓心座標, 半徑, 顏色, 線條寬度)
```python
import numpy as np
import cv2

img = np.zeros((256, 256, 3), np.uint8)
img.fill(200)

cv2.line(img, (0, 0), (255, 255), (0, 0, 255), 5)
cv2.rectangle(img, (20, 60), (120, 160), (0, 255, 0), 2)
cv2.rectangle(img, (40, 80), (100, 140), (0, 255, 0), -1)

# 黃色圓圈，線條寬度為 3 px
cv2.circle(img,(90, 210), 30, (0, 255, 255), 3)

# 藍色實心圓圈
cv2.circle(img,(140, 170), 15, (255, 0, 0), -1)

cv2.imshow('My Image', img)
cv2.waitKey(0)
cv2.destroyAllWindows()
```

![opencv-drawing-functions-tutorial-20180108-3](_v_images/20190424094144363_26187.png =250x)

#### 橢圓形
cv2.ellipse(影像, 中心座標, 軸長, 旋轉角度, 起始角度, 結束角度, 顏色, 線條寬度)
```python
import numpy as np
import cv2

img = np.zeros((256, 256, 3), np.uint8)
img.fill(200)

cv2.line(img, (0, 0), (255, 255), (0, 0, 255), 5)
cv2.rectangle(img, (20, 60), (120, 160), (0, 255, 0), 2)
cv2.rectangle(img, (40, 80), (100, 140), (0, 255, 0), -1)
cv2.circle(img,(90, 210), 30, (0, 255, 255), 3)
cv2.circle(img,(140, 170), 15, (255, 0, 0), -1)

# 傾斜 45 度的紫色橢圓形
cv2.ellipse(img, (180, 200), (25, 55), 45, 0, 360, (205, 0, 255), 2)

# 傾斜 45 度的半個實心橢圓
cv2.ellipse(img, (180, 200), (20, 50), 45, 0, 180, (255, 0, 255), -1)

cv2.imshow('My Image', img)
cv2.waitKey(0)
cv2.destroyAllWindows()
```

![opencv-drawing-functions-tutorial-20180108-4](_v_images/20190424094217849_14479.png =250x)

#### 折線
cv2.polylines(影像, 頂點座標, 封閉型, 顏色, 線條寬度)
```python
import numpy as np
import cv2

img = np.zeros((256, 256, 3), np.uint8)
img.fill(200)

cv2.line(img, (0, 0), (255, 255), (0, 0, 255), 5)
cv2.rectangle(img, (20, 60), (120, 160), (0, 255, 0), 2)
cv2.rectangle(img, (40, 80), (100, 140), (0, 255, 0), -1)
cv2.circle(img,(90, 210), 30, (0, 255, 255), 3)
cv2.circle(img,(140, 170), 15, (255, 0, 0), -1)
cv2.ellipse(img, (180, 200), (25, 55), 45, 0, 360, (205, 0, 255), 2)
cv2.ellipse(img, (180, 200), (20, 50), 45, 0, 180, (255, 0, 255), -1)

# 設定多邊形頂點座標
pts = np.array([[170, 55], [165, 75], [220, 80], [200, 60]], np.int32)

# 將座標轉為 (頂點數量, 1, 2) 的陣列
pts = pts.reshape((-1, 1, 2))

# 繪製多邊形
cv2.polylines(img, [pts], True, (255, 255, 0), 4)

cv2.imshow('My Image', img)
cv2.waitKey(0)
cv2.destroyAllWindows()
```

![opencv-drawing-functions-tutorial-20180108-5](_v_images/20190424094250635_27948.png =250x)

#### 文字
cv2.putText(影像, 文字, 座標, 字型, 大小, 顏色, 線條寬度, 線條種類)
```python
import numpy as np
import cv2

img = np.zeros((400, 400, 3), np.uint8)
img.fill(90)

# 文字
text = 'Hello, OpenCV!'

# 使用各種字體
cv2.putText(img, text, (10, 40), cv2.FONT_HERSHEY_SIMPLEX,
  1, (0, 255, 255), 1, cv2.LINE_AA)

cv2.putText(img, text, (10, 80), cv2.FONT_HERSHEY_PLAIN,
  1, (0, 255, 255), 1, cv2.LINE_AA)

cv2.putText(img, text, (10, 120), cv2.FONT_HERSHEY_DUPLEX,
  1, (0, 255, 255), 1, cv2.LINE_AA)

cv2.putText(img, text, (10, 160), cv2.FONT_HERSHEY_COMPLEX,
  1, (0, 255, 255), 1, cv2.LINE_AA)

cv2.putText(img, text, (10, 200), cv2.FONT_HERSHEY_TRIPLEX,
  1, (0, 255, 255), 1, cv2.LINE_AA)

cv2.putText(img, text, (10, 240), cv2.FONT_HERSHEY_COMPLEX_SMALL,
  1, (0, 255, 255), 1, cv2.LINE_AA)

cv2.putText(img, text, (10, 280), cv2.FONT_HERSHEY_SCRIPT_SIMPLEX,
  1, (0, 255, 255), 1, cv2.LINE_AA)

cv2.putText(img, text, (10, 320), cv2.FONT_HERSHEY_SCRIPT_COMPLEX,
  1, (0, 255, 255), 1, cv2.LINE_AA)

cv2.imshow('My Image', img)
cv2.waitKey(0)
cv2.destroyAllWindows()
```

![opencv-drawing-functions-tutorial-20180108-6](_v_images/20190424094324579_10661.png =320x)

#### 使用 TTF 字型檔
```python
import numpy as np
import cv2
from PIL import ImageFont, ImageDraw, Image

img = np.zeros((450, 450, 3), np.uint8)

# 將背景設定為大紅色
img[:] = (0, 0, 255)

# 文字
text = '招財\n進寶'

# 指定 TTF 字體檔
fontPath = "./康熙字典體.ttf"

# 載入字體
font = ImageFont.truetype(fontPath, 192)

# 將 NumPy 陣列轉為 PIL 影像
imgPil = Image.fromarray(img)

# 在圖片上加入文字
draw = ImageDraw.Draw(imgPil)
draw.text((30, 30),  text, font = font, fill = (0, 0, 0))

# 將 PIL 影像轉回 NumPy 陣列
img = np.array(imgPil)

cv2.imshow('My Image', img)
cv2.waitKey(0)
cv2.destroyAllWindows()
```

![opencv-drawing-functions-tutorial-20180108-7](_v_images/20190424094349242_722.png =405x)