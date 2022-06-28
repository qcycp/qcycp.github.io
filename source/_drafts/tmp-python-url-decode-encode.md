---
title: tmp_python_url_decode_encode
tags:
---
Python url encode/decode
===
```python
from urllib import parse

url = "http://math1.ck.tp.edu.tw/%E9%99%B3%E5%98%AF%E8%99%8E/%E5%B0%8F%E8%99%8E/99%E8%AA%B2%E7%B6%B1/%E7%AC%AC%E4%B8%80%E5%86%8A/%E9%87%8D%E9%BB%9E/99%E8%AA%B2%E7%B6%B1%E6%95%99%E5%AD%B8%E9%87%8D%E9%BB%9E%E6%95%B4%E7%90%861-1-1%E6%95%B8%E8%88%87%E6%95%B8%E7%B7%9A-%E6%95%B8%E8%88%87%E6%95%B8%E7%B7%9A.pdf"
# decode
decode_str = parse.unquote(url)
print(decode_str)
#=>http://math1.ck.tp.edu.tw/陳嘯虎/小虎/99課綱/第一冊/重點/99課綱教學重點整理1-1-1數與數線-數與數線.pdf

# encode, safe指定了不需要编碼的字符
# print(parse.quote(string[, safe]))
encode_str = parse.quote(decode_str)
print(encode_str)
#=>http%3A//math1.ck.tp.edu.tw/%E9%99%B3%E5%98%AF%E8%99%8E/%E5%B0%8F%E8%99%8E/99%E8%AA%B2%E7%B6%B1/%E7%AC%AC%E4%B8%80%E5%86%8A/%E9%87%8D%E9%BB%9E/99%E8%AA%B2%E7%B6%B1%E6%95%99%E5%AD%B8%E9%87%8D%E9%BB%9E%E6%95%B4%E7%90%861-1-1%E6%95%B8%E8%88%87%E6%95%B8%E7%B7%9A-%E6%95%B8%E8%88%87%E6%95%B8%E7%B7%9A.pdf
```