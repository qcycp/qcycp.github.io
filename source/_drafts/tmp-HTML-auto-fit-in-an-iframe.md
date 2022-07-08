---
title: tmp_HTML_auto_fit_in_an_iframe
abbrlink: ae19e86b
tags:
---
Auto fit the width and height of an iframe
===

```js
<script language="JavaScript">
    function autoResize(iframe){
        iframe.height = iframe.contentWindow.document.body.scrollHeight + "px";
        iframe.width = iframe.contentWindow.document.body.scrollWidth + "px";
    }
</script>

...
<iframe src="sicp_PowerState.html" width="100%" height="100%" marginheight="0" frameborder="0" onLoad="autoResize(this);"></iframe>
```