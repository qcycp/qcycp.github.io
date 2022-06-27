---
title: tmp_HTML_jquery_upload_file
tags:
---
Jquery upload file via form and webapi
===

```xml
// in xxx.html
<form method="post" id="form" onsubmit="return submitForm();">
    <input type="file" name="file" required />
    <input type="submit" value="Upload" />
</form>

// in xxx.js
function submitForm() {
    var fd = new FormData(document.getElementById("form"));
    fd.append("token", "secret");
    
    $.ajax({
        url: server + "/file/upload",
        type: "POST",
        data: fd,
        enctype: 'multipart/form-data',
        processData: false,   // tell jQuery not to process the data
        contentType: false ,  // tell jQuery not to set contentType
        xhrFields: {
            withCredentials: true
        }
    }).done(function(data) {
        console.log(data);
    });
    return false;
}
```