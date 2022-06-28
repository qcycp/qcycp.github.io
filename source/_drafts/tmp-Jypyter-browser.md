---
title: tmp_Jypyter_browser
tags:
---
設定Jypyter notebook的預設browser
===
1. 打開jypyter指令
jypyter notebook
2. 設定檔在C:\Users\name\.jupyer\jupyter_notebook_config.py
3. 在#c.NotebookApp.open_browser = True這一行之後，加上以下代碼即可
```python
import webbrowser
webbrowser.register('chrome', None, webbrowser.GenericBrowser(u'C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe'))
c.NotebookApp.browser = 'Chrome'
```