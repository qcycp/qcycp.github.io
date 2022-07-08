---
title: tmp_Android_Service_AIDL
abbrlink: 19bf6da7
tags:
---
Service example including AIDL
===

[ServiceSample_aidl_.zip](:/8cf44933113549469bfeddf9ade44ce3)

//AndroidManifest.xml
```
<service android:name="com.example.service.MyService" >
    <intent-filter>
        <action android:name="com.example.action.MyService" />
    </intent-filter>
</service>
```

//MyService.java
```
package com.example.service;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;

public class MyService extends Service {

    public static final String TAG = "MyService";
    //若是沒有宣告AIDL，需要在這裡建立mBinder
    //private MyBinder mBinder = new MyBinder();

    @Override
    public void onCreate() {
        super.onCreate();
        Log.d(TAG, "onCreate()");
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        Log.d(TAG, "onStartCommand()");

        return super.onStartCommand(intent, flags, startId);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        Log.d(TAG, "onDestroy()");
    }

    @Override
    public IBinder onBind(Intent intent) {
        Log.d(TAG, "onBind()");

        return mBinder;
    }

    @Override
    public boolean onUnbind(Intent intent) {
        Log.d(TAG, "onUnbind()");

        return super.onUnbind(intent);
    }

    //若是沒有宣告AIDL，需要建立Binder
    //public class MyBinder extends Binder {
    //    public MyService getService() {
    //        return MyService.this;
    //    }
    //}

    public void doSomething() {
        Log.d(TAG, "doSomething()");
    }

    final RemoteCallbackList<IMyAidlCallback> mCallbacks =
            new RemoteCallbackList<IMyAidlCallback>();

    //AIDL function implemantation
    private final IMyAidl.Stub mBinder = new IMyAidl.Stub() {
        public void doAIDLSomething() {
            Log.d(TAG, "doAIDLSomething()");

            final int count = mCallbacks.beginBroadcast();
            Log.d(TAG, "count = " + count);
            for (int i = 0; i < count; i++) {
                try {
                    //clientCallback()實際的內容定義在client端
                    mCallbacks.getBroadcastItem(i).clientCallback(100);
                } catch (RemoteException e) {
                    // The RemoteCallbackList will take care of removing
                    // the dead object for us.
                    e.printStackTrace();
                }
            }
            mCallbacks.finishBroadcast();
        }

        public void registerCallback(IMyAidlCallback cb) {
            Log.d(TAG, "registerCallback()");

            if (cb != null) mCallbacks.register(cb);
        }
        public void unregisterCallback(IMyAidlCallback cb) {
            Log.d(TAG, "unregisterCallback()");

            if (cb != null) mCallbacks.unregister(cb);
        }
    };
}
```

//IMyAidl.aidl
```
package com.example.service;

import com.example.service.IMyAidlCallback;

interface IMyAidl {
    void doAIDLSomething();
    void registerCallback(IMyAidlCallback cb);
    void unregisterCallback(IMyAidlCallback cb);
}
```

//IMyAidlCallback.aidl
```
package com.example.service;

interface IMyAidlCallback {
    void clientCallback(int actionId);
}
```

```
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical">

    <Button
        android:id="@+id/StartService"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text="@+string/StartService" />

    <Button
        android:id="@+id/StopService"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text="@+string/StopService" />

    <Button
        android:id="@+id/BindService"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text="@+string/BindService" />

    <Button
        android:id="@+id/UnbindService"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text="@+string/UnbindService" />

    <Button
        android:id="@+id/BindServiceOperation"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text="@+string/BindServiceOperation" />
</LinearLayout>
```

//LocalActivity.java
//Example of start/bind a local service
```
package com.example.service;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import android.view.View.OnClickListener;
import android.view.View;
import android.widget.Button;

public class LocalActivity extends Activity implements OnClickListener {

    private static final String TAG = "LocalActivity";

    //若是沒有宣告AIDL
    //private MyService mService = null;
    //若是有宣告AIDL
    private IMyAidl mService = null;

    boolean mIsBound = false;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Button StartServiceBtn = (Button) findViewById(R.id.StartService);
        Button StopServiceBtn = (Button) findViewById(R.id.StopService);
        Button BindServiceBtn = (Button) findViewById(R.id.BindService);
        Button UnbindServiceBtn = (Button) findViewById(R.id.UnbindService);
        Button BindServiceOpBtn = (Button) findViewById(R.id.BindServiceOperation);
        StartServiceBtn.setOnClickListener(this);
        StopServiceBtn.setOnClickListener(this);
        BindServiceBtn.setOnClickListener(this);
        UnbindServiceBtn.setOnClickListener(this);
        BindServiceOpBtn.setOnClickListener(this);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();

        if (mIsBound) {
            unbindService(mConnection);
            mIsBound = false;
        }
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.StartService:
                // 單純啟動一個service
                Intent startIntent = new Intent(this, MyService.class);
                startService(startIntent);
                break;
            case R.id.StopService:
                Intent stopIntent = new Intent(this, MyService.class);
                stopService(stopIntent);
                break;
            case R.id.BindService:
                // 啟動一個service，Activity可以跟service互相溝通
                Intent bindIntent = new Intent(this, MyService.class);
                bindService(bindIntent, mConnection, BIND_AUTO_CREATE);
                mIsBound = true;
                break;
            case R.id.UnbindService:
                //若沒有綁定service，unbind會出錯
                if (mIsBound) {
                    unbindService(mConnection);
                    mIsBound = false;
                }
                break;
            case R.id.BindServiceOperation:
                //若是沒有宣告AIDL
                //mService.doSomething();
                //若是有宣告AIDL
                try {
                    mService.doAIDLSomething();
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
                break;
            default:
                break;
        }
    }

    private ServiceConnection mConnection = new ServiceConnection() {

        @Override
        public void onServiceDisconnected(ComponentName name) {
            Log.d(TAG, "onServiceDisconnected()");
            mService = null;
        }

        @Override
        public void onServiceConnected(ComponentName name, IBinder service) {
            Log.d(TAG, "onServiceConnected()");

            //若是沒有宣告AIDL，使用Binder來溝通
            //service就是onBind回傳的IBinder
            //mService = ((MyService.MyBinder)service).getService();

            //若有宣告AIDL，不管local還是remote，bind service之後，使用IBinder來溝通
            mService = IMyAidl.Stub.asInterface(service);
        }
    };
}
```

遠程使用方式：必須把aidl的檔案給client
![2b450d0847fc55ff88768097d56d724a.png](:/6c89226abcff41f6a9ca5fc906ade583)

//RemoteActivity.java
//Example of bind a remote service
```
import com.example.service.IMyAidl;
import com.example.service.IMyAidlCallback;

public class RemoteActivity extends Activity {

    boolean mIsBound = false;
    private IMyAidl mMyService = null;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Intent startIntent = new Intent();
        startIntent.setAction("com.example.action.MyService");
        bindService(startIntent, mConnection, BIND_AUTO_CREATE);
        mIsBound = true;
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();

        if (mIsBound && mMyService != null) {
            try {
                mMyService.unregisterCallback(mCallback);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            unbindService(mConnection);
            mIsBound = false;
        }
    }

    public void remoteFunction() {
        if (mMyService != null) {
            try {
                mMyService.doAIDLSomething();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    private IMyAidlCallback mCallback = new IMyAidlCallback.Stub() {
        public void clientCallback(int actionid) {
            Log.d(TAG, "clientCallback() = " + actionid);
        }
    };

    private ServiceConnection mConnection = new ServiceConnection() {

        @Override
        public void onServiceDisconnected(ComponentName name) {
            Log.d(TAG, "onServiceDisconnected()");
            mMyService = null;
        }

        @Override
        public void onServiceConnected(ComponentName name, IBinder service) {
            Log.d(TAG, "onServiceConnected()");

            //service就是onBind回傳的IBinder
            mMyService = IMyAidl.Stub.asInterface(service);

            try {
                mMyService.registerCallback(mCallback);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    };
}
```
