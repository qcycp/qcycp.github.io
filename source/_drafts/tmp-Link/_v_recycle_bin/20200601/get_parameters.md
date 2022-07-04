from urllib.parse import urlencode
url = {'rtsp': 'E6-IN-01.mp4'}
ret = requests.get('/api/subject/list?'+urlencode(url), headers=headers)


##### execute command in project root folder:
python3.6 -m pytest -vv -s app/test --cov=. --cov-config=app/test/setup.cfg --cov-report=html --html=coverage/log.html

##### coverage report:
/app/coverage/index.html

##### test report:
/app/coverage/log.html

##### get report to local vm from docker:
docker cp hh_kangaroo:/app/coverage .
