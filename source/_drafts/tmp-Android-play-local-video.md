---
title: tmp_Android_play_local_video
abbrlink: '5e287267'
tags:
---
播放local media
===
將video.mp4放在/res/raw/下
```java
VideoView view = (VideoView)findViewById(R.id.videoView);
String path = "android.resource://" + getPackageName() + "/" + R.raw.video;
view.setVideoURI(Uri.parse(path));
view.start();
```