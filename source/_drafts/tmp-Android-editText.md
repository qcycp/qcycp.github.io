---
title: tmp_Android_editText
tags:
---
editText 限制輸入
===

```xml
<EditText
    android:id="@+id/ip_address"
    android:inputType="number|numberDecimal"
    android:digits="0123456789."
    android:layout_width="match_parent"
    android:layout_height="wrap_content"/>
```

EditText focus detection
===

```java
EditText editText = (EditText) findViewById(R.id.editText);

editText.setOnFocusChangeListener(new View.OnFocusChangeListener() {
    @Override
    public void onFocusChange(View arg0, boolean hasfocus) {
        if (hasfocus) {
            Log.e("TAG", "focused");
        } else {
            Log.e("TAG", "not focused");
        }
    }
});
```

EditText clearFocus
===

You can make cursor and focus disappear by

```java
edittext.clearFocus();
```

After clearFocus, it sets the focus back to the first focusable view in the activity, so if you have only one view in the activity, it doesn't work.
如果畫面中只有一個EditText view，可以多建立一個空的View，或是一個LinearLayout把EditText包起來
然後在這個view上設定focus，這樣在editText clearFocus後，focus就會轉到這個view上


```xml
<View
    android:id="@+id/focus_thief"
    android:layout_width="1dp"
    android:layout_height="1dp"
    android:focusable="true"
    android:focusableInTouchMode="true" />
```

set focus to right of text in EditText
===
```java
EditText editText = (EditText) findViewById(R.id.textId);
int pos = editText.getText().length();
editText.setSelection(pos);
```