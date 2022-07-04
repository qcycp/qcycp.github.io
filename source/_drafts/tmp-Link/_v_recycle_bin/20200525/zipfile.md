```python
import os
import zipfile

output = '/app/logs.zip'
log_path = '/app/logs/'

with zipfile.ZipFile(output, mode='w', compression=zipfile.ZIP_DEFLATED) as z:
    for root, dir, files in os.walk(log_path):
        for file in files:
            fullpath = os.path.join(root, file)
            z.write(fullpath, file)
```