---
title: tmp_Android_set_ActionBar_background_color
abbrlink: 885d2d2a
tags:
---
Set background color of ActionBar
===
```java
public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        android.support.v7.app.ActionBar actionBar = getSupportActionBar();
        if (actionBar != null) {
            actionBar.setBackgroundDrawable(new ColorDrawable(0x77000000));
        }
    }
}
```