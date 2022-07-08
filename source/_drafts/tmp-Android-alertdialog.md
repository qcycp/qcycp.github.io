---
title: tmp_Android_alertdialog
abbrlink: 83edd669
tags:
---
Custom AlertDialog
===

```java
LayoutInflater inflater = getLayoutInflater();
View view = inflater.inflate(R.layout.layout_progress, null);
AnimatedGifImageView animatedGifImageView = (AnimatedGifImageView) view.findViewById(R.id.animatedGifImageView);
animatedGifImageView.setAnimatedGif(R.drawable.loading, AnimatedGifImageView.TYPE.FIT_CENTER);

mAlertDialog = new AlertDialog.Builder(PaintActivity.this, R.style.CustomDialog)
        .setView(view)
        .show();
```