---
title: tmp_HTML_image_player
abbrlink: 6056a5c1
tags:
---
圖片輪播特效 - awShowcase
===
http://www.awkwardgroup.com/sandbox/awkward-showcase-a-jquery-plugin/

[jquery.aw-showcase.js](:/9468e3f193b74f3d859b88f08cccaad8)

Include
```
<script type="text/javascript" language="javascript" src="js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js/jquery.aw-showcase.js"></script>
```

Initialization
```
<script type="text/javascript" language="javascript">
    $(document).ready(function() {
        $("#menu").awShowcase({
            content_width:          770,
            content_height:         1060,
            fit_to_parent:          false,
            auto:                   true,
            interval:               30000,
            continuous:             true,
            loading:                true,
            tooltip_width:          200,
            tooltip_icon_width:     32,
            tooltip_icon_height:    32,
            tooltip_offsetx:        18,
            tooltip_offsety:        0,
            arrows:                 true,
            buttons:                false,
            btn_numbers:            false,
            keybord_keys:           true,
            mousetrace:             false, /* Trace x and y coordinates for the mouse */
            pauseonover:            true,
            stoponclick:            false,
            transition:             'hslide', /* hslide/vslide/fade */
            transition_delay:       0,
            transition_speed:       1000,
            show_caption:           'onload', /* onload/onhover/show */
            thumbnails:             false,
            thumbnails_position:    'outside-last', /* outside-last/outside-first/inside-last/inside-first */
            thumbnails_direction:   'vertical', /* vertical/horizontal */
            thumbnails_slidex:      1, /* 0 = auto / 1 = slide one thumbnail / 2 = slide two thumbnails / etc. */
            dynamic_height:         false, /* For dynamic height to work in webkit you need to set the width and height of images in 
                                              the source. Usually works to only set the dimension of the first slide in the showcase. */
            speed_change:           true, /* Set to true to prevent users from swithing more then one slide at once. */
            viewline:               false, /* If set to true content_width, thumbnails, transition and dynamic_height will be disabled. 
                                              As for dynamic height you need to set the width and height of images in the source. */
            custom_function:        null /* Define a custom function that runs on content change */
        });
    });
</script>
```

Usage
```
<div id="menu" class="menu">
    <div class="showcase-slide">
        <div class="showcase-content">
            <img src="images/menu01.png" />
        </div>
    </div>
    <div class="showcase-slide">
        <div class="showcase-content">
            <img src="images/menu02.jpg" />
        </div>
    </div>
    <div class="showcase-slide">
        <div class="showcase-content">
            <img src="images/menu03.jpg" />
        </div>
    </div>
</div>
```
