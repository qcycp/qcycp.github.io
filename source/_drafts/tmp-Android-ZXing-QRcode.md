---
title: tmp_Android_ZXing_QRcode
tags:
---
利用 ZXing 生成 條碼 / QR code
===
到 http://repo1.maven.org/maven2/com/google/zxing/core/
下載已編譯好的類別庫 core.jar，當前的版本是 core-3.2.1.jar 並放至 /專案目錄/app/libs/ 下  

```java
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
 
import java.util.EnumMap;
import java.util.Map;

...
String QRCodeContent = "QR code content";
generateQRCode(QRCodeContent);
...

private Bitmap generateQRCode(String QRCodeContent) {
    int QRCodeWidth = 500;
    int QRCodeHeight = 500;
    Map hints = new EnumMap(EncodeHintType.class);
    hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");

    MultiFormatWriter writer = new MultiFormatWriter();
    try {
        // 容錯率姑且可以將它想像成解析度，分為 4 級：L(7%)，M(15%)，Q(25%)，H(30%)
        // 設定 QR code 容錯率為 H
        hints.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.H);

        // 建立 QR code 的資料矩陣
        // ZXing 還可以生成其他形式條碼，如：BarcodeFormat.CODE_39、BarcodeFormat.CODE_93、BarcodeFormat.CODE_128、BarcodeFormat.EAN_8、BarcodeFormat.EAN_13...
        BitMatrix result = writer.encode(QRCodeContent, BarcodeFormat.QR_CODE, QRCodeWidth, QRCodeHeight, hints);

        Bitmap bitmap = Bitmap.createBitmap(QRCodeWidth, QRCodeHeight, Bitmap.Config.ARGB_8888);
        // 將 QR code 資料矩陣繪製到點陣圖上
        for (int y = 0; y<QRCodeHeight; y++) {
            for (int x = 0;x<QRCodeWidth; x++) {
                bitmap.setPixel(x, y, result.get(x, y) ? Color.BLACK : Color.WHITE);
            }
        }
 
        ImageView imgView = (ImageView) findViewById(R.id.imageView);
        // 設定為 QR code 影像
        imgView.setImageBitmap(bitmap);
    } catch (WriterException e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
    }
}
```

[老灰鴨的筆記本: 【Android Studio】利用 ZXing 生成 條碼 / QR code](http://oldgrayduck.blogspot.tw/2015/11/android-studio-zxing-qr-code.html)