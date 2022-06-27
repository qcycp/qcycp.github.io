---
title: tmp_HTML_redirect_after_ajax_operation
tags:
---
redirect after ajax GET/POST operation
===

```js
//in Nodejs
app.get('/test', function (req, res) {
 res.send({redirect: '/home'});
});
```

```html
<!doctype html>
<html>
<head>
    <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>

    <script language="javascript" type="text/javascript">
        $(document).ready(function () {
            $("#test").click(function(){
                $.ajax({
                    url: "http://192.168.21.84:1234/test",
                    type: 'GET',
                    timeout: 5000,
                    success: function (response) {
                        console.log('success');
                        window.location = response.redirect;
                    },
                    error: function () {
                        console.log('fail');
                    }
                });
            });
        });
</script>
</head>
<body>
    <button id="test">Test</button>
</body>
</html>
```