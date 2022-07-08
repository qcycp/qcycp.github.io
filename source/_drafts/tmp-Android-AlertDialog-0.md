---
title: tmp_Android_AlertDialog
abbrlink: 2dd5c88
tags:
---
AlertDialog
===
```xml
<!--input_dialog.xml-->
<?xml version="1.0" encoding="utf-8"?>
<android.support.constraint.ConstraintLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent">

    <EditText
        android:id="@+id/url"
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:hint="@string/url"/>

</android.support.constraint.ConstraintLayout>
```
```java
private void generateInputDialog() {
    LayoutInflater inflater = LayoutInflater.from(MainActivity.this);
    final View v = inflater.inflate(R.layout.input_dialog, null);
    final EditText editText = (EditText) (v.findViewById(R.id.url));
    String url = mApp.getSharedPreference().getUrl();
    if (url.isEmpty()) {
        editText.setText("http://");
    } else {
        editText.setText(url);
    }
    editText.setSelection(editText.getText().length());

    if (mDialog == null) {
        mDialog = new AlertDialog.Builder(MainActivity.this)
                .setTitle(R.string.input_url)
                .setView(v)
                .setCancelable(false)
                .setPositiveButton(R.string.confirm, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {

                        String url = editText.getText().toString();
                        Log.d(TAG, "input url: " + url);

                        if (!url.startsWith("http")) {
                            url = "http://" + url;
                        }

                        mWebView.loadUrl(url);
                        mApp.getSharedPreference().setUrl(url);
                    }
                })
                .setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        mDialog.cancel();
                    }
                })
                .create();
    }

    if (mDialog != null && mDialog.getWindow() != null) {
        mDialog.getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_STATE_HIDDEN);
        //mDialog.show();

        //Still in immersive mode when dialog shown
        //Set the dialog to not focusable (makes navigation ignore us adding the window)
        mDialog.getWindow().setFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE, WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE);

        //Show the dialog!
        mDialog.show();

        //Set the dialog to immersive
        mDialog.getWindow().getDecorView().setSystemUiVisibility(getWindow().getDecorView().getSystemUiVisibility());

        //Clear the not focusable flag from the window
        mDialog.getWindow().clearFlags(WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE);
    }
```