---
title: tmp_Android_ListView_Header_Footer
abbrlink: 449126fa
tags:
---
在ListView上加Header和Footer
===
https://github.com/ComboZhc/Memory/blob/master/2011-10-01%20%5BAndroid%5D%E7%BB%99ListView%E5%8A%A0%E4%B8%8AHeader%E5%92%8CFooter

//demo_list_item_header_view.xml
```
<!--?xml version="1.0" encoding="utf-8"?-->
<LinearLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="wrap_content"
    android:layout_height="wrap_content">

    <TextView
        android:id="@+id/headerTextView"
        android:text="@+string/TestListViewHeader"
        android:textSize="20sp"
        android:layout_width="wrap_content"
        android:layout_height="30sp">
    </TextView>

</LinearLayout>
```

//DemoListHeaderView.java
```
package com.tpv.pdcontrol;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

public class DemoListHeaderView extends LinearLayout {

    private static final String TAG = "DemoListHeaderView";
    private Context context;
    private TextView textView;

    public DemoListHeaderView(Context context, AttributeSet attrs) {
        super(context, attrs);
        initialize(context);
    }

    public DemoListHeaderView(Context context) {
        super(context);
        initialize(context);
    }

    private void initialize(Context context) {
        this.context = context;
        View view = LayoutInflater.from(this.context).inflate(R.layout.demo_list_item_header_view, null);
        textView = (TextView) view.findViewById(R.id.headerTextView);
        addView(view);
    }

    public void setTextView(String text) {
        textView.setText(text);
    }
}
```

使用方式：在listview setAdapter前，加上
```
DemoListHeaderView headerView = new DemoListHeaderView(TestActivity.this);
headerView.setTextView("Header");
listview.addHeaderView(headerView);

DemoListHeaderView footerView = new DemoListHeaderView(TestActivity.this);
footerView.setTextView("Footer");
listview.addFooterView(footerView);
```