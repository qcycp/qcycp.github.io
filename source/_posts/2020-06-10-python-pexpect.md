---
title: python pexpect
abbrlink: c7bdd75f
date: 2020-06-10 10:28:44
categories: [Programming, python]
tags:
- python
- shell script
---
expect("xxx")=>等待"xxx"字串出現
* Sample 1
```python
#!/usr/bin/python

import os
import sys
import pexpect

c = pexpect.spawn('sudo su')
c.expect('nick: ')
c.sendline('123456')
c.sendline('mkdir test_folder')
```
* Sample 2
```python
#!/usr/bin/python

import os
import sys
import pexpect

c = pexpect.spawn('git push')
c.expect('.ssh/id_rsa\':')
c.sendline('123456')
c.expect('master -> master')
```