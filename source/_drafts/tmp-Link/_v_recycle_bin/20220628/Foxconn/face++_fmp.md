自己指定活體閥值
curl -F "image=@/home/user/test/foliage/pic9.jpg" -F "screen_token=ed911e18" -F "fmp_threshold=0.3" -X POST http://172.18.66.202:8866/pad_recognize

如果判斷越是活體，fmp的值會越低
所以如果閥值設定的很高，代表非活體容忍度高
   如果閥值設定的很低，代表非活體容忍度低

活體判斷
1. 人臉周圍有沒有框
2. 人臉清晰度 => 越模糊越可能是活體，因為照片的解析度一定比較好
