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