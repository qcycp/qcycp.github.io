```sh
(venv) user@vm-docker:~/pysftp$ pip freeze
asn1crypto==0.24.0
bcrypt==3.1.6
cffi==1.12.2
cryptography==2.6.1
paramiko==2.4.2
pyasn1==0.4.5
pycparser==2.19
PyNaCl==1.3.0
six==1.12.0
```

```python
# -*- coding:utf-8 -*-
import paramiko

def sftp_upload_file():
    try:
        t = paramiko.Transport(("192.168.56.3", 22))
        t.connect(username="user", password="1234")
        sftp = paramiko.SFTPClient.from_transport(t)
        sftp.put("/home/user/test.log", "/home/user/pysftp/test.log")
        t.close()
    except Exception as ex:
        print(ex)

if __name__ == '__main__':
    sftp_upload_file()

```