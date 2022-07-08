---
title: tmp_HTML_video_tag
abbrlink: 5fbcde53
tags:
---
HTML - video tag
===
https://www.w3schools.com/tags/tag_video.asp

```
<video id="video" autoplay loop controls muted>
    <source src="video.mp4" type="video/mp4" />
</video>
autoplay: Specifies that the video will start playing as soon as it is ready.
loop: A video that will start over again, every time it is finished.
controls: Specifies that video controls should be displayed (such as a play/pause button etc).
muted: Specifies that the audio output of the video should be muted.

video onplay and onended
<script type="text/javascript" language="javascript">
    function on_video_played(){
        //do something when video start to play
    }
    function on_video_ended(){
        //do something when video play finished
    }
</script>
```

Usage
```
<video onplay="on_video_played();" onended="on_video_ended();" id="video" autoplay muted width="460px" height="820px">
    <source src="video.mp4" type="video/mp4" />
</video>
```