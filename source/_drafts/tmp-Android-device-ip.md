---
title: tmp_Android_device_ip
tags:
---
顯示device ip
===

```
private void displayIpAddress() {
    WifiManager wifiManager=(WifiManager)getSystemService(Context.WIFI_SERVICE);
    WifiInfo wifiInfo=wifiManager.getConnectionInfo();
    int address=wifiInfo.getIpAddress();
    Toast.makeText(this, intToIp(address), Toast.LENGTH_LONG).show();
}
private String intToIp(int i)  {
    return (i & 0xFF)+ "." + ((i >> 8 ) & 0xFF)+ "." + ((i >> 16 ) & 0xFF) +"."+((i >> 24 ) & 0xFF );
}
```