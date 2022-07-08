---
title: tmp_Android_keep_screen_on
abbrlink: 3b82a58d
tags:
---
Keep screen on
===
https://developer.android.com/training/scheduling/wakelock.html

```
import android.view.WindowManager;

public class MainActivity extends Activity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
    }
}
```