---
title: tmp_HTML_fullscreen_background
abbrlink: 27302a03
tags:
---
Fullscreen background by Progressive CSS3 Way
===
https://css-tricks.com/perfect-full-page-background-image/

```
html { 
    background: url(images/bg.jpg) no-repeat center center fixed; 
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}
```

```
body {
    margin:0;
    padding:0;
    background: #000 url(bg.jpg) center center fixed no-repeat;
    -moz-background-size: cover;
    background-size: cover;
}
```