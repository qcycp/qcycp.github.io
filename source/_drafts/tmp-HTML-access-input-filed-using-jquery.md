---
title: tmp_HTML_access_input_filed_using_jquery
abbrlink: 31cfa748
tags:
---
Access input field using jquery
===

Get the value of input field
```js

// method 1
<input type="text" id="text1">
// method 2
<input type="text" class="text2">
// method 3
<input type="text" name="text3">
<input type="text" id="text4">

<script language="javascript" type="text/javascript">
    $(document).ready(function () {
        $("#button").click(function(){
            $.ajax({
                url: "http://192.168.21.84:1234/api",
                type: 'POST',
                timeout: 5000,
                data: {
                    text1: $('#text1').val(),
                    text2: $('.text2').val(),
                    text3: $('input[name=text3]').val(),
                    text4: $('input[id=text4]').val(),
                },
                success: function (response) {
                    console.log('success');
                },
                error: function () {
                    console.log('fail');
                }
            });
        });
    });
</script>
Clear the value of input field
<input type="text" id="text1">

<script language="javascript" type="text/javascript">
    $(document).ready(function () {
        $("#button").click(function(){
            $('#text1').val(""),
        });
    });
</script>
Modify the value of input field
<input type="text" id="text1">
<input type="text" id="text2">

<script language="javascript" type="text/javascript">
    $(document).ready(function () {
        $("#button").click(function(){
            $('#text1').val("TEXT"),
            $('#text2').html("<font color='red'>TEXT</font>"),
        });
    });
</script>
```