---
title: tmp_python_selenium_for_stock_monthly_gain
abbrlink: ca1e4564
tags:
---
Python 爬蟲 月營收
===

```python
import requests
from io import StringIO
import pandas as pd
import sqlite3

url = 'http://mops.twse.com.tw/nas/t21/sii/t21sc03_106_1_0.html'
r = requests.get(url)
r.encoding = 'big5'

# 讀出table
df = pd.read_html(StringIO(r.text))

# 讀出第一組dataframe
df = df[0]

# 僅保留前10行
df = df[list(range(10))]

# 抓出title列，將dataframe的title設定成這組資料
df.columns = df[df[0] == '公司代號'].iloc[0]

# 將第一行中，所有不是數字的資料刪除
df = df[~pd.to_numeric(df['公司代號'], errors='coerce').isnull()]

# 把index設定成['公司代號', '公司名稱']
df = df.set_index(['公司代號', '公司名稱'])

# 把所有資料轉成integer
df = df.apply(pd.to_numeric)

# 存成csv檔
df.to_csv('monthly_report.csv', encoding='utf_8_sig')

# 存入database
conn = sqlite3.connect('test.sqlite3')
df.to_sql('monthly_report', conn, if_exists='replace')
```