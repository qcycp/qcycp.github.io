https://blog.csdn.net/liuchunming033/article/details/46501653
http://note.qidong.name/2018/01/pytest-fixture/
http://kuanghy.github.io/2018/05/08/pytest
https://senarukana.github.io/2015/05/29/pytest-fixture/
https://myapollo.com.tw/2018/09/15/flask-test-client-get-post-examples/
https://www.jianshu.com/p/36128049fefc
http://note.qidong.name/2018/02/pytest-mock/
https://www.patricksoftwareblog.com/testing-a-flask-application-using-pytest/
https://myapollo.com.tw/2017/10/27/pytest-coverage/

```sh
pip install pytest
pip install pytest-html
pip install pytest-cov
```

會安裝下列相關的套件
```sh
atomicwrites==1.3.0
attrs==19.1.0
coverage==4.5.3
more-itertools==7.0.0
pluggy==0.9.0
py==1.8.0
pytest==4.4.0
pytest-cov==2.6.1
pytest-html==1.20.0
pytest-metadata==1.8.0
six==1.12.0
```

command
```sh
execute commands under /test
pytest #run all tests velow current dir
pytest test_xxx.py #run tests in module file test_xxx.py
pytest --html=log.html #run tests and generate report log.html
pytest --cov-report=html --cov=./ #run tests and calculate the coverage for test files
pytest test_xxx.py::TestClass::test_func # test test_func in the TestClass in the test_xxx.py
```

```python
# -*- coding: utf-8 -*-
import json
import pytest
from requests import session
import requests

class TestAuth(object):

    def test_login(self):
        s = session()
        base_uri = 'http://127.0.0.1:8857'
        data ={'username': 'admin', 'password': '123456'}

        ret = s.post(base_uri + '/api/auth/login', data)
        print(ret.content)
        assert ret.status_code == 200
        response = {
            'code': 0,
            'data': {},
            'page': {}
        }
        ret_json = json.loads(ret.content)
        assert ret_json == response
        return s
```