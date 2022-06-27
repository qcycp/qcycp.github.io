---
title: tmp_Android_marquee
tags:
---
Android Marquee
===
http://blog.tonycube.com/2011/08/textview-marquee.html

//in activity_main.xml
```
<TextView
    android:id="@+id/MarqueeText"
    android:layout_width="300dp"
    android:layout_height="wrap_content"
    android:text="@string/text"
    android:textSize="50sp"
    android:textColor="#FF0000"
    
    android:ellipsize="marquee"
    android:marqueeRepeatLimit="marquee_forever"
    android:focusable="true"
    android:focusableInTouchMode="true"
    android:singleLine="true"/>
```

```
//in MainActivity.java
TextView text = (TextView) findViewById(R.id.MarqueeText);
text.setSelected(true);
```

屬性說明
android:marqueeRepeatLimit="-1"
跑馬燈的循環次數，-1表示無限循環。
android:singleLine="true"
指定TextView以單行顯示。
android:focusableInTouchMode="true"
指定在觸控模式下取得焦點，連同下一個focusable都必須設為true，跑馬燈才會動。
android:focusable="true"
讓TextView可以取得焦點。
android:ellipsize="marquee"
過長文字的省略方式，共有5種。
none：不作用。形同end。
start：省略開頭文字，注重顯示尾端文字。
middle：省略中間文字，前後文字中間以...呈現。
end：省略尾端文字。
marquee：跑馬燈模式。