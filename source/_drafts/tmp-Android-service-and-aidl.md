---
title: tmp_Android_service_and_aidl
tags:
---
Android Service and AIDL
===

//AndroidManifest.xml
```
<service android:name="com.example.service.MyService" />

<service android:name="com.example.service.MyAIDLService" >
    <intent-filter>
        <action android:name="com.example.action.MyAIDLService" />
    </intent-filter>
</service>
```

```
//MyService.java
import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Log;

public class MyService extends Service {

    public static final String TAG = "MyService";
    private MyBinder mBinder = new MyBinder();

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

    public class MyBinder extends Binder {
        public MyService getService() {
            return MyService.this;
        }
    }

    public void doSomething() {
        Log.d(TAG, "doSomething()");
    }
}
```

```
//MyAIDLService.java
import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.util.Log;

public class MyAIDLService extends Service {
    public static final String TAG = "MyAIDLService";

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

    final RemoteCallbackList mCallbacks =
            new RemoteCallbackList();

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
                    // The RemoteCallbackList will take care of removing the dead object for us.
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

```
// IMyAidl.aidl
import com.example.service.IMyAidlCallback;

interface IMyAidl {
    void doAIDLSomething();
    void registerCallback(IMyAidlCallback cb);
    void unregisterCallback(IMyAidlCallback cb);
}
```

```
// IMyAidlCallback.aidl
interface IMyAidlCallback {
    void clientCallback(int actionId);
}
```

本地呼叫Service，也可以使用包含AIDL的Service

```
//LocalActivity.java
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
    private MyService mService = null;
    boolean mIsBound = false;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_local);

        Button StartServiceBtn = (Button) findViewById(R.id.StartService);
        Button StopServiceBtn = (Button) findViewById(R.id.StopService);
        Button BindServiceBtn = (Button) findViewById(R.id.BindService);
        Button UnbindServiceBtn = (Button) findViewById(R.id.UnbindService);
        Button ServiceOpBtn = (Button) findViewById(R.id.ServiceOperation);
        Button RemoteActivityBtn = (Button) findViewById(R.id.RemoteActivity);
        StartServiceBtn.setOnClickListener(this);
        StopServiceBtn.setOnClickListener(this);
        BindServiceBtn.setOnClickListener(this);
        UnbindServiceBtn.setOnClickListener(this);
        ServiceOpBtn.setOnClickListener(this);
        RemoteActivityBtn.setOnClickListener(this);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();

        if (mIsBound) {
            unbindService(mConnection);
            mService = null;
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
                    mService = null;
                    mIsBound = false;
                }
                break;
            case R.id.ServiceOperation:
                if (mService != null) {
                    mService.doSomething();
                }
                break;
            case R.id.RemoteActivity:
                Intent intent = new Intent();
                intent.setClass(LocalActivity.this, RemoteActivity.class);
                startActivity(intent);
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

            //service就是onBind回傳的IBinder
            mService = ((MyService.MyBinder)service).getService();
        }
    };
}
```

遠程使用方式：必須把aidl的檔案給client
![a08c40ba11ce345cde44e7831e21e41c.png](:/8dff3633d83f407a923c80152d267474)

```
//RemoteActivity.java
import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class RemoteActivity extends Activity implements OnClickListener {

    private static final String TAG = "MainActivity";
    private IMyAidl mService = null;
    boolean mIsBound = false;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_remote);

        Button StartAIDLServiceBtn = (Button) findViewById(R.id.StartAIDLService);
        Button StopAIDLServiceBtn = (Button) findViewById(R.id.StopAIDLService);
        Button BindAIDLServiceBtn = (Button) findViewById(R.id.BindAIDLService);
        Button UnbindAIDLServiceBtn = (Button) findViewById(R.id.UnbindAIDLService);
        Button AIDLServiceOpBtn = (Button) findViewById(R.id.AIDLServiceOperation);
        Button LocalActivityBtn = (Button) findViewById(R.id.LocalActivity);
        StartAIDLServiceBtn.setOnClickListener(this);
        StopAIDLServiceBtn.setOnClickListener(this);
        BindAIDLServiceBtn.setOnClickListener(this);
        UnbindAIDLServiceBtn.setOnClickListener(this);
        AIDLServiceOpBtn.setOnClickListener(this);
        LocalActivityBtn.setOnClickListener(this);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();

        if (mService != null) {
            try {
                mService.unregisterCallback(mCallback);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            unbindService(mConnection);
            mService = null;
            mIsBound = false;
        }
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.StartAIDLService:
                Intent startAIDLIntent = new Intent(this, MyAIDLService.class);
                startService(startAIDLIntent);
                break;
            case R.id.StopAIDLService:
                Intent stopAIDLIntent = new Intent(this, MyAIDLService.class);
                stopService(stopAIDLIntent);
                break;
            case R.id.BindAIDLService:
                // 啟動一個service，Activity可以跟service互相溝通
                Intent bindAIDLIntent = new Intent();
                bindAIDLIntent.setAction("com.example.action.MyAIDLService");
                bindService(bindAIDLIntent, mConnection, BIND_AUTO_CREATE);
                mIsBound = true;
                break;
            case R.id.UnbindAIDLService:
                //若沒有綁定service，unbind會出錯
                if (mService != null) {
                    try {
                        mService.unregisterCallback(mCallback);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                    unbindService(mConnection);
                    mService = null;
                    mIsBound = false;
                }
                break;
            case R.id.AIDLServiceOperation:
                if (mService != null) {
                    try {
                        mService.doAIDLSomething();
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                }
                break;
            case R.id.LocalActivity:
                Intent intent = new Intent();
                intent.setClass(RemoteActivity.this, LocalActivity.class);
                startActivity(intent);
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

            //service就是onBind回傳的IBinder
            mService = IMyAidl.Stub.asInterface(service);

            try {
                mService.registerCallback(mCallback);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    };

    private IMyAidlCallback mCallback = new IMyAidlCallback.Stub() {
        public void clientCallback(int actionId) {
            Log.d(TAG, "actionId: " + actionId);
        }
    };
}
```