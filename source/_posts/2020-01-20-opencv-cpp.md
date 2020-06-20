---
title: OpenCV sample in C++
abbrlink: 648a241a
date: 2020-01-20 09:22:46
categories: [Programming, C++]
tags:
- C++
- OpenCV
---
```cpp
#include "opencv2/opencv.hpp"
#include <iostream>

using namespace cv;
using namespace std;

int main(int argc, const char** argv)
{
    VideoCapture cap("rtsp://184.72.239.149/vod/mp4:BigBuckBunny_115k.mov");
    if (!cap.isOpened()) {
        cout << "Can not open video stream" << endl;
        return -1;
    }

    Mat frame;
    while(true) {
        cap >> frame;

        if (frame.empty())
            break;

        imshow("image", frame);

        const char key = (char)waitKey(30);
        if (key == 27 || key == 'q') {
            cout << "Exit requested" << endl;
            break;
        }
    }

    cap.release();

    destroyAllWindows();

    return 0;
}
```

### Check the opencv version in ubuntu
```
$ pkg-config --modversion opencv
3.2.0
```

### Compile
##### with system opencv
```
$ g++ main.cpp -o output `pkg-config --cflags --libs opencv`
```
##### with specific opencv library
```
LD_LIBRARY_PATH=/usr/local/lib g++ main.cpp -o output -I/usr/local/include/opencv4 -lopencv_videoio -lopencv_imgcodecs -lopencv_core
```
##### note
```
$ pkg-config --cflags opencv
-I/usr/include/opencv
$ pkg-config --libs opencv
-lopencv_shape -lopencv_stitching -lopencv_superres -lopencv_videostab -lopencv_aruco -lopencv_bgsegm -lopencv_bioinspired -lopencv_ccalib -lopencv_datasets -lopencv_dpm -lopencv_face -lopencv_freetype -lopencv_fuzzy -lopencv_hdf -lopencv_line_descriptor -lopencv_optflow -lopencv_video -lopencv_plot -lopencv_reg -lopencv_saliency -lopencv_stereo -lopencv_structured_light -lopencv_phase_unwrapping -lopencv_rgbd -lopencv_viz -lopencv_surface_matching -lopencv_text -lopencv_ximgproc -lopencv_calib3d -lopencv_features2d -lopencv_flann -lopencv_xobjdetect -lopencv_objdetect -lopencv_ml -lopencv_xphoto -lopencv_highgui -lopencv_videoio -lopencv_imgcodecs -lopencv_photo -lopencv_imgproc -lopencv_core
```

### Execute
```
./output
```
