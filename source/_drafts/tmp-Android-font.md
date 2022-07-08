---
title: tmp_Android_font
abbrlink: fd67a264
tags:
---
Android Font
===

1. 將font檔案放在 //app/src/main/assets/fonts

2. 
```
TextView text = (TextView) findViewById(R.id.text);
text.setTypeface(Typeface.createFromAsset(getAssets(), "fonts/MyFont.ttf"));
```