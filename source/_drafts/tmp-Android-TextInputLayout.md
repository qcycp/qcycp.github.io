---
title: tmp_Android_TextInputLayout
tags:
---
TextInputLayout
===
TextInputLayout跟EditText都可以設定hint
如果同時都有設定hint
在unfocus的情況下，兩個hint會重疊顯示
在focus的情況下，TextInputLayout的hint會變成title，EditText會正常顯示它的hint

```xml
<?xml version="1.0" encoding="utf-8"?>
<android.support.constraint.ConstraintLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    android:layout_width="match_parent"
    android:layout_height="match_parent">

    <android.support.design.widget.TextInputLayout
        android:id="@+id/input"
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:layout_marginTop="30dp"
        android:layout_marginBottom="10dp"
        android:layout_marginStart="20dp"
        android:layout_marginEnd="20dp"
        app:hintTextAppearance="@style/TextLabel"
        app:layout_constraintBottom_toBottomOf="parent"
        app:layout_constraintEnd_toEndOf="parent"
        app:layout_constraintStart_toStartOf="parent"
        app:layout_constraintTop_toTopOf="parent">
        <android.support.design.widget.TextInputEditText
            android:id="@+id/editText"
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:digits="0123456789.:" />
    </android.support.design.widget.TextInputLayout>

</android.support.constraint.ConstraintLayout>
```

```java
        final TextInputLayout textInput = findViewById(R.id.input);
        String gate = FacePadApplication.getInstance().getSharedPreference().getGateHost();
        textInput.setHint(getResources().getString(R.string.gate_host));

        final EditText editText = textInput.findViewById(R.id.editText);
        if (!gate.isEmpty()) {
            editText.setHint("");
            editText.setText(gate);
            editText.setSelection(editText.getText().length());
        } else {
            if (editText.getText().toString().isEmpty()) {
                editText.setHint("192.168.1.1:5000");
            }
        }
```