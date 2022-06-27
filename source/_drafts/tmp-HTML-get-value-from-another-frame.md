---
title: tmp_HTML_get_value_from_another_frame
tags:
---
Getting a value from another frame
===

只需要在原本取值的api前面，加上window.parent.framename
```js
// radio
var value = window.parent.framename.$('input[name=radio_name]:checked').val();
```