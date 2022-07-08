---
title: tmp_Android_listview
abbrlink: 34ad09a2
tags:
---
common list view
===

//color.xml
```
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <color name="title_gray">#FF555555</color>
    <color name="subtitle_gray">#FF909090</color>
    <color name="disabled_gray">#FFBBBBBB</color>
    <color name="sepatal_line_gray">#FFDDDDDD</color>
    <color name="common_list_tag_blue">#FF00A2E8</color>
</resources>
```

//layout_common_list_tag.xml
```
<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="wrap_content" >

    <TextView
        android:id="@+id/tag_TextView"
        android:textSize="18sp"
        android:textColor="@+color/common_list_tag_blue"
        android:gravity="center_vertical"
        android:layout_width="wrap_content"
        android:layout_height="40dp"
        android:paddingLeft="10dp"
        android:paddingRight="10dp" />

    <View
        android:id="@+id/path_line"
        android:layout_width="match_parent"
        android:layout_height="2dp"
        android:layout_below="@+id/tag_TextView"
        android:layout_marginTop="0dp"
        android:background="@+color/sepatal_line_gray" />
</RelativeLayout>
```

//layout_common_list.xml
```
<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="wrap_content" >

    <LinearLayout
        android:id="@+id/layout_content"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:orientation="horizontal"
        android:paddingLeft="20dp"
        android:paddingRight="20dp"
        android:paddingTop="8dp"
        android:paddingBottom="8dp" >

        <ImageView
            android:id="@+id/icon_ImageView"
            android:layout_width="35dp"
            android:layout_height="match_parent"
            android:layout_marginRight="8dp" >
        </ImageView>

        <LinearLayout
            android:layout_width="wrap_content"
            android:layout_height="43dp"
            android:orientation="vertical"
            android:layout_gravity="center_vertical" >

            <TextView
                android:id="@+id/title_TextView"
                android:textSize="20sp"
                android:textColor="@+color/title_gray"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:singleLine="true" >
            </TextView>

            <TextView
                android:id="@+id/subtitle_TextView"
                android:textSize="15sp"
                android:textColor="@+color/subtitle_gray"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:singleLine="true" >
            </TextView>

        </LinearLayout>
    </LinearLayout>

    <CheckBox
        android:id="@+id/checkbox"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:layout_alignParentRight="true"
        android:layout_marginRight="15dp"
        android:layout_centerVertical="true"
        android:focusable="false"
        android:clickable="false"  />

    <ImageView
        android:id="@+id/imageView_last"
        android:layout_width="35dp"
        android:layout_height="35dp"
        android:layout_alignParentRight="true"
        android:layout_marginRight="15dp"
        android:layout_centerVertical="true"/>

    <View
        android:id="@+id/sepatal_line"
        android:layout_width="wrap_content"
        android:layout_height="1dp"
        android:layout_below="@+id/layout_content"
        android:background="@+color/sepatal_line_gray" />

</RelativeLayout>
```

//layout_listview.xml
```
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:paddingLeft="16dp"
    android:paddingRight="16dp"
    android:orientation="vertical" >

    <ListView
        android:id="@+id/list"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:divider="@android:color/white"
        android:dividerHeight="0dp" />

</LinearLayout>
```

//layout_test.xml
```
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    tools:context="com.example.service.TestActivity">

    <include
        android:id="@+id/listview"
        layout="@layout/layout_listview" />

</RelativeLayout>
```

//CommonListItem.java
```
import android.widget.CompoundButton;

public class CommonListItem {

    private static final String TAG = "CommonListItem";
    private String  mTitle;
    private String  mSubtitle;
    private int     mImageid;
    private boolean mIsTag;
    private boolean mContainCheckbox;
    private boolean mIsSelectable;
    private boolean mIsChecked;
    private boolean mIsDisabled;
    private boolean mContainSepatalLine;
    private CompoundButton.OnCheckedChangeListener mListener = null;
    private int mLastImageid;

    public CommonListItem() {
        this.mTitle                 = null;
        this.mSubtitle              = null;
        this.mImageid               = 0;
        this.mLastImageid           = 0;
        this.mIsTag                 = false;
        this.mContainCheckbox       = false;
        this.mIsSelectable          = true;
        this.mIsChecked             = false;
        this.mIsDisabled            = false;
        this.mListener              = null;
        this.mContainSepatalLine    = true;
    }

    public CommonListItem tag(String title) {
        this.mTitle         = title;
        this.mIsTag         = true;
        this.mIsSelectable  = false;
        return this;
    }

    public CommonListItem checkbox(String title, String subtitle, int imageid,
                                   boolean ischecked, boolean isdisabled,
                                   CompoundButton.OnCheckedChangeListener listener) {
        this.mTitle             = title;
        this.mSubtitle          = subtitle;
        this.mImageid           = imageid;
        this.mLastImageid       = 0;
        this.mContainCheckbox   = true;
        this.mIsChecked         = ischecked;
        this.mIsSelectable      = true;
        this.mListener          = listener;
        this.mIsDisabled        = isdisabled;
        return this;
    }

    public CommonListItem item(String title, String subtitle, int imageid,
                               boolean isselectable, boolean isdisabled) {
        this.mTitle         = title;
        this.mSubtitle      = subtitle;
        this.mImageid       = imageid;
        this.mLastImageid   = 0;
        this.mIsSelectable  = isselectable;
        this.mIsDisabled    = isdisabled;
        return this;
    }

    public CommonListItem item_no_sepatal(String title, String subtitle, int imageid,
                                          boolean isselectable, boolean isdisabled) {
        this.mTitle                 = title;
        this.mSubtitle              = subtitle;
        this.mImageid               = imageid;
        this.mLastImageid           = 0;
        this.mIsSelectable          = isselectable;
        this.mIsDisabled            = isdisabled;
        this.mContainSepatalLine    = false;
        return this;
    }

    public CommonListItem item_with_last_image(String title, String subtitle, int imageid,
                                               int lastImageid, boolean isselectable, boolean isdisabled) {
        this.mTitle             = title;
        this.mSubtitle          = subtitle;
        this.mImageid           = imageid;
        this.mLastImageid       = lastImageid;
        this.mIsSelectable      = isselectable;
        this.mIsDisabled        = isdisabled;
        return this;
    }

    public void setTitle(String title) {
        this.mTitle = title;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public void setSubtitle(String subtitle) {
        this.mSubtitle = subtitle;
    }

    public String getSubtitle() {
        return this.mSubtitle;
    }

    public void setImageid(int imageid) {
        this.mImageid = imageid;
    }

    public int getImageid() {
        return this.mImageid;
    }

    public boolean containCheckbox() {
        return this.mContainCheckbox;
    }

    public boolean isTag() {
        return this.mIsTag;
    }

    public void setSelectable(boolean s) {
        this.mIsSelectable = s;
    }

    public boolean isSelectable() {
        return this.mIsSelectable;
    }

    public void setContainCheckboxListener(CompoundButton.OnCheckedChangeListener listener) {
        this.mListener = listener;
    }

    public CompoundButton.OnCheckedChangeListener getContainCheckboxListener() {
        return this.mListener;
    }

    public void setChecked(boolean checked){
        this.mIsChecked = checked;
    }
    public boolean getChecked(){
        return this.mIsChecked;
    }

    public boolean isChecked(){
        return this.mIsChecked;
    }

    public void setDisabled(boolean b) {
        this.mIsDisabled = b;
    }

    public boolean isDisabled() {
        return this.mIsDisabled;
    }

    public void setSepatalLine(boolean showSepatalLine) {
        mContainSepatalLine = showSepatalLine;
    }
    public boolean containSepatalLine() {
        return this.mContainSepatalLine;
    }

    public int getLastImageid() {
        return this.mLastImageid;
    }
}
```

//CommonListAdapter
```
import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.List;

public class CommonListAdapter extends ArrayAdapter<CommonListItem> {

    private static final String TAG = "CommonListAdapter";
    private Context c;
    private List<CommonListItem> items;
    private int mResourceId;
    private Handler mHandler;

    public CommonListAdapter(Context context, int resourceId, List<CommonListItem> version) {
        super(context, resourceId, version);
        c = context;
        items = version;
        mResourceId = resourceId;
    }

    public void setHandler(Handler handler) {
        mHandler = handler;
    }

    @Override
    public boolean isEnabled(int position) {
        CommonListItem o = getItem(position);
        if (!o.isSelectable()) {
            return false;
        }
        return true;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        View v = convertView;
        final CommonListItem o = items.get(position);

        if (o.isTag()) {
            v = LayoutInflater.from(getContext()).inflate(R.layout.layout_common_list_tag, null);
            TextView tag = (TextView) v.findViewById(R.id.tag_TextView);
            if (tag != null) {
                if (o.getTitle() != null) {
                    tag.setText(o.getTitle());
                } else {
                    tag.setText("");
                }
            }
        } else {
            v = LayoutInflater.from(getContext()).inflate(mResourceId, null);

            TextView title = (TextView) v.findViewById(R.id.title_TextView);
            TextView subtitle = (TextView) v.findViewById(R.id.subtitle_TextView);
            ImageView icon = (ImageView) v.findViewById(R.id.icon_ImageView);
            CheckBox checkbox = (CheckBox) v.findViewById(R.id.checkbox);
            View sepatal_line = v.findViewById(R.id.sepatal_line);
            ImageView last_icon = (ImageView) v.findViewById(R.id.imageView_last);

            if (title != null) {
                if (o.getTitle() != null) {
                    title.setText(o.getTitle());
                } else {
                    title.setText("");
                }
            }
            if (subtitle != null) {
                if (o.getSubtitle() != null) {
                    subtitle.setText(o.getSubtitle());
                } else {
                    subtitle.setVisibility(View.GONE);
                }
            }
            if (icon != null) {
                if(o.getImageid() != 0) {
                    icon.setImageResource(o.getImageid());
                } else {
                    icon.setVisibility(View.GONE);
                }
            }

            if (o.containCheckbox()) {
                CompoundButton.OnCheckedChangeListener listener = null;
                listener = o.getContainCheckboxListener();
                checkbox.setChecked(o.isChecked());
                if(listener != null) {
                    checkbox.setOnCheckedChangeListener(listener);
                } else {
                    checkbox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                        @Override
                        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                        }
                    });
                }

                // 如果是Disable，checkbox需要跟著變灰色
                if (o.isDisabled()) {
                    checkbox.setEnabled(false);
                } else {
                    checkbox.setEnabled(true);
                }
            } else {
                checkbox.setVisibility(View.GONE);
            }

            if (o.isDisabled()) {
                title.setTextColor(v.getResources().getColor(R.color.disabled_gray));
                subtitle.setTextColor(v.getResources().getColor(R.color.disabled_gray));
            } else {
                title.setTextColor(v.getResources().getColor(R.color.title_gray));
                subtitle.setTextColor(v.getResources().getColor(R.color.subtitle_gray));
            }

            if (!o.containSepatalLine() && sepatal_line != null) {
                sepatal_line.setVisibility(View.GONE);
            }

            if (last_icon != null) {
                if(o.getLastImageid() != 0) {
                    last_icon.setImageResource(o.getLastImageid());
                } else {
                    last_icon.setVisibility(View.GONE);
                }
            }
        }
        return v;
    }
}
```

//TestActivity.java
```
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.CompoundButton;
import android.widget.ListView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.List;


public class TestActivity extends Activity {

    private CommonListAdapter mAdapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_test);

        init_list();
    }
    private void init_list() {
        List list<CommonListItem> = new ArrayList<CommonListItem>();

        list.add(new CommonListItem().tag(getString(R.string.tag1)));
        list.add(new CommonListItem().item(getString(R.string.item1), null, 0, true, false));
        list.add(new CommonListItem().item(getString(R.string.item2), getString(R.string.subtitle), 0, true, false));
        list.add(new CommonListItem().item(getString(R.string.item3), null, R.drawable.item, true, false));
        list.add(new CommonListItem().checkbox(getString(R.string.item4), null, 0, true, false, null));
        list.add(new CommonListItem().item_no_sepatal(getString(R.string.item5), null, 0, false, true));

        list.add(new CommonListItem().tag(getString(R.string.tag2)));
        list.add(new CommonListItem().item_with_last_image(getString(R.string.item6), getString(R.string.subtitle), R.drawable.item, R.drawable.right_arrow, true, false));

        mAdapter = new CommonListAdapter(TestActivity.this, R.layout.layout_common_list, list);

        View view = findViewById(R.id.listview);
        ListView listview = (ListView) view.findViewById(R.id.list);
        listview.setOnItemClickListener(onItemClickListener);

        listview.setAdapter(mAdapter);
    }

    private AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() {

        @Override
        public void onItemClick(AdapterView<?> adapterView, View view, final int position, long l) {
            final CommonListItem item = mAdapter.getItem(position);

            if (item.getTitle().equals(getString(R.string.item1))) {
                Toast.makeText(view.getContext(), "item1", Toast.LENGTH_SHORT).show();
            } else if (item.getTitle().equals(getString(R.string.item2))) {
                Toast.makeText(view.getContext(), "item2", Toast.LENGTH_SHORT).show();
            } else if (item.getTitle().equals(getString(R.string.item3))) {
                Toast.makeText(view.getContext(), "item3", Toast.LENGTH_SHORT).show();
            } else if (item.getTitle().equals(getString(R.string.item4))) {
                Toast.makeText(view.getContext(), "item4", Toast.LENGTH_SHORT).show();

                item.setChecked(!item.getChecked());
                mAdapter.getItem(position+1).setDisabled(item.getChecked());
                mAdapter.getItem(position+1).setSelectable(!item.getChecked());
            } else if (item.getTitle().equals(getString(R.string.item5))) {
                Toast.makeText(view.getContext(), "item5", Toast.LENGTH_SHORT).show();
            } else if (item.getTitle().equals(getString(R.string.item6))) {
                Toast.makeText(view.getContext(), "item6", Toast.LENGTH_SHORT).show();
            }

            mAdapter.notifyDataSetChanged();
        }
    };

    CompoundButton.OnCheckedChangeListener listener = new CompoundButton.OnCheckedChangeListener() {

        @Override
        public void onCheckedChanged(CompoundButton compoundButton, boolean b) {
        }
    };
}
```

![3afaef47f19e727690aae609183356c3.png](:/aad6cc17bc34477f9a6ab3248d46ca51)

