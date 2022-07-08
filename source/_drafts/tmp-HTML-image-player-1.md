---
title: tmp_HTML_image_player
abbrlink: 6056a5c1
tags:
---
圖片輪播特效 - Skitter
===
https://skitter-slider.net/

[skitter.styles.min.css](:/a7ffc4ccfb21419796bce549ce115801)
[jquery.easing.1.3.js](:/b1c9f3e9cc86418b8352cbba722d7180)
[jquery.skitter.js](:/3598a18eba5540e29282d611a54d69aa)

Include
```
<link href="css/skitter.styles.min.css" type="text/css" media="all" rel="stylesheet" />
<script type="text/javascript" language="javascript" src="js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" language="javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" language="javascript" src="js/jquery.skitter.js"></script>
```

Initialization
```
<script type="text/javascript" language="javascript">
    $(document).ready(function() {
        $('.box_skitter_body').css({width: 1080, height: 850}).skitter({
            animation: "random",
            dots: false, 
            auto_play: true,
            numbers: false,
            progressbar: false,
            interval: 3000,
            loop: false,
        });
    });
</script>
```

Usage
```
<div class="box_skitter box_skitter_body">
    <ul>
        <li><img src="images/01.jpg"/></li>
        <li><img src="images/02.jpg"/></li>
        <li><img src="images/03.jpg"/></li>
        <li><img src="images/04.jpg"/></li>
        <li><img src="images/05.jpg"/></li>
        <li><img src="images/06.jpg"/></li>
        <li><img src="images/07.jpg"/></li>
        <li><img src="images/08.jpg"/></li>
        <li><img src="images/09.jpg"/></li>
        <li><img src="images/10.jpg"/></li>
        <li><img src="images/11.jpg"/></li>
        <li><img src="images/12.jpg"/></li>
        <li><img src="images/13.jpg"/></li>
        <li><img src="images/14.jpg"/></li>
        <li><img src="images/15.jpg"/></li>
    </ul>
</div>
```

Transition type
```
'cube', 
'cubeRandom', 
'block', 
'cubeStop', 
'cubeStopRandom', 
'cubeHide', 
'cubeSize', 
'cubeSizeToRight',
'horizontal', 
'slideLeft', 
'showBars', 
'showBarsRandom', 
'tube',
'tube1',
'tube3',
'tube7',
'fade',
'fadeFour',
'paralell',
'blind',
'blindHeight',
'blindWidth',
'directionTop',
'directionBottom',
'directionRight',
'directionLeft',
'toTop',
'toBottom',
'toRight',
'toLeft',
'cubeSpread',
'cubeSpread3x3',
'glassCube',
'glassBlock',
'circles',
'circlesInside',
'circlesRotate',
'cubeShow',
'upBars', 
'downBars', 
'hideBars', 
'swapBars', 
'swapBarsBack', 
'swapBlocks',
'cut'
```
