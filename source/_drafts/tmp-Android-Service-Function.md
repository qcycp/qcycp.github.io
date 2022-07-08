---
title: tmp_Android_Service_Function
abbrlink: dd55188d
tags:
---
如何調用service中的function
===

//MyService.java
```
public void doSomethingB() {
}

public class MyBinder extends Binder {
    public MyService getService() {
        return MyService.this;
    }
 
    public void doSomethingA() {
    }
}
```

//MainActivity.java
```
private MyService mService = null;
private MyService.MyBinder mBinder = null;
private ServiceConnection mConnection = new ServiceConnection() {

    @Override
    public void onServiceDisconnected(ComponentName name) {
        Log.d(TAG, "onServiceDisconnected()");
        mService = null;
    }

    @Override
    public void onServiceConnected(ComponentName name, IBinder service) {
        Log.d(TAG, "onServiceConnected()");

        mBinder = (MyService.MyBinder) service;
        mService = ((MyService.MyBinder) service).getService();
    }
};
```

在MainActivity.java中，可以透過mBinder/mService來調用MyService中的方法
```
mBinder.doSomethingA();
mService.doSomethingB();
```