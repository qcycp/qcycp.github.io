---
title: RadioButton OnClickListener
date: 2018-01-01 00:00:00
abbrlink: caba951c
categories: Android
tags:
- Android
---
```java
final RadioGroup radioGroup = layout.findViewById(R.id.radio_group);
final RadioButton channel1 = radioGroup.findViewById(R.id.channel1);
channel1.setOnClickListener(new View.OnClickListener() {
    public void onClick(View v) {
    }
});
```