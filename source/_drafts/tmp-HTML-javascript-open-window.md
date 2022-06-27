---
title: tmp_HTML_javascript_open_window
tags:
---
開啟一個無工作列的乾淨視窗
===

```js
<script language="JavaScript">
    window.open("home.htm", "", "width="+screen.width + ",height=" + screen.height + ",left=0,top=0");
    window.open('', '_parent', '');  
    window.opener = null;
    window.close();
</script>
```