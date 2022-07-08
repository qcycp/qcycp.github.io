---
title: tmp_Android_textview_outline
abbrlink: 201d3914
tags:
---
How to outline a TextView?
===
https://stackoverflow.com/questions/15091790/how-to-outline-a-textview

![6566fd27744ebc98777f9ba25aca3c9f.png](:/f80c4cfd52614545a11220dbc1bd31f3)


1) create your textview object extends TextView
```
public class MyTextView extends TextView {
   ...
}
```

2) Do this on its draw method
```
@Override
public void draw(Canvas canvas) {
    for (int i = 0; i < 5; i++) {
        super.draw(canvas);
    }
}
```

3) set textview's xml side as below 
```
<com.example.MyTextView
    android:id="@+id/text"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:shadowColor="@color/white"
    android:shadowRadius="5" />
```
4) or set textview as below 
```
MyTextView text = (MyTextView) findViewById(R.id.text);
text.setShadowLayer(5, 0, 0, Color.parseColor("#000000"));//radius, dx, dy, color
```