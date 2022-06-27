---
title: tmp_Android_SurfaceView
tags:
---
SurfaceView
===

```java
private MediaPlayer mMediaPlayer;
private SurfaceView mmSurfaceView;
private SurfaceHolder mSurfaceHolder;
private Surface mFinalSurface;
private void initSurfaceView() {
    // set up the Surface video sink
    mmSurfaceView = (SurfaceView) findViewById(R.id.surfaceview);
    mSurfaceHolder = mmSurfaceView.getHolder();

    mSurfaceHolder.addCallback(new SurfaceHolder.Callback() {

        @Override
        public void surfaceChanged(SurfaceHolder holder, int format, int width, int height) {
            Log.d(TAG, "surfaceChanged format=" + format + ", width=" + width + ", height=" + height);
        }

        @Override
        public void surfaceCreated(SurfaceHolder holder) {
            Log.d(TAG, "surfaceCreated");
            mFinalSurface = holder.getSurface();

            if (mFinalSurface != null && mMediaPlayer != null) {
                mMediaPlayer.setSurface(mFinalSurface);
            }
        }

        @Override
        public void surfaceDestroyed(SurfaceHolder holder) {
            Log.d(TAG, "surfaceDestroyed");
        }
    });
}
```