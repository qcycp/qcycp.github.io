---
title: tmp_Android_html_format
abbrlink: 48516f2a
tags:
---
Html format in Android
===

```
String styledText = "<font color='red'>Text</font> Text";
TextView text = (TextView) findViewById(R.id.text);
text.setText(Html.fromHtml(styledText), TextView.BufferType.SPANNABLE);
```