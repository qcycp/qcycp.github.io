---
title: tmp_HTML_javascript_get_html_form_data
tags:
---
javascript: get html form data
===

```html
<html>
<head>
<script language="javascript" type="text/javascript">
    function login(name, password) {
        var object = {};
        var data = {};
        
        data.name = document.forms.namedItem("signin").name.value;
        data.password = document.forms.namedItem("signin").password.value;
        object.appKey = "dacac5594215aef2031ba31f3402d580";
        object.data = data;
        var params = JSON.stringify(object);
        
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "http://192.168.11.16:7777/user/signin", true);
        xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        xhr.onload = function() {
            var response = JSON.parse(xhr.response);
            if(response != null) {
                //do something...
            }
        }
        
        xhr.send(params);
    };
</script>
</head>

<body>
    <form id="signin">
        <input type="text" name="name">
        <input type="password"name="password">
    </form>
</body>
</html>
```