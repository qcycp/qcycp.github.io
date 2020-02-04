---
title: OpenCV sample in c++
categories: [Programming, c++]
tags:
- c++
- opencv
- Sample code
abbrlink: 648a241a
date: 2020-01-20 09:22:46
description: Sample for reading rtsp stream using opencv in c++
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

### check the opencv version in ubuntu
```
$ pkg-config --modversion opencv
3.2.0
```

### compile
```
g++ main.cpp -o output `pkg-config --cflags --libs opencv`
```

### execute
```
./output
```
