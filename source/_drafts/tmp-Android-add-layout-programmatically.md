---
title: tmp_Android_add_layout_programmatically
tags:
---
Add layout(view) programmatically
===
```java
@Override
protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    Log.d(TAG, "onCreate");

    RelativeLayout relativeLayout = new RelativeLayout(this);
    setContentView(relativeLayout);
 
    SignatureView signature = new SignatureView(this);
 
    AnimatedGifImageView animatedGifImageView = new AnimatedGifImageView(this);
    animatedGifImageView.setAnimatedGif(R.drawable.loading, AnimatedGifImageView.TYPE.FIT_CENTER);
    DisplayMetrics metrics = getResources().getDisplayMetrics();
    RelativeLayout.LayoutParams params = new RelativeLayout.LayoutParams((int) (100*metrics.density), (int) (100*metrics.density));
    params.addRule(RelativeLayout.CENTER_IN_PARENT);

    relativeLayout.addView(signature);
    relativeLayout.addView(animatedGifImageView, params);
}
```