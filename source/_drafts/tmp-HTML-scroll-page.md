---
title: tmp_HTML_scroll_page
abbrlink: 6710f2cb
tags:
---
scroll page to top when ifrmae is reloaded
===

```html
<html>
<head>
    <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>

    <script language="JavaScript">
        $(document).ready(function () {
            $('body iframe').load(function(){
                $(window).scrollTop(0);
            });
        });
    </script>
</head>

<body>
    <iframe src="test.html" width="100%" height="100%"></iframe>
</body>
</html>
```