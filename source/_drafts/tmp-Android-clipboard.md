---
title: tmp_Android_clipboard
tags:
---
Clipboard
===
http://stackoverflow.com/questions/9027629/android-clipboard-code-that-works-on-all-api-levels

會將"Text to Copy"複製到剪貼簿上
```
int currentapiVersion = android.os.Build.VERSION.SDK_INT;
if (currentapiVersion >= android.os.Build.VERSION_CODES.HONEYCOMB){
    android.content.ClipboardManager clipboard =  (android.content.ClipboardManager) getSystemService(CLIPBOARD_SERVICE);
    ClipData clip = ClipData.newPlainText("label", "Text to Copy");
    clipboard.setPrimaryClip(clip);
} else{
    android.text.ClipboardManager clipboard = (android.text.ClipboardManager)getSystemService(CLIPBOARD_SERVICE);
    clipboard.setText("Text to Copy");
}
Toast.makeText(getApplicationContext(), "Text copied to clipboard", Toast.LENGTH_SHORT).show();
```