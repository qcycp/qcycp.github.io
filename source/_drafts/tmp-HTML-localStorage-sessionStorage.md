---
title: tmp_HTML_localStorage_sessionStorage
abbrlink: 1848bc5e
tags:
---
localStorage and sessionStorage
===
HTML5的Storage主要分為兩種：localStorage與sessionStorage
這兩者主要在生命週期上有較明顯的差別，localStorage的生命週期較長，原則上要等到透過Javascript將內容清掉或者使用者清空Cache時才會消失；
sessionStorage則是在Browser/Tab關閉時就會清空

使用方式
```js
<script type="text/javascript" language="javascript">

// 存入
localStorage.setItem("paramA", "testA");
sessionStorage.setItem("paramB", "testB");
localStorage["paramA"] = "testA";
sessionStorage["paramB"] = "testB";

// 讀取
console.log(localStorage.getItem("paramA"));
console.log(sessionStorage.getItem("paramB"));
console.log(localStorage["paramA"]);
console.log(sessionStorage["paramB"]);

// Store array
var array = ["A", "B", "C"];
localStorage.setItem("array", JSON.stringify(array));

// Access array
var data = JSON.parse(localStorage.getItem("array"));
console.log(data.length);
</script>
```

#### 手動清除localStorage
打開開發者模式=>console頁面
```
localStorage.clear()
```

[[HTML5]簡述HTML5的Client端暫存-localStorage/sessionStorage \| gipi的學習筆記-經營管理、數據思考、終身學習 - 點部落](https://dotblogs.com.tw/jimmyyu/archive/2011/03/27/html5-client-storage.aspx)