---
title: tmp_Android_startService_and_bindService
tags:
---
startService和bindService
===
http://www.cnblogs.com/yejiurui/p/3429451.html

1. service分類
    一般我們認為service分為兩類，本地service和遠程service
* 本地service：就是和當前應用在同一個進程中的service，彼此之間擁有共同的內存區域，所以對於某些數據的共享特別的方便和簡單
* 遠程service：主要牽扯到不同進程間的service訪問，因為android的系統安全的原因，導致我們在不同的進程間無法使用一般的方式共享數據，在這裡android為我們提供了AIDL工具，讓Activity跟Service之間能夠溝通

2. 使用service必須要先在AndroidManifest.xml中宣告
```
<service android:name="com.example.service.myService" />
```

3. start and stop local service
```
Intent startIntent = new Intent(MainActivity.this, myService.class);
startService(startIntent);

Intent stopIntent = new Intent(MainActivity.this, myService.class);
stopService(stopIntent);
```

4. start and stop remote service
必須先在AndroidManifest.xml中，定義service的action intent-filter
```
<service android:name="com.example.service.myService" >
    <intent-filter>
        <action android:name="com.action.myService" />
    </intent-filter>
</service>
```
```
//start service
Intent startIntent = new Intent();
startIntent.setAction("com.example.service.myService");
startService(startIntent);

//stop service
Intent stopIntent = new Intent();
stopIntent.setAction("com.example.service.myService");
stopService(stopIntent);
```

5. bind and unbind local service
```
//bind service
Intent bindIntent = new Intent(MainActivity.this, myService.class);
bindService(bindIntent, mConnection, BIND_AUTO_CREATE);

//unbind service
unbindService(mConnection);

private MyService mService = null;
private ServiceConnection mConnection = new ServiceConnection() {
    @Override
    public void onServiceDisconnected(ComponentName name) {
        mService = null;
    }

    @Override
    public void onServiceConnected(ComponentName name, IBinder service) {
        mService = ((MyService.MyBinder) service).getService();
    }
};
```

6. bind and unbind remote service
```
//bind service
Intent intent = new Intent();
intent.setAction("com.action.myService");
bindService(intent, mConnection, BIND_AUTO_CREATE);

//unbind service
unbindService(mConnection);

private MyService mService = null;
private ServiceConnection mConnection = new ServiceConnection() {
    @Override
    public void onServiceDisconnected(ComponentName name) {
        mService = null;
    }

    @Override
    public void onServiceConnected(ComponentName name, IBinder service) {
        mService = ((MyService.MyBinder) service).getService();
    }
};
```

7. service lifecycle
![6d368e00947673783ea51406e33f9a32.png](:/f6763d5d26f64708bfc7d151feaef509)

8. 重複執行startService，onStartCommand()會被重複執行
    重複執行bindService，onBind()只會被執行一次

9. 當一個service尚未被啟動，可以使用startService或bindService來啟動service

10. 當一個background service已經被啟動了，通常會透過bindService來綁定，藉此來使用service所提供的服務

11. Activity使用startService來啟動service，當此Activity退出，又沒有使用stopService來結束service，則該service會一直活著
      Activity使用bindService來綁定service，當此Activity退出，該service就會跟著一起結束了

12. 只要使用了bindService，不管之後是否解绑和停止服務，都可以使用service中的function
      正常情況下，onServiceDisconnected是不會被執行的