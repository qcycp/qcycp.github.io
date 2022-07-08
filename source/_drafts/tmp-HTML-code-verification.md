---
title: tmp_HTML_code_verification
abbrlink: 23c4d31
tags:
---
網頁驗證碼
===

// code_num.php 產生驗證碼
```
<?php
session_start();
getCode(4, 60, 20);

function getCode($num, $w, $h) {
     $code = "";
     for ($i = 0; $i < $num; $i++) {
          $code .= rand(0, 9);
     }
     //4位驗證碼也可以用rand(1000,9999)直接生成
     //將生成的驗證碼寫入session，備驗證時用
     $_SESSION["helloweba_num"] = $code;
     //創建圖片，定義顏色值
     header("Content-type: image/PNG");
     $im = imagecreate($w, $h);
     $black = imagecolorallocate($im, 0, 0, 0);
     $gray = imagecolorallocate($im, 200, 200, 200);
     $bgcolor = imagecolorallocate($im, 255, 255, 255);
     //填充背景
     imagefill($im, 0, 0, $gray);

     //畫邊框
     imagerectangle($im, 0, 0, $w-1, $h-1, $black);

     //隨機繪制兩條虛線，起幹擾作用
     $style = array ($black,$black,$black,$black,$black,
               $gray,$gray,$gray,$gray,$gray
               );
     imagesetstyle($im, $style);
     $y1 = rand(0, $h);
     $y2 = rand(0, $h);
     $y3 = rand(0, $h);
     $y4 = rand(0, $h);
     imageline($im, 0, $y1, $w, $y3, IMG_COLOR_STYLED);
     imageline($im, 0, $y2, $w, $y4, IMG_COLOR_STYLED);

     //在畫布上隨機生成大量黑點，起幹擾作用;
     for ($i = 0; $i < 80; $i++) {
          imagesetpixel($im, rand(0, $w), rand(0, $h), $black);
     }
     //將數字隨機顯示在畫布上,字符的水平間距和位置都按一定波動範圍隨機生成
     $strx = rand(3, 8);
     for ($i = 0; $i < $num; $i++) {
          $strpos = rand(1, 6);
          imagestring($im, 5, $strx, $strpos, substr($code, $i, 1), $black);
          $strx += rand(8, 12);
     }
     imagepng($im);//輸出圖片
     imagedestroy($im);//釋放圖片所占內存
}
?>

// chk_code.php 驗證驗證碼
<?php
session_start();

$code = trim($_POST['code']);
if($code==$_SESSION["helloweba_num"]){
     echo '1';
}
?>

// index.php
// javascript的部份
<script>
$(function(){
    //數字驗證
    $("#reset_num").click(function(){
        $("#getcode_num").attr("src",'code_num.php?' + Math.random());
    });
});

$(function(){
    //數字驗證
    $("#getcode_num").click(function(){
        $(this).attr("src",'code_num.php?' + Math.random());
    });
});

$(function(){
    $("#chk_num").click(function(){
        var code_num = $("#code_num").val();
        $.post("chk_code.php?act=num",{code:code_num},function(msg){
            if(msg==1){
                //alert("驗證碼正確！");
            }else{
                alert("驗證碼錯誤！");
            }
        });
    });
});
</script>
```

// 內文部份
```
<form>
<input type="text" id="code_num" name="code_num" size=8 maxlength=4/>
<img src="code_num.php" id="getcode_num">
<a href='#' class="ResetNum" id="reset_num">reset</a>
<input type="button" name="button" value="註冊" id="chk_num"/>
</form>
```

==> 可以點擊圖片，或是reset來更新驗證碼