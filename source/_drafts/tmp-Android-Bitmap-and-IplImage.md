---
title: tmp_Android_Bitmap_and_IplImage
tags:
---
Bitmap與IplImage互轉
===

```java
public Bitmap IplImageToBitmap(IplImage iplImage) {
    Bitmap bitmap = null;
    bitmap = Bitmap.createBitmap(iplImage.width(), iplImage.height(), 
            Bitmap.Config.ARGB_8888);
    bitmap.copyPixelsFromBuffer(iplImage.getByteBuffer());
    return bitmap;
}

public IplImage bitmapToIplImage(Bitmap bitmap) {
    IplImage iplImage;
    iplImage = IplImage.create(bitmap.getWidth(), bitmap.getHeight(),
            IPL_DEPTH_8U, 4);
    bitmap.copyPixelsToBuffer(iplImage.getByteBuffer());
    return iplImage;
}
```


```java
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
```

frame/Mat/Bitmap互轉
```java
FFmpegFrameGrabber grabber = new FFmpegFrameGrabber("video.mp4");
AndroidFrameConverter converterToBitmap = new AndroidFrameConverter();
OpenCVFrameConverter.ToMat converterToMat = new OpenCVFrameConverter.ToMat();

// Grab an image Frame from the video file
Frame frame = grabber.grab();
// Perform a shallow copy to represent frame as a Mat
Mat mat = converterToMat.convert(frame);
// Do some processing on mat with OpenCV
Mat processedMat = ...
// Convert processedMat back to a Frame
frame = converterToMat.convert(processedMat);
// Copy the data to a Bitmap for display or something
Bitmap bitmap = converterToBitmap.convert(frame);
```