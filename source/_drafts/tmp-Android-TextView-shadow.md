---
title: tmp_Android_TextView_shadow
abbrlink: c40e0eff
tags:
---
TextView Shadow
===

1. in the xml file
```
<TextView 
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:text="@string/hello"
    android:shadowColor="#FFFFFF"
    android:shadowRadius="5"
    android:shadowDx="10"
    android:shadowDy="10" />
```
2. in source code
```
//public void setShadowLayer(float radius, float dx, float dy, int color)

TextView text = (TextView) findViewById(R.id.text);
text.setShadowLayer(5, 10, 10, Color.parseColor("#FFFFFF"));
```