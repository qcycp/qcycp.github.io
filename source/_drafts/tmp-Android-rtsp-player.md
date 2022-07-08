---
title: tmp_Android_rtsp_player
abbrlink: dbd4658
tags:
---
RTSP player by VideoView
===

```java
package com.foxconn.rtspplayer;

import android.net.Uri;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.VideoView;

public class MainActivity extends AppCompatActivity {
    private static final String TAG = "RTSP_MainActivity";

    private Button playButton;
    private VideoView videoView;
    private EditText rtspUrl;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        rtspUrl = findViewById(R.id.url);
        playButton = findViewById(R.id.start_play);
        playButton.setOnClickListener(new Button.OnClickListener() {
            public void onClick(View v) {
                //PlayRtspStream(rtspUrl.getEditableText().toString());
                PlayRtspStream("rtsp://172.18.227.23:8554/ch001.sdp");
            }
        });

        videoView = findViewById(R.id.rtsp_player);
    }

    @Override
    protected void onResume() {
        super.onResume();
        Log.d(TAG, "onResume()");
    }

    private void PlayRtspStream(String rtspUrl) {
        videoView.setVideoURI(Uri.parse(rtspUrl));
        videoView.requestFocus();
        videoView.start();
    }
}
```

```xml
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    tools:context=".MainActivity">

    <EditText
        android:id="@+id/url"
        android:layout_width="match_parent"
        android:layout_height="wrap_content" />

    <Button
        android:id="@+id/start_play"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content" />

    <VideoView
        android:id="@+id/rtsp_player"
        android:layout_width="match_parent"
        android:layout_height="500dp" />

</LinearLayout>
```