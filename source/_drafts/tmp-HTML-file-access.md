---
title: tmp_HTML_file_access
tags:
---
選擇檔案，讀取檔案內容
===

```
<script type="text/javascript">
var reader = new FileReader();

function readText(that){
    if(that.files && that.files[0]){
         var reader = new FileReader();
         reader.onload = function (e) { 
              var output = e.target.result;

              document.getElementById('main').innerHTML = output;
         };
         reader.readAsText(that.files[0]);
    }
}
</script>
<input type="file" onchange='readText(this)' />
<div id="main"></div>
```