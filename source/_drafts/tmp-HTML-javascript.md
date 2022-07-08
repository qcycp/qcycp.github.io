---
title: tmp_HTML_javascript
abbrlink: 5f22a96
tags:
---
開啟網頁後 執行javascript的方法
===
法一
```
<head>
    <script type="text/javascript" language="javascript">
        function initialization(){
            //do something when loading the web page
        }
    </script>
</head>
<body onload="initialization();">
    ...
</body>
```

法二
```
<head>
    <script type="text/javascript" language="javascript">
        function initialization(){
            //do something when loading the web page
        }

        window.onload = function(){
            initialization();
        }
    </script>
</head>
<body>
    ...
</body>
```