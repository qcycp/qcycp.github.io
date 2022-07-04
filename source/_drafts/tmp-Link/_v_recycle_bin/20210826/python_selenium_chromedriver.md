https://stackoverflow.com/questions/57243622/docker-google-cloud-chromedriver-executable-needs-to-be-in-path

```
FROM python:3.6-alpine

RUN apk add --update chromium chromium-chromedriver
RUN pip install selenium
```

```
from selenium import webdriver

if __name__ == '__main__':
    chrome_options = webdriver.ChromeOptions()
    chrome_options.add_argument('--headless')
    chrome_options.add_argument('--no-sandbox')
    chrome_options.add_argument('--disable-dev-shm-usage')
    driver = webdriver.Chrome(executable_path='/usr/bin/chromedriver', options=chrome_options)
    driver.get('https://google.com')
```