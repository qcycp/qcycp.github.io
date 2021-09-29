---
title: supervisor_on_python3
abbrlink: 14029df0
date: 2021-08-31 11:55:58
categories:
tags:
---
* Installed failed
```
  Downloading https://files.pythonhosted.org/packages/a6/41/65ad5bd66230b173eb4d0b8810230f3a9c59ef52ae066e540b6b99895db7/supervisor-3.1.3.tar.gz (391kB)
    100% |████████████████████████████████| 399kB 6.5MB/s
    Complete output from command python setup.py egg_info:
    Supervisor requires Python 2.4 or later but does not work on any version of Python 3.  You are using version 3.7.0 (v3.7.0:1bf9cc5093, Jun 27 2018, 04:06:47) [MSC v.1914 32 bit (Intel)].  Please install using a supported version.

    ----------------------------------------
```
* supervisor link
```
(venv) $ pip install git+https://github.com/Supervisor/supervisor
Collecting git+https://github.com/Supervisor/supervisor
  Cloning https://github.com/Supervisor/supervisor to c:\users\831392\appdata\local\temp\pip-req-build-3qfkndwu
Collecting meld3>=1.0.0 (from supervisor==4.0.0.dev0)
  Using cached https://files.pythonhosted.org/packages/b6/ae/e6d731e4b9661642c1b20591d8054855bb5b8281cbfa18f561c2edd783f7/meld3-1.0.2-py2.py3-none-any.whl
Building wheels for collected packages: supervisor
  Running setup.py bdist_wheel for supervisor ... done
  Stored in directory: C:\Users\831392\AppData\Local\Temp\pip-ephem-wheel-cache-ei6ela8q\wheels\28\ee\fa\5e2a0ec95fba620ba05a13a46824ac019dc2fc76dffe6eed2c
Successfully built supervisor
Installing collected packages: meld3, supervisor
Successfully installed meld3-1.0.2 supervisor-4.0.0.dev0
```