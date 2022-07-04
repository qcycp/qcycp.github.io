```sh
user@vm-docker:~$ python3.5
Python 3.5.2 (default, Nov 23 2017, 16:37:01)
[GCC 5.4.0 20160609] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> abc = {"1":"a", "2":"b"}
>>> aaa = abc.keys()
>>> aaa
dict_keys(['2', '1'])
>>> exit()

user@vm-docker:~$ python2.7
Python 2.7.12 (default, Dec  4 2017, 14:50:18)
[GCC 5.4.0 20160609] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>> abc = {"1":"a", "2":"b"}
>>> aaa = abc.keys()
>>> aaa
['1', '2']
>>> exit()
```

from urllib import urlencode
=>from urllib.parse import urlencode

import urlparse
=>from urllib.parse import urlparse

from urllib import urlencode
=>from urllib.parse import urlencode

import BaseHTTPServer
=>import http.server

不要使用tesseract，會有錯誤
pip install pytesseract and import pytesseract



try:
    import Queue
except ImportError:
    import queue as Queue
