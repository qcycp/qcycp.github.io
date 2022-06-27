---
title: tmp_Android_youtube_api
tags:
---
Google Youtube API
===

![5b87698e049c65bb41f91e3b43b9ff43.png](:/83e8294fb6e94f8f948ed649e18ac0f8)

```java
import android.os.Bundle;
import android.widget.Toast;

import com.google.android.youtube.player.YouTubeBaseActivity;
import com.google.android.youtube.player.YouTubeInitializationResult;
import com.google.android.youtube.player.YouTubePlayer;
import com.google.android.youtube.player.YouTubePlayerView;
import com.tpv.smartcms.R;

public class YouTubeActivity extends YouTubeBaseActivity implements
        YouTubePlayer.OnInitializedListener  {

    static private final String DEVELOPER_KEY = "AIzaSyAYm39A8TwxDL-n08_A599GtJWCIpEg0gc";
    static private final String VIDEO = "DWjf312g6z8";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_youtube);

        YouTubePlayerView youTubeView = (YouTubePlayerView) findViewById(R.id.youtube_view);
        youTubeView.initialize(DEVELOPER_KEY, this);
    }

    @Override
    public void onInitializationFailure(YouTubePlayer.Provider provider,
                                        YouTubeInitializationResult error) {
        Toast.makeText(this, error.toString(), Toast.LENGTH_LONG).show();
    }
    @Override
    public void onInitializationSuccess(YouTubePlayer.Provider provider, YouTubePlayer player,
                                        boolean wasRestored) {
        player.loadVideo(VIDEO);
    }
}
```

