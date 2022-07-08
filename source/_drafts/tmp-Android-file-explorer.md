---
title: tmp_Android_file_explorer
abbrlink: b8f8578c
tags:
---
Android File Explorer
===

```
package tpv.lss_mobileapp.LSSFileExplorer;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ListActivity;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.TextView;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import tpv.lss_mobileapp.R;

public class FileExplorerActivity extends ListActivity {

    public static final String TAG = "LSS_FileExplorerActivity";
    private List item = null;
    private List path = null;
    private String root;
    private TextView myPath;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_lssexplorer);
        myPath = (TextView) findViewById(R.id.path);

        root = Environment.getExternalStorageDirectory().getPath();

        getDir(root);
    }

    private void getDir(String dirPath) {
        myPath.setText("Location: " + dirPath);
        item = new ArrayList();
        path = new ArrayList();
        File f = new File(dirPath);
        File[] files = f.listFiles();

        if (!dirPath.equals(root)) {
            item.add(root);
            path.add(root);
            item.add("../");
            path.add(f.getParent());
        }

        if (files != null) {
            Log.i(TAG, "files.length = " + files.length);
            for (int i=0; i < files.length; i++)
            {
                File file = files[i];

                if (!file.isHidden() && file.canRead()) {
                    path.add(file.getPath());
                    if (file.isDirectory()){
                        item.add(file.getName() + "/");
                    } else {
                        item.add(file.getName());
                    }
                }
            }

            ArrayAdapter fileList = new ArrayAdapter(this, R.layout.row, item);
            setListAdapter(fileList);
        } else {
            Log.i(TAG, "files is null");
        }

    }

    @Override
    protected void onListItemClick(ListView l, View v, int position, long id) {
        // TODO Auto-generated method stub
        File file = new File(path.get(position));

        if (file.isDirectory())
        {
            if(file.canRead()){
                getDir(path.get(position));
            }else{
                new AlertDialog.Builder(this)
                        .setIcon(R.drawable.ic_launcher)
                        .setTitle("[" + file.getName() + "] folder can't be read!")
                        .setPositiveButton("OK", null).show();
            }
        }else {
            new AlertDialog.Builder(this)
                    .setIcon(R.drawable.ic_launcher)
                    .setTitle("[" + file.getName() + "]")
                    .setPositiveButton("OK", null).show();

        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_lssexplorer, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
            return true;
        }

        return super.onOptionsItemSelected(item);
    }
}
```

```
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical">

    <TextView
        android:id="@+id/path"
        android:layout_width="fill_parent"
        android:layout_height="wrap_content" />
    <ListView
        android:id="@android:id/list"
        android:layout_width="fill_parent"
        android:layout_height="wrap_content"
        />
    <TextView
        android:id="@android:id/empty"
        android:layout_width="fill_parent"
        android:layout_height="wrap_content"
        android:text="No Data"
        />
</LinearLayout>
```