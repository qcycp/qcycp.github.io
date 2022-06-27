---
title: tmp_HTML_jquery_note
tags:
---
jQuery note
===
https://blog.xuite.net/chingwei/blog/22969215-%E3%80%90%E7%A8%8B%E5%BC%8F%E3%80%91jQuery+%3A+%E5%8F%96%E5%BE%97%E5%92%8C%E8%A8%AD%E5%AE%9A+radio,+checkbox,+select+%E7%9A%84%E5%80%BC+(%E8%BD%89)
https://stackoverflow.com/questions/10611170/how-to-set-value-of-input-text-using-jquery

```js
// get value of select option
//<select id="pdlist"></select>
$('#pdlist option:selected').val()

// get value of checkbox
$("#some_id").prop("checked")
$("#some_id").attr("value")

// get value of radio
<input type="radio" name="test" value="1">Radio1<br>
<input type="radio" name="test" value="2">Radio2<br>
$('input[name=test]:checked').val()

for jQuery we can use below:

by input name:
$('input[name=textboxname]').val();

by input class:
$('input[type=text].textboxclass').val();

by input id:
$('#textboxid').val();
```