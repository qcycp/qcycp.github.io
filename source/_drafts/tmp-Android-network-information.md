---
title: tmp_Android_network_information
abbrlink: f64791a9
tags:
---
Android Network Info
===
1. 首先要在AndroidManifest.xml加入檢查網路狀態的權限 :
```
<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
```
2. 接下來只要在程式端(.java)做判斷連線狀態
```java
ConnectivityManager mConnectivityManager = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE);
NetworkInfo mNetworkInfo = mConnectivityManager.getActiveNetworkInfo();

//如果未連線的話，mNetworkInfo會等於null
if(mNetworkInfo != null) {
    //網路是否已連線(true or false)
    mNetworkInfo.isConnected();
    //網路連線方式名稱(WIFI or mobile)
    mNetworkInfo.getTypeName();
    //網路連線狀態
    mNetworkInfo.getState();
    //網路是否可使用
    mNetworkInfo.isAvailable();
    //網路是否已連接or連線中
    mNetworkInfo.isConnectedOrConnecting();
    //網路是否故障有問題
    mNetworkInfo.isFailover();
    //網路是否在漫遊模式
    mNetworkInfo.isRoaming();
}
```