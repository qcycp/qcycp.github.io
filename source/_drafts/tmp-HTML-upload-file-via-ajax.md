---
title: tmp_HTML_upload_file_via_ajax
tags:
---
upload file via ajax by using form data
===
https://stackoverflow.com/questions/2870371/why-is-jquerys-ajax-method-not-sending-my-session-cookie

```js
<head>
<script type="text/javascript" language="javascript">
function submitForm() {
    var fd = new FormData(document.getElementById("form"));
    //fd.append("param", "param");
    
    $.ajax({
        url: "http://ip:port/file/upload/",
        type: "POST",
        data: fd,
        enctype: 'multipart/form-data',
        processData: false,  // tell jQuery not to process the data
        contentType: false ,  // tell jQuery not to set contentType

        // send cookie to server when using ajax under cross domain
        // Access-Control-Allow-Credentials should be set to true on the server
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {
        if (data.status == 'success') {
            console.log(Execute Successfully!);
        } else {
            console.log(Execute Failed!);
        }
    });
    return false;
}
</script>
</head>

<body>
<form method="post" id="form" onsubmit="return submitForm();">
    <!--name should be set according to server defined-->
    <input type="file" name="file" required />
    <!--<input type="text" name="param" value="param" />-->
    <input type="submit" value="Upload" />
</form>
</body>
Request Payload
------WebKitFormBoundary5XBagKbFt6bp80Tk
Content-Disposition: form-data; name="form"; filename="test.txt"
Content-Type: application/octet-stream


------WebKitFormBoundary5XBagKbFt6bp80Tk
Content-Disposition: form-data; name="param"

param
------WebKitFormBoundary5XBagKbFt6bp80Tk--
```