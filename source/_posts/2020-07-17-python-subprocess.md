---
title: subprocess
abbrlink: b1b1ed69
date: 2020-07-17 15:54:48
categories: [Programming, Python]
tags:
- Python
---
* run
was added in Python 3.5 
execute a command and wait until it finishes
```python
res = subprocess.run(["cat", "/etc/hostname"], stdout=subprocess.PIPE)
hostname = res.stdout.decode("utf-8").strip()
```

call
ret=subprocess.call('cat /etc/machine-id', shell=True, stdout=open('/dev/null','w'), stderr=subprocess.STDOUT)


popen
you can continue doing your stuff while the process finishes and then just repeatedly call subprocess.communicate yourself to pass and receive data to your process.

