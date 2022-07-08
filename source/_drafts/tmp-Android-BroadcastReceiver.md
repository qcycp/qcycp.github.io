---
title: tmp_Android_BroadcastReceiver
abbrlink: '31836267'
tags:
---
BroadcasrtReceiver
===
動態註冊

```java
import android.content.BroadcastReceiver;

    private BroadcastReceiver mBroadcastReceiver = null;

    @Override  
    protected void onCreate(Bundle savedInstanceState) {  
        super.onCreate(savedInstanceState);  
        setContentView(R.layout.activity_facetracker);

        registerReceiver();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        Log.d(TAG, "onDestroy()");

        if (mBroadcastReceiver != null) {
            unregisterReceiver(mBroadcastReceiver);
            mBroadcastReceiver = null;
        }
    }
    
    private void registerReceiver() {
        if (mBroadcastReceiver == null) {
            mBroadcastReceiver = new ChangeSourceReceiver();
            IntentFilter filter = new IntentFilter();
            filter.addAction(SmartCMSApplication.INTENT_SCALARSERVICE_POWERSAVING_MODE);
            filter.addAction(SmartCMSApplication.INTENT_SCALARSERVICE_CHANGE_SOURCE);
            registerReceiver(mBroadcastReceiver, filter);
        }
    }

    class ChangeSourceReceiver extends BroadcastReceiver {
        @Override
        public void onReceive(Context context, Intent intent) {
            Log.d(TAG, "ChangeSourceReceiver: " + intent);
            final String action = intent.getAction();
            if (action.equals(SmartCMSApplication.INTENT_SCALARSERVICE_CHANGE_SOURCE)) {
                Bundle extras = intent.getExtras();
                if (extras != null) {
                    String source = extras.getString("Source");
                    Log.d(TAG, "source : " + source);
                    if (source.equals("SmartCMS")) {
                        reloadActivity();
                    } else {
                        finish();
                    }
                }
            } else if (action.equals(SmartCMSApplication.INTENT_SCALARSERVICE_POWERSAVING_MODE)) {
                finish();
            }
        }
    }
```