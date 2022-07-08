---
title: tmp_Android_DialogPlus
abbrlink: 453ae343
tags:
---
DialogPlus
===

```java
import android.widget.SimpleAdapter;

import com.orhanobut.dialogplus.DialogPlus;
import com.orhanobut.dialogplus.ListHolder;
import com.orhanobut.dialogplus.OnItemClickListener;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

private void initView() {
    String[] itemsText = {"item1", "item2"};
    List<Map<String, Object>> items = new ArrayList<Map<String,Object>>();
    for (int i = 0; i < itemsText.length; i++) {
        Map<String, Object> item = new HashMap<String, Object>();
        item.put("text", itemsText[i]);
        items.add(item);
    }
    final SimpleAdapter simpleAdapter = new SimpleAdapter(FaceTrackerActivity.this,
            items, R.layout.simple_list_item, new String[]{"text"}, new int[]{R.id.text});
    ImageButton settingsButton = (ImageButton) findViewById(R.id.setting);
    settingsButton.setOnClickListener(new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            DialogPlus dialog = DialogPlus.newDialog(FaceTrackerActivity.this)
                    .setContentHolder(new ListHolder())
                    .setAdapter(simpleAdapter)
                    .setExpanded(false)  // This will enable the expand feature, (similar to android L share dialog)
                    .setGravity(Gravity.BOTTOM) //Gravity.TOP, Gravity.CENTER
                    .setOnItemClickListener(new OnItemClickListener() {
                        @Override
                        public void onItemClick(DialogPlus dialog, Object item, View view, int position) {
                            switch(position) {
                                case 0:
                                    Toast.makeText(FaceTrackerActivity.this, "item1", Toast.LENGTH_LONG).show();
                                    break;
                                case 1:
                                    Toast.makeText(FaceTrackerActivity.this, "item2", Toast.LENGTH_LONG).show();
                                    break;
                            }
                        }
                    })
                    .create();
            dialog.show();
        }
    });
}
```
```xml
<!--simple_list_item.xml-->
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:orientation="vertical"
    android:layout_gravity="center_vertical"
    android:gravity="center_vertical"
    android:padding="10dp"
    android:background="@color/primary">

    <TextView
        android:id="@+id/text"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:layout_marginStart="10dp"
        android:layout_marginEnd="10dp"
        android:textColor="@color/iron"
        android:textSize="25sp" />

    <ImageView
        android:id="@+id/line"
        android:layout_width="match_parent"
        android:layout_height="1dp"
        android:layout_marginTop="15dp"
        android:layout_marginStart="10dp"
        android:layout_marginEnd="10dp"
        android:background="@color/iron" />

</LinearLayout>
```