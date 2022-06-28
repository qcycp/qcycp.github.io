---
title: tmp_FACA_facepp_sync_event
tags:
---
pip install requests
pip install pillow

```python
import requests
import time
import traceback
import base64
import hashlib
from io import BytesIO
from PIL import Image

HOST = "http://192.168.56.4"
API = "/sync/event"
SCREEN_TOKEN = "test"
SUBJECT_ID = 641

def image_to_base64(image_path):
    img = Image.open(image_path)
    output_buffer = BytesIO()
    img.save(output_buffer, format='JPEG')
    byte_data = output_buffer.getvalue()
    base64_str = base64.b64encode(byte_data)
    return base64_str

def generate_event(interval=0.33, count=722):
    img_str = image_to_base64('v2_749307ed3c5f5e5edde2a453f9bbbbc655da3b65.jpg')
    m2 = hashlib.md5()
    m2.update(img_str)
    hex_str = m2.hexdigest()

    while count > 0:
        try:
            payload = {
                "screen_token": SCREEN_TOKEN,
                "subject_id": SUBJECT_ID,
                "photo": img_str.decode('utf-8'),
                'photo_md5': hex_str,
#                "age": 47.9723,
#                "confidence": 0.0,
#                "event_type": 0,
#                "fmp": 0.0,
#                "fmp_error": False,
#                "gender": 0.0468869,
#                "group": -1,
#                "quality": 0.0904481,
            }

            url = HOST + API
            res = requests.post(url, data=payload)
            if res.status_code == 200:
                res_json = res.json()
                print(res_json)
                count -= 1
        except:
            print(traceback.format_exc())

        time.sleep(interval)

if __name__ == '__main__':
    generate_event()
```