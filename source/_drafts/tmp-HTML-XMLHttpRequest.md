---
title: tmp_HTML_XMLHttpRequest
tags:
---
XMLHttpRequest: post send json object
===

```html
<script language="javascript" type="text/javascript">
function login() {
    var xhr = new XMLHttpRequest();
    xhr.open("POST", "http://192.168.11.16:7777/user/signin", true);
    xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhr.onload = function() {
        var response = JSON.parse(xhr.response);
        if(response != null) {
            //do something...
        }
    }
    
    xhr.send(JSON.stringify({appKey:"dacac5594215aef2031ba31f3402d580", data:{name: "nick", password: "nick"}}));
};
</script>
```