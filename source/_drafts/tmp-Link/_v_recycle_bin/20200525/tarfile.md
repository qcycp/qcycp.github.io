```python
import os
import tarfile

tar=tarfile.open('/app/logs.tar', 'w')
for root, dir, files in os.walk('/app/logs/'):
    for file in files:
        fullpath=os.path.join(root, file)
        tar.add(fullpath, arcname=file)
tar.close()
```