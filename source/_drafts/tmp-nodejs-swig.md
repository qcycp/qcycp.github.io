---
title: tmp_nodejs_swig
abbrlink: 78eb077b
tags:
---
swig使用方式
===

將首頁內容設定成index.html，並代入參數
//Node.js
```
var swig = require('swig');

var template = swig.compileFile(__dirname + '/templates/index.html');
var output = template({
     title: 'Template03',
     texts: ['啾~啾~啾~', '*~啾咪~*', 'ya~ya~ya~'],
     images: ['01.jpg', '02.jpg', '03.jpg']
});

app.get('/', function (req, res) {
     res.end(output);
});
```

//index.html
```
<html>
<script type="text/javascript">
     var jsImg = [];
     for(var i=0; i<{{images.length}}; i++) {
          {% for image in images %}
        jsImg.push({{image}});
        {% endfor %}
     }
     var jsTxt = [];
     for(var i=0; i<{{texts.length}}; i++) {
          {% for text in texts %}
        jsTxt.push({{text}});
        {% endfor %}
     }

    var jsImg_len = jsImg.length;
    var i=0;
    setInterval("sequentialImg()", 3000);//設定每三秒執行一次sequentialImg()
 
    function sequentialImg(){
        document.getElementById("image").innerHTML = "<img src='"+jsImg[i]+"' width=600 height=800>";
          document.getElementById("text").innerHTML = "<font size='10' color='red'>"+jsTxt[i]+"</font>";
        i++;
        if(i>=jsImg_len)
               i=0;
    }
</script>
```

```
<head>
    <meta charset="utf-8" />
    <title> {{ title }}</title>
</head>

<body onload="sequentialImg();">
     <center>
     <div id="image"></div>
     <div id="text"></div>
     </center>
</body>
</html>
```