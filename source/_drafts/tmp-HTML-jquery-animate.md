---
title: tmp_HTML_jquery_animate
abbrlink: 79dbdf4f
tags:
---
jQuery - animate()
===
http://www.w3school.com.cn/tiy/t.asp?f=jquery_effect_animate

```
<html>
<head>
<script type="text/javascript" src="jquery-1.11.2.min.js"></script>
<script type="text/javascript">
$(document).ready(function()
  {
  $(".btn1").click(function(){
    $("#box").animate({height:"300px"});
  });
  $(".btn2").click(function(){
    $("#box").animate({height:"100px"});
  });
});
</script>
</head>
<body>
<div id="box" style="background:#98bf21;height:100px;width:100px;margin:6px;">
</div>
<button class="btn1">Animate</button>
<button class="btn2">Reset</button>
</body>
</html>
```