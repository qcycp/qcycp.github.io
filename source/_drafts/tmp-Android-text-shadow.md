---
title: tmp_Android_text_shadow
abbrlink: c6140ea2
tags:
---
Draw text with shadow on canvas
===
http://android-er.blogspot.com/2012/09/draw-text-with-shadow-on-canvas.html

```java
@Override
protected void onDraw(Canvas canvas) {

    canvas.drawColor(Color.GRAY);

    Paint shadowPaint = new Paint();
    shadowPaint.setAntiAlias(true);
    shadowPaint.setColor(Color.WHITE);
    shadowPaint.setTextSize(45.0f);
    shadowPaint.setStrokeWidth(2.0f);
    shadowPaint.setStyle(Paint.Style.STROKE);
    shadowPaint.setShadowLayer(5.0f, 10.0f, 10.0f, Color.BLACK);
    
    canvas.drawText("Test123", 50, 200, shadowPaint);
};
```