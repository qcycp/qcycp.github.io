---
title: tmp_python_urllib
tags:
---
Python urllib
===
[利用 Python urllib 模組在 URL 附加網址參數 \| MY.APOLLO](https://myapollo.com.tw/2018/03/08/python-urllib-append-url-parameters/#more)
```python
from urllib.parse import urlparse
r = urlparse('https://www.google.com.tw/search?q=International%20Women%27s%20Day')
print(r) # ParseResult(scheme='https', netloc='www.google.com.tw', path='/search', params='', query='q=International%20Women%27s%20Day', fragment='')

from urllib.parse import parse_qs
d = parse_qs(r.query)
print(d) # {'q': ["International Women's Day"]}

from urllib.parse import urlencode
d['key2'] = 'value 2'
d['key3'] = 'value 3'
new_query = urlencode(d)
print(new_query) # q=%5B%22International+Women%27s+Day%22%5D&key2=value+2&key3=value+3

from urllib.parse import urlunparse
parts = list(r)
print(parts) # ['https', 'www.google.com.tw', '/search', '', 'q=International%20Women%27s%20Day', '']
parts[4] = new_query # query 在第 5 個
new_url = urlunparse(parts)
print(new_url) # https://www.google.com.tw/search?q=%5B%22International+Women%27s+Day%22%5D&key2=value+2&key3=value+3
```