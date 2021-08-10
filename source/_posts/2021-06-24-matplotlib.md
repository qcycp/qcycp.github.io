---
title: matplotlib note
abbrlink: 9ebec7b8
date: 2021-06-24 15:45:11
categories: [Programming, Python]
tags:
- Python
---
* 設定 figure resolution
`plt.figure(figsize=(10, 10), dpi=160)`
=> resolution is 1600x1600
* 隱藏軸標籤和座標軸
ax = plt.gca()
ax.axes.xaxis.set_visible(False)
ax.axes.yaxis.set_visible(False)
* 隱藏座標軸
ax = plt.gca()
ax.axes.xaxis.set_ticks([])
ax.axes.yaxis.set_ticks([])
* 隱藏軸標籤
ax = plt.gca()
ax.axes.xaxis.set_ticklabels([])
ax.axes.yaxis.set_ticklabels([])
* 將坐標軸的刻度用科學計數標記
```
ax = plt.gca()
ax.ticklabel_format(style='sci', scilimits=(0, 0), axis='y')
ax.yaxis.major.formatter._useMathText = True
```
scilimits=(-1,2) 表示對 10^-1 ~ 10^2 範圍之外的數值進行科學計數轉換，範圍內的不換
* waveform
```python
import matplotlib.pyplot as plt
import numpy as np

fs=4000
Ts=1/fs
f0=10
A=math.sqrt(2)
N=1024

x = np.arange(0,N-1,10)   # start,stop,step
y = A*np.sin(2*np.pi*f0*Ts*x)
plt.plot(x, y)
plt.show() # show the image
```
![](image_01.png)

* Trouble Shooting
1. `OverflowError: Exceeded cell block limit (set 'agg.path.chunksize' rcparam)`
當要處理的數據太多，必須手動設定 chunksize
`plt.rcParams['agg.path.chunksize'] = 100000`