---
title: tmp_Android_spinner
abbrlink: '51529197'
tags:
---
Android spinner 仿 TextInputLayout
===

```xml
<LinearLayout
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:layout_marginTop="@dimen/registeration_item_margin"
    android:layout_marginBottom="@dimen/registeration_item_margin"
    android:orientation="vertical" >

    <TextView
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text="@string/box_address"
        style="@style/TextView.InputLabel" />

    <android.support.v7.widget.AppCompatSpinner
        android:id="@+id/spinner"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:spinnerMode="dialog"
        app:theme="@style/common_spinner"
        style="@style/Widget.AppCompat.Spinner.Underlined" />

</LinearLayout>
```

```xml
<style name="TextView.InputLabel" parent="TextAppearance.AppCompat.Caption">
    <item name="android:textColor">?android:textColorHint</item>
    <item name="android:paddingBottom">0dp</item>
    <item name="android:paddingLeft">4dp</item>
    <item name="android:paddingRight">4dp</item>
</style>

<style name="common_spinner">
    <item name="android:background">@color/primary</item>
</style>
```

```java
final String[] servers = mApp.getSharedPreference().getServerList().split(",");
final String[] serverValues = mApp.getSharedPreference().getServerListValue().split(",");
final Spinner spinner = findViewById(R.id.spinner);
//ArrayAdapter<String> listAdapter = new ArrayAdapter<String>(this, android.R.layout.simple_spinner_item, servers);
ArrayAdapter<String> listAdapter = new ArrayAdapter<>(this, R.layout.custom_simple_spinner_item, serverValues);
listAdapter.setDropDownViewResource(R.layout.custom_simple_spinner_dropdown_item);
spinner.setAdapter(listAdapter);

//spinner.setBackground(ContextCompat.getDrawable(this, R.drawable.abc_edit_text_material));

// set color of under line
ColorStateList colorStateList = ContextCompat.getColorStateList(this, R.color.iron);
ViewCompat.setBackgroundTintList(spinner, colorStateList);

spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
    @Override
    public void onItemSelected(AdapterView adapterView, View view, int position, long id) {
        mBoxName = spinner.getSelectedItem().toString();
        for (int i = 0; i < serverValues.length; i++) {
            if (serverValues[i].equals(mBoxName)) {
                mBoxAddress = servers[i];
                break;
            }
        }
    }

    @Override
    public void onNothingSelected(AdapterView arg0) {
    }
});
```

custom_simple_spinner_item.xml

```xml
<?xml version="1.0" encoding="utf-8"?>
<TextView
    xmlns:android="http://schemas.android.com/apk/res/android"
    android:id="@android:id/text1"
    style="?android:attr/spinnerItemStyle"
    android:textSize="18sp"
    android:singleLine="true"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:ellipsize="marquee"
    android:textAlignment="inherit"
    android:paddingStart="0dp"
    android:paddingEnd="0dp" />
```

custom_simple_spinner_dropdown_item.xml

```xml
<CheckedTextView xmlns:android="http://schemas.android.com/apk/res/android"
    android:id="@android:id/text1"
    style="?android:attr/spinnerDropDownItemStyle"
    android:singleLine="true"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:ellipsize="marquee"
    android:paddingStart="20dp"
    android:paddingEnd="0dp"
    android:paddingTop="12dp"
    android:paddingBottom="12dp"
    android:background="@drawable/custom_selector"/>
```

custom_selector.xml

```xml
<?xml version="1.0" encoding="utf-8"?>
<selector xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:state_pressed="true"
        android:drawable="@color/primary_dark" />
    <item android:drawable="@color/primary" />
</selector>
```