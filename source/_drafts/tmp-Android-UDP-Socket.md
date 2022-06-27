---
title: tmp_Android_UDP_Socket
tags:
---
Android udp socket
===
[Android UDP简单实现 - 作业部落 Cmd Markdown 编辑阅读器](https://www.zybuluo.com/Yano/note/258194)

```java
//send(client)
private void sendControlToRelay() {
    final String ip = mApp.getSharedPreference().getRelayAddress();
    if (ip.isEmpty()) {
        Log.d(TAG, "Relay address is invalid!");
        return;
    }

    new Thread(new Runnable() {
        public void run() {
            int serverPort = 5000;
            try {
                DatagramSocket ds = new DatagramSocket();
                int channel = mApp.getSharedPreference().getRelayChannel();
                String sendData = "";
                if (channel == 1) {
                    sendData = "on1:05";
                } else {
                    sendData = "on2:05";
                }
                InetAddress serverAddr = InetAddress.getByName(ip);
                DatagramPacket dp = new DatagramPacket(sendData.getBytes(), sendData.length(), serverAddr, serverPort);
                ds.send(dp);
                ds.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }).start();
}

//receive(server)
AtomicBoolean isRunning=new AtomicBoolean(false);
private void receiveMsgFromRelay() {
    isRunning.set(true);
    new Thread(new Runnable() {
        public void run() {
            try {
                byte[] recevieData = new byte[1024];
                DatagramSocket ds = new DatagramSocket(5000);
                DatagramPacket dp = new DatagramPacket(recevieData, recevieData.length);

                for (;isRunning.get();) {
                    Thread.sleep(100);
                    ds.receive(dp);
                    String data = new String(recevieData, 0, dp.getLength());
                }
                
                ds.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }).start();
}

private void stop_UDP_Server() {
    isRunning.set(false);
}
```