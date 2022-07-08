---
title: tmp_python_webpage_scroll_dwn
abbrlink: 26572db3
tags:
---
Python selenium 開網頁後自動捲動網頁到底部
===

```python
from selenium import webdriver
import time

def scrolldown(driver):
    driver.execute_script("""
        (function () {
            var y = document.body.scrollTop;
            var step = 100;
            window.scroll(0, y);
            
            function f() {
                if (y < document.body.scrollHeight) {
                    y += step;
                    window.scroll(0, y);
                    setTimeout(f, 180);
                }
                else {
                    window.scroll(0, y);
                    document.title += "scroll-done";
                }
            }
            setTimeout(f, 1000);
        })();
    """)

browser = webdriver.Chrome()
browser.get("https://www.instagram.com/joeychua8_official/")
scrolldown(browser)

#time.sleep(10)
#browser.quit()
```