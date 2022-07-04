pytest Fixtures
===

fixture scope 有 function, module, session
預設是function
- function
每個 test 所使用的 fixture 都是不一樣的。如果以網路連線的 fixture 為例，每次執行測試都會重開一個網路連線
- module
同一個 module 裡的測試會用相同的 fixture。如果以網路連線 fixture 為例，相同 module 的測試都是共用同一個網路連線 fixture
- session
同一次測試裡的 fixture 都是一樣的。如果以網路連線 fixture 為例，所有測試都是使用同一個網路連線 fixture

* pytest 可以自動把 fixture 的名字帶到測試函數中，例如 20 個測試函數都需要同樣的 fixture 的話，就可以直接在測試函數寫上與該 fixture 同名的參數， pytest 就會自動幫忙代入 fixture

```python
# -*- coding: utf-8 -*-
import pytest

@pytest.fixture()
def hello_world():
    return "hello_world"

def test_h_in_hello_world(hello_world):
    assert "h" in hello_world

def test_w_in_hello_world(hello_world):
    assert "w" in hello_world
```

* Parametrizing a fixture
有些時候可能 fixture 需要針對多種不同的參數進行測試，例如測試不同的 server ip/domain ，這時可以選擇 parametrizing a fixture ， pytest 就會自動幫忙針對不同的 fixture 參數執行測試，就不用額外多寫個測試了。

以 test_action 為例子， pytest 自動以 start, stop 各自進行一次測試
```python
# -*- coding: utf-8 -*-
import pytest

@pytest.fixture(scope='module', params=['start', 'stop'])
def action(request):
    return request.param

def test_action(action):
    assert 'pause' == action
```

```sh
$ py.test test_parametrizing_test.py
================== test session starts ==================
platform linux2 -- Python 2.7.9, pytest-2.8.5, py-1.4.31, pluggy-0.3.1
rootdir: /home/user/test_action.py, inifile:
collected 2 items
test_action.py FF
======================= FAILURES ========================
__________________ test_action[start] ___________________
action = 'start'
    def test_action(action):
>       assert 'pause' == action
E       assert 'pause' == 'start'
E         - pause
E         + start
test_action.py:8: AssertionError
___________________ test_action[stop] ___________________
action = 'stop'
    def test_action(action):
>       assert 'pause' == action
E       assert 'pause' == 'stop'
E         - pause
E         + stop
test_action.py:8: AssertionError
=============== 2 failed in 0.02 seconds ================
```