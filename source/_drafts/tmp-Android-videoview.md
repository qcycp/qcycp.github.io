---
title: tmp_Android_videoview
abbrlink: 63f6e4c3
tags:
---
Android VideoView
===
//layout
```
<VideoView
    android:id="@+id/video"
    android:layout_width="fill_parent"
    android:layout_height="wrap_content"/>
```

```
VideoView videoView = (VideoView)findViewById(R.id.video);
String src = "http://VideoSource";
videoView.setVideoURI(Uri.parse(src));
videoView.setMediaController(new MediaController(this));
videoView.requestFocus();
videoView.start();
```