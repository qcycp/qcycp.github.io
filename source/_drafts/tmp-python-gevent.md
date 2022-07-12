---
title: tmp_python_gevent
abbrlink: 6d1c77f6
tags:
---
Python gevent
===
[[超譯]bottle 非同步應用入門 \| 中斷點 - 點部落](https://dotblogs.com.tw/rickyteng/2015/12/07/001409)

一般在會在使用gevent程序的最開頭的地方加入gevent.monkey.patch_all()

它讓 gevent 把 python 多數的阻塞式 API 變成非阻塞式的，讓 CPU 可以去處理下一個 greenlet。

它實際上是用 gevent 的 pseudo-thread 取代 python 的 threading 模組。

即把標準庫中的thread/socket等給替換掉。這樣我們在後面使用socket的時候可以跟平常一樣使用，無需修改任何代碼，但是它變成非阻塞的了

```python
from gevent import monkey; monkey.patch_all()
```
#### 阻塞式單一行程
這樣的網路程式非常的簡單，只有一個迴圈，單一個行程，處理完一個要求後才繼續處理下一個，理所當然這樣的效能非常差，因為連線在完成前其它的連線都無法被處理，現代的伺服器已經很少看見這樣的架構，但因為優點是簡單，如果沒有什麼大量同時連線要處理，其實這樣的架構就很足夠

#### 阻塞式多行程
因為既然單一行程只能同時處理一個請求，那很簡單的想法就是每個請求開一個行程去處理，如此一來就能同時處理更多的請求，但是這樣做有缺點，行程的copy如果是fork的話，有os paging system在成本上其實還好，但是還是有，而且越多的連線就表示需要越多的context-switch，當連線量多到一定程度時，可能大部份的CPU時間都在忙著進行context-switch，如此一來這樣的架構在此情況下是沒有效率的，但是優點是寫伺服器的部份事實上和寫單一行程阻塞式不會差太多，一樣簡單好寫

#### 阻塞式多行程多執行緒
除了多行程多阻塞式，有些程式為了減少process copy的成本，或是其它的考量，會在多個行程上開多個執行緒來處理請求，也有可能是單行程多執行緒，但是基本上和上面這幾種都沒有太大的差別，而引進了執行緒帶來了一些額外的問題，dead lock、race condition等等，當不同的執行緒如果在一起有共同的東西要處理，這些常見的同作問題就會出現，使得程式得寫得更小心