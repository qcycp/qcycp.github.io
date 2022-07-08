---
title: tmp_python_logging
abbrlink: b410bd53
tags:
---
```python
# logger.py
import logging
from logging.handlers import RotatingFileHandler

def get_logger(name):
    formatter = logging.Formatter('%(asctime)s - [%(filename)s:%(lineno)s] - %(levelname)s %(message)s ')
    logger = logging.getLogger(name)
    logger.setLevel(logging.DEBUG)

    console = logging.StreamHandler()
    console.setFormatter(formatter)
    logger.addHandler(console)

    file = RotatingFileHandler("/var/log/%s.log" % name, mode='a', maxBytes=100*1024*1024, backupCount=10)
    file.setFormatter(formatter)
    logger.addHandler(file)

    return logger
```

Just show log on stdout  
```python
import logging

logger = logging.getLogger('log')
logger.setLevel(logging.DEBUG)
formatter = logging.Formatter('%(asctime)s - [%(filename)s:%(lineno)s] - %(levelname)s %(message)s ')
handler = logging.StreamHandler()
handler.setFormatter(formatter)
logger.addHandler(handler)
```

```python
# main.py
from app.common.logger import get_logger

logger = get_logger('wrapper')

logger.info("Generate New WebSocket connection: " + str(ws_core))
logger.error(traceback.format_exc())
```

```python
import logging

logging.basicConfig(level=logging.INFO, format='%(asctime)s - [%(filename)s:%(lineno)s] - %(levelname)s %(message)s ')
logging.info('Consumer waiting ...')
```

log內容會顯示在stdout，並且存一份到wrapper.log中
每個wrapper.log的大小限制為100Mb，每當size到達上限後，會把當下的wrapper.log存成wrapper.log.1，並把後續的log存到新的wrapper.log
(再下一個滿了之後，會把原本的wrapper.log.1變成wrapper.log.2，並把wrapper.log存成wrapper.log.1)
wrapper.log.*最多會建立10個(wrapper.log, wrapper.log.1~9)，滿了之後會把最舊的log(wrapper.log.9)刪除，然後依序往後推

http://yhhuang1966.blogspot.com/2018/04/python-logging_24.html  
http://zwindr.blogspot.com/2016/08/python-logging.html  
http://stackoverflow.max-everyday.com/2017/10/python-logging/