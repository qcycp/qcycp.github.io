---
title: tmp_HTML_click_event_on_a_photo
tags:
---
click event on a photo
===
https://codepen.io/anon/pen/RWBLJe

```xml
// html
<div style="background:black"> 
<div class="block-screenshot" id="screenshot-selector" style="width:100%;margin:auto;">
<div id="rc-point" style="cursor:crosshair;z-index:1000;position: absolute;width: 20px;height: 20px;color: black;border: 2px solid red;">&nbsp;</div>
<img id="display_screenshot" src="http://i.ytimg.com/vi/b78FtjMNObo/maxresdefault.jpg" style="width:100%;cursor:crosshair;"/> 
</div>
</div>

// javascript
$('#screenshot-selector').click(function(e) {
    var offset = $(this).offset();
    console.log("(x, y) = (" + $(this).width() + ", " + $(this).height() + ")");
    
    console.log("e.clientX = " + e.clientX);
    console.log("offset.left = " + offset.left);
    console.log("e.clientY = " + e.clientY);
    console.log("offset.top = " + offset.top);
    var scrollTop = document.body.scrollTop;
    if (scrollTop == 0){
        // for firefox
        scrollTop = $(document).scrollTop();
    }
    
    console.log("document.body.scrollTop = " + scrollTop);
    $('#x_coordinate').val(parseInt(e.clientX - offset.left));
    console.log("x = " + parseInt(e.clientX - offset.left));
    $('#y_coordinate').val(parseInt(e.clientY - offset.top +scrollTop));
    console.log("y = " + parseInt(e.clientY - offset.top +scrollTop));

    $('#rc-point').css('left',(parseInt(e.clientX - offset.left) - 5)+'px');
    $('#rc-point').css('top',(parseInt(e.clientY - offset.top) - 10 + scrollTop)+'px');

    var xp = Math.round((parseInt(e.clientX - offset.left) / $(this).width()) * 1000000) / 10000;
    $('#x_percent').val(xp);
    var yp = Math.round(((parseInt(e.clientY - offset.top)+scrollTop)/ $(this).height()) * 1000000) / 10000;
    $('#y_percent').val(yp);
    console.log("xp = " + xp);
    console.log("yp = " + yp);
});
```