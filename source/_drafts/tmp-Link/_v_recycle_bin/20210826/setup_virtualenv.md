`pip install virtualenv --user`
如果不加--user，會有error
Could not install packages due to an EnvironmentError: [Errno 13] Permission denied: 'c:\\program files (x86)\\python37\\Lib\\site-packages\\virtualenv.py'
Consider using the `--user` option or check the permissions.

win10會將virtualenv安裝在
C:\Users\831392\AppData\Roaming\Python\Python37\Scripts
可以設定成環境變數方便使用

```sh
$ pip install virtualenv --user
Collecting virtualenv
Using cached https://files.pythonhosted.org/packages/b6/30/96a02b2287098b23b875bc8c2f58071c35d2efe84f747b64d523721dc2b5/virtualenv-16.0.0-py2.py3-none-any.whl
Installing collected packages: virtualenv
The script virtualenv.exe is installed in 'C:\Users\Nick\AppData\Roaming\Python\Python37\Scripts' which is not on PATH.
Consider adding this directory to PATH or, if you prefer to suppress this warning, use --no-warn-script-location. Successfully installed virtualenv-16.0.0
```

如果系統中預設的python是python2
用virtualenv建立環境時，預設有可能會使用python2來建立
```sh
$ virtualenv venv
Running virtualenv with interpreter /usr/bin/python2
New python executable in /home/nick/HH/wrapper_server/venv/bin/python2
Also creating executable in /home/nick/HH/wrapper_server/venv/bin/python
Installing setuptools, pkg_resources, pip, wheel...done.
```

可以手動指定python的版本
```sh
$ virtualenv vnev --python=python3
$ virtualenv vnev --python=python3.6
```

#### virtualenv v.s. virtualenvwrapper
##### virtualenv
1. 安裝
pip install virtualenv
2. 建立虛擬環境
 cd my_project
 virtualenv venv
3. 啟動虛擬環境
 source venv/bin/activate
4. 退出虛擬環境
 deactivate

##### virtualenvwrapper
好處=>將所有的虛擬環境整合在一個目錄下，不會在project中建立venv的資料夾，git管理方便；搜尋也方便
1. 安裝
 pip install virtualenvwrapper
2. Configurations
 export WORKON_HOME=$HOME/.virtualenv
 source /usr/local/bin/virtualenvwrapper.sh #第一次執行會自動建立~/.virtualenv
 source /home/nick/.local/bin/virtualenvwrapper.sh #第一次執行會自動建立~/.virtualenv
3. 建立虛擬環境
 mkvirtualenv venv //會將虛擬環境建立在WORKON_HOME目錄
4. 啟動虛擬環境
 workon venv
5. 退出虛擬環境
 deactivate
6. 刪除虛擬環境
 rmvirtualenv
7. 列出所有虛擬環境
 lsvirtualenv [-b -l]
8. 列出環境裡安裝了什麼packages
 lssitepackages