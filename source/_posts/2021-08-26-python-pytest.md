---
title: python_pytest
abbrlink: 1555af5b
date: 2021-08-26 09:56:11
categories:
tags:
---
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

在根目錄下執行以下指令，輸出的結果會在coverage目錄裡
`python -m pytest test --cov=. --cov-report html:coverage`

pytest #run all tests below current dir
pytest test_xxx.py #run tests in module file test_xxx.py
pytest --html=log.html #run tests and generate report log.html
pytest --cov-report=html --cov=./ #run tests and calculate the coverage for test files

* To run a specific test within a module:
pytest test_mod.py::test_func
pytest test_mod.py::TestClass::test_method

python -m pytest -vv test --cov=. --cov-report html:coverage --html=./coverage/log.html
python -m pytest -vv -s test --cov=. --cov-report html:coverage --html=./coverage/log.html
docker exec -it hh_imfr bash -c "python3.6 -m pytest -vv -s test --cov=. --cov-report html:coverage --html=./coverage/log.html"

https://www.cnblogs.com/landhu/p/7462221.html

1. 執行指定文件
pytest test_mod.py
2. 執行指定目錄下所有文件
pytest tests/
3. 執行指定module中的function
pytest test_mod.py::testfunc
4. 執行指定module中的class funtion
pytest testmod.py::testclass::test_method

-vv 顯示詳細的信息
-s 捕獲輸出, 例如顯示 print 函數的輸出
-x 首次失敗後停止執行



ENV_FACEPP_HOST="192.168.56.3:8866" ENV_FACEPP_ACCOUNT="face@aptg.com.tw" ENV_FACEPP_PASSWORD="123456" python3.6 -m pytest -vv -s test --cov=. --cov-report html:coverage --html=./coverage/log.html

python3.6 -m pytest -vv -s test/test_WSGIServer.py --cov=. --cov-report html:coverage --html=./coverage/log.html

ENV_FACEPP_HOST="192.168.56.3:8866" ENV_FACEPP_ACCOUNT="face@aptg.com.tw" ENV_FACEPP_PASSWORD="123456" python3.6 -m pytest -vv -s test/test_WSGIServer.py --cov=. --cov-report=html --cov-config=test/setup.cfg --html=coverage/log.html

https://pytest-cov.readthedocs.io/en/latest/config.html
https://myapollo.com.tw/2017/10/27/pytest-coverage/
[Configuration reference](https://coverage.readthedocs.io/en/latest/config.html)

ENV_FACEPP_HOST="192.168.56.3:8866" ENV_FACEPP_ACCOUNT="face@aptg.com.tw" ENV_FACEPP_PASSWORD="123456" python3.6 -m pytest -vv -s test --cov=. --cov-report=html --cov-config=test/setup.cfg --html=coverage/log.html


python3.6 -m pytest -vv -s app/test/test_subject.py --cov=. --cov-config=app/test/setup.cfg --cov-report=html --html=coverage/log.html
python3.6 -m pytest -vv -s app/test/test_event.py --cov=. --cov-config=app/test/setup.cfg --cov-report=html --html=coverage/log.html

### Trouble Shooting
pytest 路徑問題

在test file中，若是import project內的module，會發生ModuleNotFoundError
![](image_01.png)

* 法一
在project根目錄下，直接執行
`python -m pytest app/test/test_auth.py`
![](image_02.png)

* 法二
設定PYTHONPATH
![](image_03.png)