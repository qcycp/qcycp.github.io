[Python: How to Create Rotating Logs](https://www.blog.pythonlibrary.org/2014/02/11/python-how-to-create-rotating-logs/)

```python
import logging
import os
from logging.handlers import RotatingFileHandler
from logging.handlers import TimedRotatingFileHandler

def get_logger(name):
    formatter = logging.Formatter('%(asctime)s - [%(filename)s:%(lineno)s] - %(levelname)s %(message)s ')
    logger = logging.getLogger(name)
    logger.setLevel(logging.DEBUG)

    console = logging.StreamHandler()
    console.setFormatter(formatter)
    logger.addHandler(console)

    if not os.path.exists('/app/logs'):
        os.makedirs('/app/logs')

    file_handler = TimedRotatingFileHandler('/app/logs/imfr.log', when="d", interval=1, backupCount=7)
    file_handler.setFormatter(formatter)
    logger.addHandler(file_handler)

    return logger
```


```
# set logging to file
log_formatter = logging.Formatter(format_string)
file_handler = logging.FileHandler(log_file_name, mode='w') # mode is file write mode, 'a' to append
file_handler.setFormatter(log_formatter)
 
# create child logger and set it to be a file handler
logger = logging.getLogger() # or pass a string to give it a name
logger.addHandler(file_handler)
logger.setLevel(log_level)
```