---
title: tmp_FACA_trident_note
tags:
---
* 啟動指令
/etc/rc.local
sudo trident &
killall trident
nohup trident &

* binary
/usr/local/bin/trident

```bash
#!/usr/bin/python

# -*- coding: utf-8 -*-
import re
import sys

from trident.main import main

if __name__ == '__main__':
sys.argv[0] = re.sub(r'(-script\.pyw|\.exe)?$', '', sys.argv[0])
sys.exit(main())
```

* trident package
/usr/local/lib/python2.7/dist-packages/trident
/usr/local/lib/python3.6/dist-packages/trident

* log
/usr/local/etc/trident

* build for python3
```sh
virtualenv venv
source venv/bin/activate
pip install -r r.txt
python setup.py bdist_wheel
pip install ./dist/trident-1.6-py3-none-any.whl
```