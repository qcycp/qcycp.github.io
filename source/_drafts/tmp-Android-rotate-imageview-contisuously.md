---
title: tmp_Android_rotate_imageview_contisuously
abbrlink: b70ffca7
tags:
---
rotate an ImageView continuously
==
```java
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;

private void initView() {
    ImageView logo = (ImageView) findViewById(R.id.logo);
    RotateAnimation rotate = new RotateAnimation(
            0, 360,
            Animation.RELATIVE_TO_SELF, 0.5f,
            Animation.RELATIVE_TO_SELF, 0.5f
    );

    rotate.setDuration(800);
    rotate.setRepeatMode(Animation.RESTART);
    rotate.setRepeatCount(Animation.INFINITE);
    rotate.setInterpolator(new LinearInterpolator());
    logo.startAnimation(rotate);
}
```