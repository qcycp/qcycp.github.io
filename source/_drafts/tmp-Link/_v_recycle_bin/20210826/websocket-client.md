```
gevent==1.4.0
greenlet==0.4.15
gunicorn==19.9.0
six==1.12.0
websocket==0.2.1
websocket-client==0.55.0
```

```

from urllib.parse import urlencode
import websocket
import threading
import time
import sys
import json

port = 5073

def on_message(ws, message):
    data = json.loads(message)
    print("receive message from server:")
    print(data)

def on_error(ws, error):
    print(error)

def on_close(ws):
    print("### closed ###")

def on_open(ws):
    def job():
        while True:
            time.sleep(5)
            ws.send("Hello")
        time.sleep(1)
        ws.close()
    thread = threading.Thread(target=job)
    thread.start()


if __name__ == "__main__":
    websocket.enableTrace(True)
    #ws = websocket.create_connection("ws://localhost:" + str(port) + "/")
    url = {'rtsp': 'E6-IN-01.mp4'}
    ws = websocket.WebSocketApp("ws://0.0.0.0:" + str(port) + "?" + urlencode(url),
                              on_message = on_message,
                              on_error = on_error,
                              on_close = on_close)
    ws.on_open = on_open
    ws.run_forever()
```
