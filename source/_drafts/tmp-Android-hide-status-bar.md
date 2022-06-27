---
title: tmp_Android_hide_status_bar
tags:
---
Hide the Status Bar
===
https://developer.android.com/training/system-ui/status.html#41

Hide the Status Bar on Android 4.0 and Lower
Method 1
```
<application
    ...
    android:theme="@android:style/Theme.Holo.NoActionBar.Fullscreen" >
    android:theme="@android:style/Theme.Light.Holo.NoActionBar.Fullscreen" >
    ...
</application>
```

Method 2
```
public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        // If the Android version is lower than Jellybean, use this call to hide
        // the status bar.
        if (Build.VERSION.SDK_INT < 16) {
            getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
                    WindowManager.LayoutParams.FLAG_FULLSCREEN);
        }
        setContentView(R.layout.activity_main);
    }
    ...
}
```

Hide the Status Bar on Android 4.1 and Higher
```
import android.app.ActionBar;

public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        View decorView = getWindow().getDecorView();
        // Hide the status bar.
        int uiOptions = View.SYSTEM_UI_FLAG_FULLSCREEN;
        decorView.setSystemUiVisibility(uiOptions);
        // Remember that you should never show the action bar if the
        // status bar is hidden, so hide that too if necessary.
        ActionBar actionBar = getActionBar();
        actionBar.hide();
    }
    ...
}
```