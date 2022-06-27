---
title: tmp_Android_rtsp
tags:
---
get rtsp frame using FFmpegFrameGrabber
===

```java
ImageView mImg;
public Bitmap IplImageToBitmap(IplImage src) { 
    int width = src.width; 
    int height = src.height; 
    Bitmap bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888); 
    for(int r=0;r<height;r++) { 
        for(int c=0;c<width;c++) { 
            int gray = (int) Math.floor(cvGet2D(src,r,c).getVal(0)); 
            bitmap.setPixel(c, r, Color.argb(255, gray, gray, gray)); 
        } 
    } 
    return bitmap; 
}

private void readFrame() {
    mImg = findViewById(R.id.img);

    FFmpegFrameGrabber grabber = new FFmpegFrameGrabber("rtsp://172.20.10.8:8554/ch001.sdp");
    grabber.setVideoCodec(avcodec.AV_CODEC_ID_H264);
    grabber.setOption("rtsp_transport", "tcp");
    grabber.setFrameRate(30);
    grabber.setImageWidth(640);
    grabber.setImageHeight(360);

    try {
        grabber.start();
    } catch (FrameGrabber.Exception e) {
        Log.d(TAG, "FrameGrabber.Exception");
        e.printStackTrace();
    }

    new Thread(new Runnable() {
        public void run() {
            AndroidFrameConverter convertToBitmap = new AndroidFrameConverter();
            OpenCVFrameConverter.ToIplImage converter = new OpenCVFrameConverter.ToIplImage();
            try {
                while (true) {
                    grabber.flush();
                    Frame frame = grabber.grabImage();

                    //法一: convert frame to bitmap
                    //Bitmap bitmap = convertToBitmap.convert(frame);
                    //mHandler.obtainMessage(1, bitmap).sendToTarget();

                    //法二: convert frame to IplImage
                    opencv_core.IplImage iplImage = converter.convertToIplImage(frame);
                    Bitmap bitmap = IplImageToBitmap(iplImage);
                    mHandler.obtainMessage(1, bitmap).sendToTarget();
                }
            } catch (FrameGrabber.Exception e) {
                Log.d(TAG, "FrameGrabber.Exception");
                e.printStackTrace();
            }
        }
    }).start();
}

Handler mHandler = new Handler() {
    @Override
    public void handleMessage(Message msg) {
        switch (msg.what) {
            case 1: {
                Bitmap img = (Bitmap) msg.obj;
                mImg.setImageBitmap(img);
                break;
            }
        }
    }
};
```