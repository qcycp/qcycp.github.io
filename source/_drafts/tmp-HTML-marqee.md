---
title: tmp_HTML_marqee
abbrlink: 6da6acab
tags:
---
跑馬燈 - jquery.marquee
===
https://github.com/aamirafridi/jQuery.Marquee
https://www.givainc.com/labs/marquee_jquery_plugin.cfm

[jquery.marquee.min.css](:/8e821f924a81474296460dd302799c5e)
[jquery.marquee.css](:/6f9374abda124747838cb1b944701dc1)
[jquery.marquee.min.js](:/27fd053010ae4082850c54daa437054c)
[jquery.marquee.js](:/1711d2b1b65542f3a731313efde33cdf)

Include
```
<link type="text/css" href="css/jquery.marquee.css" rel="stylesheet" media="all" />
<script type="text/javascript" language="javascript" src="js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" language="javascript" src="js/jquery.marquee.js"></script>
```

Initialization
```
<script type="text/javascript">
    $(document).ready(function() {
        $('#marquee').marquee({
            yScroll: "top",              // the position of the marquee initially scroll (can be either "top" or "bottom")
            showSpeed: 850,              // the speed of to animate the initial dropdown of the messages
            scrollSpeed: 5,             // the speed of the scrolling (keep number low)
            pauseSpeed: 1000,            // the time to wait before showing the next message or scrolling current message
            pauseOnHover: true,          // determine if we should pause on mouse hover
            loop: -1,                    // determine how many times to loop through the marquees (#'s < 0 = infinite)
            fxEasingShow: "swing",       // the animition easing to use when showing a new marquee
            fxEasingScroll: "linear",    // the animition easing to use when showing a new marquee
            
            // define the class statements
            cssShowing: "marquee-showing",
            
            // event handlers
            init: null,                // callback that occurs when a marquee is initialized
            beforeshow: null,          // callback that occurs before message starts scrolling on screen
            show: null,                // callback that occurs when a new marquee message is displayed
            aftershow: null,           // callback that occurs after the message has scrolled
        });
    });
</script>
```

Usage
```
<ul id="marquee" class="marquee">
    <li>Text1</li>
    <li>Text2</li>
</ul>
```