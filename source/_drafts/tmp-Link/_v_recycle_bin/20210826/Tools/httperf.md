httperf --server 10.60.6.29 --port 8857 --uri /api/event/list --num-conns 5000 --rate 500 --hog



https://ihower.tw/blog/archives/1749

#### httperf 的用法
基本用法是指定 Server、Port、URL和總共要發出多少個 requests：

httperf --server project1.local --port 3000 --uri /events --num-conns 1000

其中最重要的 output 資訊就是 Reply rate 有平均和標準差的那一行。要注意的是 httperf 是每五秒抓一次樣本(sample)，根據 httperf 的建議是希望至少有 30 個樣本數才能得到準確的標準差，因此當 sample 數太少的時候，要記得把 –num-conns 往上加。

另一種算壓力測試，也就是去測試“Server 每秒可以承受多少 requests？”。請再加上 –rate 跟 –hog 參數：

httperf --server project1.local --port 3000 --uri /events --num-conns 5000 --rate 500 --hog

逐步把 rate 往上調，直到 server 超過極限時，就會開始少 replies (有 requests 被 drop off 了) 並出現 Errors。