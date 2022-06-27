---
title: tmp_Android_thread
tags:
---
Android Thread
===

簡易版
```
new Thread(new Runnable() {
    @Override
    public void run() {
        //do something...
    }
}).start();
```

完整版
```
private boolean mIsRunning = true;
private Thread mThread = null;

public void startThread() {
    if (mThread == null) {
        mThread = new Thread(new Runnable() {
            @Override
            public void run() {
                while (mIsRunning) {
                    try {
                        //do something...
                        //Thread.sleep(5000);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        });
        mThread.start();
    }
}

public void stopThread() {
    mIsRunning = false;

    if (mThread != null) {
        mThread.interrupt();
        mThread = null;
    }
}

@Override
public void onCreate() {
    super.onCreate();

    startThread();
}

@Override
public void onDestroy() {
    super.onDestroy();

    stopThread();
}
```