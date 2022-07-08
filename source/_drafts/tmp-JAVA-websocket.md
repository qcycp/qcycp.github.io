---
title: tmp_JAVA_websocket
abbrlink: 1a3af9fc
tags:
---
java-websocket
===

```xml
compile "org.java-websocket:Java-WebSocket:1.3.9"
```

```java
//FaceIDWebsocketClient.java
package com.foxconn.faceid.common;  
  
import android.util.Log;  
  
import com.foxconn.faceid.FaceIDApplication;  
import com.foxconn.faceid.utils.Utils;  
  
import org.java_websocket.client.WebSocketClient;  
import org.java_websocket.drafts.Draft;  
import org.java_websocket.handshake.ServerHandshake;  
import org.json.JSONException;  
import org.json.JSONObject;  
  
import java.net.URI;  
  
public class FaceIDWebsocketClient extends WebSocketClient {  
    private static final String TAG = "FaceID_WebsocketClient";  
    private JSONObject keepaliveJsonObject = null;  
    private RepeatTaskHandler mHandler = null;  
  
    public FaceIDWebsocketClient(URI serverUri, Draft draft) {  
        super(serverUri, draft);  
    }
  
    public FaceIDWebsocketClient(URI serverURI) {  
        super(serverURI);  
  
        try {
            String mac = Utils.getMacAddress("wlan0");  
            keepaliveJsonObject = new JSONObject("{\\'status\\': \\'keepalive\\', \\'pad_id\\': \\'" \+ mac + "\\'}");  
        } catch (JSONException e) {  
            e.printStackTrace();  
        }
  
        mHandler = new RepeatTaskHandler(new Runnable() {  
            @Override  
            public void run() {  
                //send("{\\'status\\': \\'keepalive\\'}");  
                send(keepaliveJsonObject.toString());  
            }
        }, 5000);  
    }
  
    @Override  
    public void onOpen(ServerHandshake serverHandshake) {  
        Log.d(TAG, "onOpen()");
        mHandler.startUpdates();
    }
  
    @Override  
    public void onMessage(String s) {  
        Log.d(TAG, "onMessage: " \+ s); 
    }  
  
    @Override  
    public void onClose(int i, String s, boolean b) {  
        Log.d(TAG, "onClose()");
        mHandler.stopUpdates();
    }  
  
    @Override  
    public void onError(Exception e) {  
        Log.d(TAG, "onError()");
    }  
}
```

```java
//usage
public void generateWebSocket() {    
    URI uri = null;  
    String host_address = mSharedPreference.getHostAddress();  
    String mac = Utils.getMacAddress("wlan0");  
  
    try {  
        uri = new URI("ws://" \+ host_address + FaceIDApplication.MANAGER\_WS\_PORT \+ "/ws?pad_id=" \+ mac);
        Log.d(TAG, uri.toString());  
    } catch (URISyntaxException e) {  
        e.printStackTrace();  
    }
  
    try {  
        FaceIDWebsocketClient client = new FaceIDWebsocketClient(uri);  
        client.connectBlocking();  
    } catch (InterruptedException e) {  
        e.printStackTrace();  
    }
}
```