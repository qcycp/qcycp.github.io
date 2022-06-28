---
title: tmp_Android_TextInputLayout
tags:
---
TextInputLayout
===
[Creating a Login Screen Using TextInputLayout](https://code.tutsplus.com/tutorials/creating-a-login-screen-using-textinputlayout--cms-24168)

activity_main.xml
```xml
<ScrollView xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="fill_parent"
    android:layout_height="fill_parent"
    android:fitsSystemWindows="true">

    <LinearLayout
        android:orientation="vertical"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:paddingTop="56dp"
        android:paddingLeft="24dp"
        android:paddingRight="24dp">

        <ImageView android:src="@mipmap/logo"
            android:layout_width="wrap_content"
            android:layout_height="72dp"
            android:layout_marginBottom="24dp"
            android:layout_gravity="center_horizontal" />

        <android.support.design.widget.TextInputLayout
            android:id="@+id/ipWrapper"
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:layout_marginTop="8dp"
            android:layout_marginBottom="8dp">
            <EditText
                android:id="@+id/ip"
                android:layout_width="match_parent"
                android:layout_height="wrap_content"
                android:inputType="textEmailAddress"
                android:hint="@string/ip" />
        </android.support.design.widget.TextInputLayout>

        <android.support.design.widget.TextInputLayout
            android:id="@+id/accountWrapper"
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:layout_marginTop="8dp"
            android:layout_marginBottom="8dp">
            <EditText
                android:id="@+id/account"
                android:layout_width="match_parent"
                android:layout_height="wrap_content"
                android:inputType="textEmailAddress"
                android:hint="@string/acount" />
        </android.support.design.widget.TextInputLayout>

        <android.support.design.widget.TextInputLayout
            android:id="@+id/passwordWrapper"
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:layout_marginTop="4dp">
            <EditText
                android:id="@+id/password"
                android:layout_width="match_parent"
                android:layout_height="wrap_content"
                android:inputType="textPassword"
                android:hint="@string/password" />
        </android.support.design.widget.TextInputLayout>

        <android.support.v7.widget.AppCompatButton
            android:id="@+id/confirmBtn"
            android:layout_width="fill_parent"
            android:layout_height="wrap_content"
            android:layout_marginTop="24dp"
            android:layout_marginBottom="24dp"
            android:padding="12dp"
            android:text="@string/ok"/>

    </LinearLayout>

</ScrollView>
```
MainActivity.java
```java
package com.mtreat.faceid.activity;

import android.content.Context;
import android.support.design.widget.TextInputLayout;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;

import com.mtreat.faceid.R;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class TestActivity extends AppCompatActivity {
    private static final String TAG = "FaceID_Register";
    private static final String EMAIL_PATTERN = "^[a-zA-Z0-9#_~!$&'()*+,;=:.\"<>@\\[\\]\\\\]+@[a-zA-Z0-9-]+(\\.[a-zA-Z0-9-]+)*$";
    private static final String IPADDRESS_PATTERN = "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$";
    private static final String IPPORT_PATTERN = "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5]):([0-9]{1,4}|[1-5][0-9]{4}|6[0-4][0-9]{3}|65[0-4][0-9]{2}|655[0-2][0-9]|6553[0-5])$";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_register);

        initView();
    }

    private void initView() {
        final TextInputLayout ipWrapper = (TextInputLayout) findViewById(R.id.ipWrapper);
        final TextInputLayout accountWrapper = (TextInputLayout) findViewById(R.id.accountWrapper);
        final TextInputLayout passwordWrapper = (TextInputLayout) findViewById(R.id.passwordWrapper);
        final Button confirmBtn = (Button) findViewById(R.id.confirmBtn);

        confirmBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                hideKeyboard();
                boolean isFiledInvalid = false;

                if (ipWrapper.getEditText() != null) {
                    String ip = ipWrapper.getEditText().getText().toString();
                    if (ip.isEmpty()) {
                        ipWrapper.setError("Empty Field!");
                        isFiledInvalid = true;
                    } else {
                        if (ip.indexOf(':') >= 0) {
                            if (validateIpPort(ip)) {
                                ipWrapper.setErrorEnabled(false);
                            } else {
                                ipWrapper.setError("Not a valid ip address!");
                                isFiledInvalid = true;
                            }
                        } else {
                            if (validateIp(ip)) {
                                ipWrapper.setErrorEnabled(false);
                            } else {
                                ipWrapper.setError("Not a valid ip address!");
                                isFiledInvalid = true;
                            }
                        }
                    }
                }
                if (accountWrapper.getEditText() != null) {
                    String account = accountWrapper.getEditText().getText().toString();
                    if (account.isEmpty()) {
                        accountWrapper.setError("Empty Field!");
                        isFiledInvalid = true;
                    } else {
                        if (validateEmail(account)) {
                            accountWrapper.setErrorEnabled(false);
                        } else {
                            accountWrapper.setError("Not a valid email address!");
                            isFiledInvalid = true;
                        }
                    }
                }
                if (passwordWrapper.getEditText() != null) {
                    String password = passwordWrapper.getEditText().getText().toString();
                    if (password.isEmpty()) {
                        passwordWrapper.setError("Empty Field!");
                        isFiledInvalid = true;
                    } else {
                        passwordWrapper.setErrorEnabled(false);
                    }
                }

                if (!isFiledInvalid) {
                    //signin
                }
            }
        });
    }

    private void hideKeyboard() {
        View view = getCurrentFocus();
        if (view != null) {
            InputMethodManager im = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
            if (im != null) {
                im.hideSoftInputFromWindow(view.getWindowToken(), InputMethodManager.HIDE_NOT_ALWAYS);
            }
        }
    }

    private boolean validateEmail(String email) {
        Pattern pattern = Pattern.compile(EMAIL_PATTERN);
        Matcher matcher = pattern.matcher(email);
        return matcher.matches();
    }

    private boolean validateIp(String ip) {
        Pattern pattern = Pattern.compile(IPADDRESS_PATTERN);
        Matcher matcher = pattern.matcher(ip);
        return matcher.matches();
    }

    private boolean validateIpPort(String ip_port) {
        Pattern pattern = Pattern.compile(IPPORT_PATTERN);
        Matcher matcher = pattern.matcher(ip_port);
        return matcher.matches();
    }
}
```