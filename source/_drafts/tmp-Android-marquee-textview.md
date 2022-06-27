---
title: tmp_Android_marquee_textview
tags:
---
Android Marquee TextView
===

//in layout.xml
```xml
<com.example.marqueetextview.MarqueeTextView
    android:id="@+id/marqueeView"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:singleLine="true"/>
```

```java
//MarqueeTextView.java
package com.example.marqueetextview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.widget.TextView;

public class MarqueeTextView extends TextView {
    private static final String TAG = "MarqueeTextView";

    public static int SCROLL_LEFT = 0;
    public static int SCROLL_RIGHT = 1;

    private float textLength = 0f;      // Text Length
    private float viewWidth = 0f;       // TextView Width
    private float speed = 1.0f;         // 速度
    private float startX = 0.0f;        // 起點
    private float startY = 0.0f;        // 文字的縱座標
    private float runLength = 0.0f;     // 移動累計距離
    private float totalLength = 0.0f;   // 移動總距離
    private int direction = SCROLL_LEFT;// 移動方向

    private Paint paint = null;
    private String text = "";

    public MarqueeTextView(Context context) {
        super(context);
    }

    public MarqueeTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public MarqueeTextView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    public void setSpeed(float speed) {
        this.speed = speed;
    }

    public void setDierction(int direction) {
        this.direction = direction;
    }

    public void init() {
        paint = getPaint();
        text = getText().toString();
        textLength = paint.measureText(text);
        viewWidth = getWidth();
        totalLength = viewWidth + textLength;
        runLength = 0;
        
        if (direction == SCROLL_LEFT) {
            startX = viewWidth;
        } else {
            startX = -textLength;
        }

        startY = getTextSize() + getPaddingTop();
    }

    @Override
    public void onDraw(Canvas canvas) {
        if (viewWidth == 0) {
            super.onDraw(canvas);
            init();
        }

        if (textLength <= viewWidth ) {
            super.onDraw(canvas);
        } else {
            if (direction == SCROLL_LEFT) {
                canvas.drawText(text, startX - runLength, startY, paint);
            } else {
                canvas.drawText(text, startX + runLength, startY, paint);
            }
            runLength += speed;
            if (runLength > totalLength) {
                if (direction == SCROLL_LEFT) {
                    startX = viewWidth;
                } else {
                    startX = -textLength;
                }
                runLength = 0;
            }
            invalidate(); // 重畫TextView的內容
        }
    }
}
```

```java
//in MainActivity.java
MarqueeTextView marqueeView = (MarqueeTextView) findViewById(R.id.marqueeView);
marqueeView.setText(getResources().getString(R.string.test));
marqueeView.setTextSize(50);
marqueeView.setSpeed(5);
marqueeView.setDierction(MarqueeTextView.SCROLL_RIGHT);
```