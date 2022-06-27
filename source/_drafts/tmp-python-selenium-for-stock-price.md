---
title: tmp_python_selenium_for_stock_price
tags:
---
Python 爬蟲 單日股價
===

```python
import requests
import pandas as pd
from io import StringIO

# =1=
url = "http://www.twse.com.tw/exchangeReport/MI_INDEX?response=csv&date=20180821&type=ALLBUT0999"
res = requests.get(url)

# =2=
lines = res.text.splitlines()
newlines = []
for line in lines:
    if len(line.split('",')) > 10:
        line = line.replace("=", "")
        newlines.append(line)

# =3=
csv = '\n'.join(newlines)
dfs = pd.read_csv(StringIO(csv))

# =4=
dfs = dfs.astype(str)
dfs =  dfs.applymap(lambda s: s.replace(',', ''))
dfs =  dfs.set_index('證券代號')
dfs = dfs.apply(lambda s: pd.to_numeric(s, errors='coerce'))
dfs.dropna(axis=1, how='all', inplace=True)

'''
# 存檔成csv
dfs.to_csv('daily_price.csv', encoding='utf_8_sig')

import sqlite3

conn = sqlite3.connect('test.sqlite3')

# 存檔 if_exists='replace' 是說假如sql中已經有 daily_price 這個 dataframe，則取代它
dfs.to_sql('daily_price', conn, if_exists='replace')

# 讀檔
df = pd.read_sql('select * from daily_price', conn, index_col=['證券代號'])
'''

# 1. 一開始的res.text是一個csv檔，csv檔其實就是一個文字檔，每一筆資料就是一列
# 2. 因為有些列的資料是錯的、不需要的，所以一開始要先篩掉那些列的資料
#    => 將整著文字檔利用list存放每一列的資料，然後再將長度、內容不對的item去除
# 3. 把每一列的資料都處理好之後，要再將轉換回類似csv檔案的格式 => 一列一列的
# 4. 建立dfs之後，要將所有欄位中，中文的、無效的、逗點符號，全部去掉，最後所有資料通通都會是integer
#    因為不知道每個欄位當前的資料型態，所以統一轉成str後再來處理
#    處理完之後，要轉成integer時，將所有無法轉成integer的資料，assign NaN的值
#    把每一行中，全部都是NaN的刪除
```