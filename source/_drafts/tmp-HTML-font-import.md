---
title: tmp_HTML_font_import
tags:
---
引用字型
===

[Action_Man.ttf](:/b2d9970b742742838e223f123529a4be)
[SetoFont.7z](:/f9fcc01e7e674321bc74458f33ae4324)

![9c602a877e6d0ab1b2ad9a7387b9e131.png](:/35aa6ae6bd6241d1a626248a2ca8693d)
//in css file
```
@font-face {
    font-family: Action_Man;
    src: local('Action_Man'), url('font/Action_Man.ttf');
}

/*瀨戶字型*/
@font-face {
    font-family: SetoFont;
    src: url('font/SetoFont.ttf');
}
```

Usage
```
.MyFont{
    font-family: Action_Man, SetoFont;
    font-size: 30px;
}
```