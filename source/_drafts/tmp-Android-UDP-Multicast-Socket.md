---
title: tmp_Android_UDP_Multicast_Socket
tags:
---
UDP Multicast Socket
===

Multicast Server (UDP multicast receive) 

```java
public void CreateMulticastServer() {
    byte[] requestData = new byte[1024];

    WifiManaget wifi = (WifiManager) getSystemService(getApplicationContext().WIFI_SERVICE);
    MulticastLock mLock = wifi.createMulticastLock("mylock");
    mLock.acquire();

    try{
       InetAddress group = InetAddress.getByName("230.0.0.1");       
       MulticastSocket multiSocket = new MulticastSoket(PORT);
       multiSocket.joinGroup(group);
    } catch (IOException e) {
        e.printStackTrace();
    }

    try{
       while(true)
       {
            DatagramPacket requestPacket = new DatagramPacket(requestData, requestData.length);
            multiSocket.receive(requestPacket);

            String requestString = new String(requestPacket.getData(), 0, requestPacket.getLength());
            Log.d("CreateMulticastServer","Got request = "+ requestString); 
       }
    
    } catch (IOException e) {
        e.printStackTrace();
    }
    
    try{       
        multiSocket.leaveGroup(group);
        multiSocket.close(); 
    
    } catch (IOException e) {
        e.printStackTrace();
    }
    
    mLock.release();
}
```

Multicast Client (UDP multicast send) 
```java
public void CreateMulticastClient() {
    String requestString = "ClientSendTest\n"
    byte[] requestData = new byte[requestString.length()];
    requestData = requestString.getBytes();

    WifiManaget wifi = (WifiManager) getSystemService(getApplicationContext().WIFI_SERVICE);
    MulticastLock mLock = wifi.createMulticastLock("mylock");
    mLock.acquire();

    try{
       InetAddress group = InetAddress.getByName("230.0.0.1");       
       MulticastSocket multiSocket = new MulticastSoket(PORT);
       multiSocket.joinGroup(group);
    } catch (IOException e) {
       e.printStackTrace();
    }

    try{       
        DatagramPacket requestPacket = new DatagramPacket(requestData, requestData.length, group, PORT);
        multiSocket.send(requestPacket);     
    
    } catch (IOException e) {
        e.printStackTrace();
    }

    
    try{       
        multiSocket.leaveGroup(group);
        multiSocket.close(); 
    
    } catch (IOException e) {
        e.printStackTrace();
    }
    
    mLock.release();

}
```

AndroidManifest.xml 
```xml
<uses-permission android:name="android.permission.INTERNET" />
<uses-permission android:name="android.permission.CHANGE_WIFI_MULTICAST_STATE" />
<uses-permission android:name="android.permission.ACCESS_WIFI_STATE" />
```