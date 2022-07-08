---
title: tmp_FACA_Intel_MediaSDK_note
abbrlink: 15d7c4b0
tags:
---
1. cmake > 3.6
2. sudo apt-get install pkg-config libva-dev libdrm-dev


```
$ ./sample_decode h264 -i 1080p.h264 -vaapi
./sample_decode: error while loading shared libraries: libmfx.so.1: cannot open shared object file: No such file or directory

sudo vim /etc/ld.so.conf.d/mediasdk.conf
/opt/intel/mediasdk/lib

$ sudo ldconfig

user@ubuntu:/etc/ld.so.conf.d$ cat intel-mediasdk.conf
/opt/intel/mediasdk/lib64
```


./sample_decode h264 -i test_stream.264 -vaapi

./sample_decode h264 -i mv.h264 -o output.yuv -hw
./sample_decode h264 -i mv.h264 -o output.yuv -sw

$ echo $LIBVA_DRIVER_NAME
iHD

$ echo $LIBVA_DRIVERS_PATH
/opt/intel/mediasdk/lib64

$ echo $LIBVA_DRIVERS_PATH
/usr/lib/x86_64-linux-gnu/dri


LD_LIBRARY_PATH=/opt/intel/mediasdk/lib64 /opt/intel/mediasdk/share/mfx/samples/_bin/sample_decode h264 -i /opt/intel/mediasdk/share/mfx/samples/_bin/content/test_stream.264 -o out.yuv


cv2.VideoCapture('rtsp://.......', cv2.CAP_INTEL_MFX)


user@ubuntu:/opt/intel/mediasdk/share/mfx/samples/_bin$ sudo lspci -nn -s 0:02.0
00:02.0 VGA compatible controller [0300]: Cirrus Logic GD 5446 [1013:00b8]


video=cv2.VideoCapture('input_video.264', cv2.CAP_INTEL_MFX )
video=cv2.VideoCapture('input_video.264', cv2.CAP_FFMPEG )
video=cv2.VideoCapture('input_video.264', cv2.CAP_GSTREAMER )
video=cv2.VideoCapture('input_video.264', cv2.CAP_MSMF )
video=cv2.VideoCapture('input_video.264', cv2.CAP_DSHOW )


https://github.com/opencv/opencv/wiki/MediaSDK-encode-decode-backend
Building OpenCV with MediaSDK support
Install MediaSDK
Make sure corresponding environment variable is set, Windows: INTELMEDIASDKROOT, Linux: MFX_HOME
Build with -DWITH_MFX option turned on:
cmake -DWITH_MFX=ON <path-to-opencv-sources>
cmake --build .

set OpenCV_DIR 

$ ./sample_decode 
Decoding Sample Version 8.3.26.

$ ./sample_decode 
Decoding Sample Version 8.4.27.

$ ffmpeg -hwaccels
ffmpeg version 2.8.15-0ubuntu0.16.04.1 Copyright (c) 2000-2018 the FFmpeg developers
  built with gcc 5.4.0 (Ubuntu 5.4.0-6ubuntu1~16.04.10) 20160609
  configuration: --prefix=/usr --extra-version=0ubuntu0.16.04.1 --build-suffix=-ffmpeg --toolchain=hardened --libdir=/usr/lib/x86_64-linux-gnu --incdir=/usr/include/x86_64-linux-gnu --cc=cc --cxx=g++ --enable-gpl --enable-shared --disable-stripping --disable-decoder=libopenjpeg --disable-decoder=libschroedinger --enable-avresample --enable-avisynth --enable-gnutls --enable-ladspa --enable-libass --enable-libbluray --enable-libbs2b --enable-libcaca --enable-libcdio --enable-libflite --enable-libfontconfig --enable-libfreetype --enable-libfribidi --enable-libgme --enable-libgsm --enable-libmodplug --enable-libmp3lame --enable-libopenjpeg --enable-libopus --enable-libpulse --enable-librtmp --enable-libschroedinger --enable-libshine --enable-libsnappy --enable-libsoxr --enable-libspeex --enable-libssh --enable-libtheora --enable-libtwolame --enable-libvorbis --enable-libvpx --enable-libwavpack --enable-libwebp --enable-libx265 --enable-libxvid --enable-libzvbi --enable-openal --enable-opengl --enable-x11grab --enable-libdc1394 --enable-libiec61883 --enable-libzmq --enable-frei0r --enable-libx264 --enable-libopencv
  libavutil      54. 31.100 / 54. 31.100
  libavcodec     56. 60.100 / 56. 60.100
  libavformat    56. 40.101 / 56. 40.101
  libavdevice    56.  4.100 / 56.  4.100
  libavfilter     5. 40.101 /  5. 40.101
  libavresample   2.  1.  0 /  2.  1.  0
  libswscale      3.  1.101 /  3.  1.101
  libswresample   1.  2.101 /  1.  2.101
  libpostproc    53.  3.100 / 53.  3.100
Hardware acceleration methods:
vdpau

$ ./configure --prefix=/usr/local --extra-version=0ubuntu0.16.04.6 --build-suffix=-ffmpeg --toolchain=hardened --libdir=/usr/lib/x86_64-linux-gnu --incdir=/usr/include/x86_64-linux-gnu --cc=cc --cxx=g++ --enable-gpl --enable-shared --disable-stripping --disable-decoder=libopenjpeg --disable-decoder=libschroedinger --enable-avresample --enable-avisynth --enable-gnutls --enable-ladspa --enable-libass --enable-libbluray --enable-libbs2b --enable-libcaca --enable-libcdio --enable-libflite --enable-libfontconfig --enable-libfreetype --enable-libfribidi --enable-libgme --enable-libgsm --enable-libmodplug --enable-libmp3lame --enable-libopenjpeg --enable-libopus --enable-libpulse --enable-librtmp --enable-libshine --enable-libsnappy --enable-libsoxr --enable-libspeex --enable-libssh --enable-libtheora --enable-libtwolame --enable-libvorbis --enable-libvpx --enable-libwavpack --enable-libwebp --enable-libx265 --enable-libxvid --enable-libzvbi --enable-openal --enable-opengl --enable-libxcb --enable-libdc1394 --enable-libiec61883 --enable-libzmq --enable-frei0r --enable-libx264 --enable-libopencv --enable-vaapi

$ sudo apt-get install libx264-dev nasm yasm frei0r-plugins-dev libghc-gnutls-dev ladspa-sdk-dev libass-dev libbluray-dev libbs2b-dev libcaca-dev libdc1394-22-dev flite1-dev libgsm1-dev libmodplug-dev libmp3lame-dev libopenjp2-7-dev librtmp-dev libshine-dev libsnappy-dev libsoxr-dev libssh-dev libspeex-dev libtheora-dev libtwolame-dev libvorbis-dev libvpx-dev libwavpack-dev libwebp-dev libx265-dev libxvidcore-dev libzvbi-dev libavc1394-dev libopencv-dev libass-dev libopus-dev libpulse-dev libopenal-dev libiec61883-dev libgme-dev libcdio-dev libcdio-paranoia-dev libavc1394-dev libfdk-aac-dev libva-dev

wget https://github.com/zeromq/libzmq/releases/download/v4.2.1/zeromq-4.2.1.tar.gz
sudo apt-get install checkinstall
./configure
make
sudo checkinstall
sudo ldconfig


Note, selecting 'ladspa-sdk' instead of 'ladspa-sdk-dev'
Note, selecting 'flite1-dev' instead of 'flite-dev'

### 10.60.6.29
$ ./configure --prefix=/usr --extra-version=0ubuntu0.16.04.1 --build-suffix=-ffmpeg --toolchain=hardened --libdir=/usr/lib/x86_64-linux-gnu --incdir=/usr/include/x86_64-linux-gnu --cc=cc --cxx=g++ --enable-gpl --enable-shared --disable-stripping --disable-decoder=libopenjpeg --disable-decoder=libschroedinger --enable-avresample --enable-avisynth --enable-gnutls --enable-ladspa --enable-libass --enable-libbluray --enable-libbs2b --enable-libcaca --enable-libcdio --enable-libflite --enable-libfontconfig --enable-libfreetype --enable-libfribidi --enable-libgme --enable-libgsm --enable-libmodplug --enable-libmp3lame --enable-libopenjpeg --enable-libopus --enable-libpulse --enable-librtmp --enable-libshine --enable-libsnappy --enable-libsoxr --enable-libspeex --enable-libssh --enable-libtheora --enable-libtwolame --enable-libvorbis --enable-libvpx --enable-libwavpack --enable-libwebp --enable-libx265 --enable-libxvid --enable-libzvbi --enable-openal --enable-opengl --enable-libxcb --enable-libdc1394 --enable-libiec61883 --enable-libzmq --enable-frei0r --enable-libx264 --enable-libopencv --enable-vaapi

### 192.168.56.5
$ ./configure --prefix=/usr/local --extra-version=0ubuntu0.16.04.6 --build-suffix=-ffmpeg --toolchain=hardened --libdir=/usr/lib/x86_64-linux-gnu --incdir=/usr/include/x86_64-linux-gnu --cc=cc --cxx=g++ --enable-gpl --enable-shared --disable-stripping --disable-decoder=libopenjpeg --disable-decoder=libschroedinger --enable-avresample --enable-avisynth --enable-gnutls --enable-ladspa --enable-libass --enable-libbluray --enable-libbs2b --enable-libcaca --enable-libcdio --enable-libflite --enable-libfontconfig --enable-libfreetype --enable-libfribidi --enable-libgme --enable-libgsm --enable-libmodplug --enable-libmp3lame --enable-libopenjpeg --enable-libopus --enable-libpulse --enable-librtmp --enable-libshine --enable-libsnappy --enable-libsoxr --enable-libspeex --enable-libssh --enable-libtheora --enable-libtwolame --enable-libvorbis --enable-libvpx --enable-libwavpack --enable-libwebp --enable-libx265 --enable-libxvid --enable-libzvbi --enable-openal --enable-opengl --enable-libxcb --enable-libdc1394 --enable-libiec61883 --enable-libzmq --enable-frei0r --enable-libx264 --enable-libopencv --enable-vaapi



### vas ffmpeg configuration
user@ubuntu:~/mediasdk/FFmpeg$ ffmpeg -buildconf
ffmpeg version 2.8.15-0ubuntu0.16.04.1 Copyright (c) 2000-2018 the FFmpeg developers
  built with gcc 5.4.0 (Ubuntu 5.4.0-6ubuntu1~16.04.10) 20160609
  configuration: --prefix=/usr --extra-version=0ubuntu0.16.04.1 --build-suffix=-ffmpeg --toolchain=hardened --libdir=/usr/lib/x86_64-linux-gnu --incdir=/usr/include/x86_64-linux-gnu --cc=cc --cxx=g++ --enable-gpl --enable-shared --disable-stripping --disable-decoder=libopenjpeg --disable-decoder=libschroedinger --enable-avresample --enable-avisynth --enable-gnutls --enable-ladspa --enable-libass --enable-libbluray --enable-libbs2b --enable-libcaca --enable-libcdio --enable-libflite --enable-libfontconfig --enable-libfreetype --enable-libfribidi --enable-libgme --enable-libgsm --enable-libmodplug --enable-libmp3lame --enable-libopenjpeg --enable-libopus --enable-libpulse --enable-librtmp --enable-libschroedinger --enable-libshine --enable-libsnappy --enable-libsoxr --enable-libspeex --enable-libssh --enable-libtheora --enable-libtwolame --enable-libvorbis --enable-libvpx --enable-libwavpack --enable-libwebp --enable-libx265 --enable-libxvid --enable-libzvbi --enable-openal --enable-opengl --enable-x11grab --enable-libdc1394 --enable-libiec61883 --enable-libzmq --enable-frei0r --enable-libx264 --enable-libopencv
  libavutil      54. 31.100 / 54. 31.100
  libavcodec     56. 60.100 / 56. 60.100
  libavformat    56. 40.101 / 56. 40.101
  libavdevice    56.  4.100 / 56.  4.100
  libavfilter     5. 40.101 /  5. 40.101
  libavresample   2.  1.  0 /  2.  1.  0
  libswscale      3.  1.101 /  3.  1.101
  libswresample   1.  2.101 /  1.  2.101
  libpostproc    53.  3.100 / 53.  3.100

  configuration:
    --prefix=/usr
    --extra-version=0ubuntu0.16.04.1
    --build-suffix=-ffmpeg
    --toolchain=hardened
    --libdir=/usr/lib/x86_64-linux-gnu
    --incdir=/usr/include/x86_64-linux-gnu
    --cc=cc
    --cxx=g++
    --enable-gpl
    --enable-shared
    --disable-stripping
    --disable-decoder=libopenjpeg
    --disable-decoder=libschroedinger
    --enable-avresample
    --enable-avisynth
    --enable-gnutls
    --enable-ladspa
    --enable-libass
    --enable-libbluray
    --enable-libbs2b
    --enable-libcaca
    --enable-libcdio
    --enable-libflite
    --enable-libfontconfig
    --enable-libfreetype
    --enable-libfribidi
    --enable-libgme
    --enable-libgsm
    --enable-libmodplug
    --enable-libmp3lame
    --enable-libopenjpeg
    --enable-libopus
    --enable-libpulse
    --enable-librtmp
    --enable-libschroedinger
    --enable-libshine
    --enable-libsnappy
    --enable-libsoxr
    --enable-libspeex
    --enable-libssh
    --enable-libtheora
    --enable-libtwolame
    --enable-libvorbis
    --enable-libvpx
    --enable-libwavpack
    --enable-libwebp
    --enable-libx265
    --enable-libxvid
    --enable-libzvbi
    --enable-openal
    --enable-opengl
    --enable-x11grab
    --enable-libdc1394
    --enable-libiec61883
    --enable-libzmq
    --enable-frei0r
    --enable-libx264
    --enable-libopencv

user@ubuntu:~/mediasdk/FFmpeg$ ffmpeg -hwaccels
ffmpeg version 2.8.15-0ubuntu0.16.04.1 Copyright (c) 2000-2018 the FFmpeg developers
  built with gcc 5.4.0 (Ubuntu 5.4.0-6ubuntu1~16.04.10) 20160609
  configuration: --prefix=/usr --extra-version=0ubuntu0.16.04.1 --build-suffix=-ffmpeg --toolchain=hardened --libdir=/usr/lib/x86_64-linux-gnu --incdir=/usr/include/x86_64-linux-gnu --cc=cc --cxx=g++ --enable-gpl --enable-shared --disable-stripping --disable-decoder=libopenjpeg --disable-decoder=libschroedinger --enable-avresample --enable-avisynth --enable-gnutls --enable-ladspa --enable-libass --enable-libbluray --enable-libbs2b --enable-libcaca --enable-libcdio --enable-libflite --enable-libfontconfig --enable-libfreetype --enable-libfribidi --enable-libgme --enable-libgsm --enable-libmodplug --enable-libmp3lame --enable-libopenjpeg --enable-libopus --enable-libpulse --enable-librtmp --enable-libschroedinger --enable-libshine --enable-libsnappy --enable-libsoxr --enable-libspeex --enable-libssh --enable-libtheora --enable-libtwolame --enable-libvorbis --enable-libvpx --enable-libwavpack --enable-libwebp --enable-libx265 --enable-libxvid --enable-libzvbi --enable-openal --enable-opengl --enable-x11grab --enable-libdc1394 --enable-libiec61883 --enable-libzmq --enable-frei0r --enable-libx264 --enable-libopencv
  libavutil      54. 31.100 / 54. 31.100
  libavcodec     56. 60.100 / 56. 60.100
  libavformat    56. 40.101 / 56. 40.101
  libavdevice    56.  4.100 / 56.  4.100
  libavfilter     5. 40.101 /  5. 40.101
  libavresample   2.  1.  0 /  2.  1.  0
  libswscale      3.  1.101 /  3.  1.101
  libswresample   1.  2.101 /  1.  2.101
  libpostproc    53.  3.100 / 53.  3.100
Hardware acceleration methods:
vdpau

$ gst-inspect-1.0 vaapi
Plugin Details:
  Name                     vaapi
  Description              VA-API based elements
  Filename                 /usr/lib/x86_64-linux-gnu/gstreamer-1.0/libgstvaapi.so
  Version                  1.8.3
  License                  LGPL
  Source module            gstreamer-vaapi
  Source release date      2016-06-09
  Binary package           gstreamer-vaapi
  Origin URL               http://bugzilla.gnome.org/enter_bug.cgi?product=GStreamer

  vaapijpegdec: VA-API JPEG decoder
  vaapidecode: VA-API decoder
  vaapipostproc: VA-API video postprocessing
  vaapisink: VA-API sink
  vaapih264enc: VA-API H.264 encoder
  vaapimpeg2enc: VA-API MPEG-2 encoder
  vaapijpegenc: VA-API JPEG encoder
  vaapivp8enc: VA-API VP8 encoder
  vaapih265enc: VA-API H.265 encoder
  vaapidecodebin: VA-API Decode Bin

  10 features:
  +-- 10 elements



declare -x LIBVA_DRIVER_NAME="iHD"
declare -x LIBVA_DRIVERS_PATH="/opt/intel/mediasdk/lib64"
declare -x MFX_HOME="/opt/intel/mediasdk"

sudo apt-get install libgstreamer1.0-dev gstreamer1.0-plugins-{base,good,bad} libgstreamer-plugins-{base,good,bad}1.0-dev gstreamer1.0-libav gstreamer1.0-vaapi gstreamer1.0-tools


sudo apt install libgstreamer1.0 gstreamer1.0-plugins-{base,good,bad,ugly} gstreamer1.0-libav gstreamer1.0-vaapi 


sudo apt-get install h264enc
sudo apt-get install v4l-utils

http://www.linuxfromscratch.org/blfs/view/svn/multimedia/gstreamer10.html
http://www.linuxfromscratch.org/blfs/view/cvs/multimedia/gst10-plugins-base.html
http://www.linuxfromscratch.org/blfs/view/cvs/multimedia/gst10-plugins-good.html
http://www.linuxfromscratch.org/blfs/view/cvs/multimedia/gst10-plugins-bad.html
http://www.linuxfromscratch.org/blfs/view/cvs/multimedia/gst10-plugins-ugly.html
http://www.linuxfromscratch.org/blfs/view/cvs/multimedia/ffmpeg.html
http://www.linuxfromscratch.org/blfs/view/cvs/multimedia/gst10-libav.html
http://www.linuxfromscratch.org/blfs/view/cvs/multimedia/gstreamer10-vaapi.html

export GST_PLUGIN_PATH=/usr/lib/x86_64-linux-gnu/gstreamer-1.0

sudo apt install -y intel-gpu-tools
sudo intel_gpu_top
sudo intel-gpu-overlay

libomxil-bellagio-dev


https://gist.github.com/artizirk/af250062c4cdafd1c311c9194237a4ff

gst-launch-1.0 videotestsrc ! video/x-raw,framerate=20/1 ! videoscale ! videoconvert ! appsink

gst-launch-1.0 -v filesrc location=/opt/intel/mediasdk/share/mfx/samples/_bin/content/test_stream.264 ! qtdemux ! vaapidecodebin ! vaapisink fullscreen=true

gst-launch-1.0 -v filesrc location=/opt/intel/openvino/openvx/samples/samples/census_transform/toy_flower.mp4 ! qtdemux ! vaapidecodebin ! vaapisink

GST_DEBUG=3 gst-launch-1.0 flvmux name=mux streamable=true ! rtmpsink sync=true location="rtmp://xxxxxxx" rtspsrc location="rtsp://admin:admin@192.168.0.162:554/cam/realmonitor?channel=1&subtype=0"   ! rtph264depay ! queue ! h264parse ! vaapidecode ! queue ! vaapiencode_h264 rate-control=cbr tune=high-compression ! mux
gst-launch rtspsrc location=rtsp://ipofthecamera ! rtph264depay ! vaapidecode ! vaapisink
gst-launch-0.10 rtspsrc location=rtsp://192.168.xx.xxx/ latency=xx ! rtph264depay ! decodebin ! ffmpegcolorspace ! fbdevsink device=/dev/fb0 sync=false
gst-launch-0.10 rtspsrc location=rtsp://192.168.6.176/ latency=10 ! rtph264depay ! decodebin ! ffmpegcolorspace ! fbdevsink device=/dev/fb0  sync=false
##### local camera
gst-launch-1.0 nvcamerasrc ! video/x-raw(memory:NVMM), width=(int)640, height=(int)480, format=(string)I420, framerate=(fraction)24/1 ! nvvidconv flip-method=0 ! video/x-raw, format=(string)I420 ! videoconvert ! video/x-raw, format=(string)BGR ! appsink

##### save rtsp stream to file
gst-launch -e rtspsrc location=url ! decodebin ! x264enc ! mp4mux ! filesink location=file.mp4
gst-launch-1.0 -e rtspsrc location=rtsp://admin:pass@192.168.85.7/rtsph2641080p protocols=tcp ! rtph264depay ! h264parse ! mp4mux ! filesink location=~/camera.mp4

##### opencv and gstreamer
import cv2
gst = "rtspsrc location=rtsp://184.72.239.149/vod/mp4:BigBuckBunny_115k.mov latency=0 ! rtph264depay ! h264parse ! omxh264dec ! videoconvert ! appsink"
video_capture = cv2.VideoCapture(gst)

##### Use Gstreamer to decode video stream
pipline_in='rtspsrc location=rtsp://web_camera_ip latency=400 ! queue ! rtph264depay ! h264parse ! omxh264dec ! videoconvert ! appsink'
stream_in = cv2.VideoCapture(pipline_in)

##### use v4l2h264dec and v4l2video12convert via GPU
Convert color format using GPU in Gstreamer (alternative to videoconvert).
https://www.raspberrypi.org/forums/viewtopic.php?f=70&t=245852&p=1504977#p1504977
pipline_r = 'rtspsrc location=rtsp://web_camera_ip latency=100 ! rtph264depay ! h264parse ! v4l2h264dec capture-io-mode=4 ! v4l2video12convert output-io-mode=5 capture-io-mode=4 ! appsink sync=false'
vs = cv2.VideoCapture(pipline_r)

  gst-launch-1.0 --gst-debug-level=3 filesrc location=/path/test.mp4 ! qtdemux ! h264parse ! v4l2h264dec capture-io-mode=4 ! v4l2video12convert output-io-mode=5 capture-io-mode=4 ! video/x-raw, format=BGR ! fakesink




gst-launch-1.0 rtspsrc location=rtsp://localhost:8554/test latency=100 ! queue ! rtph264depay ! h264parse ! avdec_h264 ! videoconvert ! videoscale ! video/x-raw,width=640,height=480 ! autovideosink
gst-launch-1.0 -v playbin uri=rtsp://localhost:8554/test uridecodebin0::source::latency=300
gst-launch-1.0 rtspsrc location=rtspt://10.60.6.28:8554/CH001.sdp ! rtph265depay ! h265parse ! rtph265pay name=pay0 pt=96
gst-launch-1.0 rtspsrc location=rtsp://wowzaec2demo.streamlock.net/vod/mp4:BigBuckBunny_115k.mov latency=0 ! rtph264depay ! fakesink

video/x-raw,width=640,height=480

# standalone ok
gst-launch-1.0 rtspsrc location=rtsp://10.60.6.28:8554/CH001.sdp ! queue ! rtph264depay ! h264parse ! avdec_h264 ! videoconvert ! videoscale ! autovideosink

gst-launch-1.0 playbin uri=rtsp://10.60.6.28:8554/CH001.sdp
==> CPU 30
==> CPU 5~6

gst-launch-1.0 rtspsrc location=rtsp://10.60.6.28:8554/CH001.sdp ! queue ! rtph264depay ! h264parse ! avdec_h264 ! videoconvert ! video/x-raw, format=BGR ! glimagesink sync=false
==> CPU 65~80

gst-launch-1.0 rtspsrc location=rtsp://10.60.6.28:8554/CH001.sdp ! queue ! rtph264depay ! h264parse ! avdec_h264 ! videoconvert ! video/x-raw, format=RGBA ! glimagesink sync=false
==> CPU 40~50

gst-launch-1.0 rtspsrc location=rtsp://10.60.6.28:8554/CH001.sdp ! queue ! rtph264depay ! h264parse ! vaapidecodebin ! videoconvert ! video/x-raw, format=RGBA ! glimagesink sync=false
==> CPU 

gst-launch-1.0 rtspsrc location=rtsp://10.60.6.28:8554/CH001.sdp ! rtph264depay ! h264parse ! vaapidecodebin ! glimagesink sync=false
==> CPU 15~20

#opencv ok
string pipeline = "rtspsrc location=rtsp://10.60.6.28:8554/CH001.sdp ! queue ! rtph264depay ! h264parse ! avdec_h264 ! videoconvert ! videoscale ! video/x-raw,width=640,height=480 ! appsink";

string pipeline = "rtspsrc location=rtsp://10.60.6.28:8554/CH001.sdp ! queue ! rtph264depay ! h264parse ! avdec_h264 ! videoconvert ! appsink";






string pipeline = "rtspsrc location=rtsp://10.60.6.28:8554/CH001.sdp ! queue ! rtph264depay ! h264parse ! vaapidecodebin ! videoconvert ! appsink";

VideoCapture cap = VideoCapture(pipeline, CAP_GSTREAMER);

# rtsp online
rtsp://wowzaec2demo.streamlock.net/vod/mp4:BigBuckBunny_115k.mov
gst-launch-1.0 rtspsrc location=rtsp://wowzaec2demo.streamlock.net/vod/mp4:BigBuckBunny_115k.mov latency=100 ! rtph264depay ! h264parse ! v4l2h264dec capture-io-mode=4 ! v4l2video12convert output-io-mode=5 capture-io-mode=4 ! autovideosink sync=false


gst-launch-1.0 rtspsrc location=rtsp://wowzaec2demo.streamlock.net/vod/mp4:BigBuckBunny_115k.mov ! queue ! rtph264depay ! h264parse ! vaapih264dec ! videoconvert ! video/x-raw, format=BGR ! autovideosink sync=false

gst-launch-1.0 rtspsrc location=rtsp://wowzaec2demo.streamlock.net/vod/mp4:BigBuckBunny_115k.mov ! h264parse ! omxh264dec ! queue max-size-bytes=0 max-size-time=0 max-size-buffers=0 ! vspfilter
bufferpool-library=/usr/lib/libv4l/plugins/v4l-gst-bufferpool/libv4l-gst-bufferpool-rel.so
min-buffers=2

gst-launch-1.0 rtspsrc location=rtsp://wowzaec2demo.streamlock.net/vod/mp4:BigBuckBunny_115k.mov ! queue ! rtph264depay ! h264parse ! vaapidecodebin ! videoconvert ! video/x-raw, format=BGR ! autovideosink sync=false


ffmpegcolorspace


ffmpeg -c:v h264_v4l2m2m -i rtsp://wowzaec2demo.streamlock.net/vod/mp4:BigBuckBunny_115k.mov -f rawvideo output_nv12

# CPU
ffmpeg -y -vsync 0 -i rtsp://wowzaec2demo.streamlock.net/vod/mp4:BigBuckBunny_115k.mov -c:v libx264 -crf 20 output.mp4
ffmpeg -y -vsync 0 -i rtsp://10.60.6.28:8554/CH001.sdp -f rawvideo test.mp4
ffmpeg -vaapi_device /dev/dri/renderD128 -i rtsp://10.60.6.28:8554/CH001.sdp -c:v libx264 -crf 20 output.mp4
ffmpeg -vaapi_device /dev/dri/renderD128 -f v4l2 -video_size 1920x1080 -i /dev/video0 -vf 'format=nv12,hwupload' -c:v h264_vaapi output.mp4

ffmpeg -i rtsp://wowzaec2demo.streamlock.net/vod/mp4:BigBuckBunny_115k.mov -f null -

ffmpeg -i rtsp://wowzaec2demo.streamlock.net/vod/mp4:BigBuckBunny_115k.mov -c:v libx264 -crf 20 output.mp4

LIBVA_DRIVER_NAME=i965 LIBVA_DRIVERS_PATH=/usr/lib/x86_64-linux-gnu/dri ffmpeg -vsync 1 -rtsp_transport tcp -i rtsp://10.60.6.28:8554/CH001.sdp -pix_fmt yuvj420p -vcodec rawvideo -an -sn -f image2pipe -


# GPU
ffmpeg -y -vsync 0 -hwaccel vaapi -c:v h264_vaapi -i rtsp://wowzaec2demo.streamlock.net/vod/mp4:BigBuckBunny_115k.mov -f rawvideo -c:v h264_nvenc test.mp4
ffmpeg -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -i rtsp://10.60.6.28:8554/CH001.sdp -c:v libx264 -crf 20 output.mp4

ffmpeg -y -vsync 0 -hwaccel vaapi -c:v h264 -i rtsp://wowzaec2demo.streamlock.net/vod/mp4:BigBuckBunny_115k.mov -f rawvideo -c:v h264_vaapi test.mp4

ffmpeg -hwaccel vaapi -c:v h264_vaapi -i rtsp://wowzaec2demo.streamlock.net/vod/mp4:BigBuckBunny_115k.mov -c:v h264_vaapi output.mp4


ffmpeg -hwaccel vaapi -vaapi_device /dev/dri/renderD128 -i output2.mp4 -c:v libx264 -crf 20 output3.mp4

ffmpeg -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -i rtsp://wowzaec2demo.streamlock.net/vod/mp4:BigBuckBunny_115k.mov -f null -
ffmpeg -vsync 1 -rtsp_transport tcp -hwaccel vaapi -vaapi_device /dev/dri/renderD128 -i rtsp://wowzaec2demo.streamlock.net/vod/mp4:BigBuckBunny_115k.mov -c:v libx264 -crf 20 output.mp4


ffmpeg -vaapi_device /dev/dri/renderD128 -i rtsp://10.60.6.28:8554/CH001.sdp -c:v libx264 -crf 20 output.mp4

LIBVA_DRIVER_NAME=i965 LIBVA_DRIVERS_PATH=/usr/lib/x86_64-linux-gnu/dri ffmpeg -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -vsync 1 -rtsp_transport tcp -i rtsp://10.60.6.28:8554/CH001.sdp -f null -



hwaccel_device => only using deocder
vaapi_device => using both decoder and encoder

# Use FFmpeg to Decode H.264 Stream with NVIDIA GPU Acceleration
https://medium.com/@fanzongshaoxing/use-ffmpeg-to-decode-h-264-stream-with-nvidia-gpu-acceleration-16b660fd925d

# streaming with Media SDK 
https://software.intel.com/en-us/forums/media/topic/311850

# Video Encoding Using Integrated Intel® HD Graphics
https://software.intel.com/en-us/articles/video-encoding-using-the-integrated-intel-hd-graphics

# Hardware/VAAPI
https://trac.ffmpeg.org/wiki/Hardware/VAAPI

# FFmpeg在Intel GPU上的硬件加速与优化
https://blog.csdn.net/vn9PLgZvnPs1522s82g/article/details/83572780
https://blog.csdn.net/LeoChen1983/article/details/72742656

# MediaSDK encode decode backend
https://github.com/opencv/opencv/wiki/MediaSDK-encode-decode-backend

# Video capture and write benchmark
https://github.com/opencv/opencv/wiki/Video-capture-and-write-benchmark
http://trac.gateworks.com/wiki/linux/media


$ ffmpeg  -hide_banner -encoders | grep vaapi
 V..... h264_vaapi           H.264/AVC (VAAPI) (codec h264)
 V..... hevc_vaapi           H.265/HEVC (VAAPI) (codec hevc)
 V..... mjpeg_vaapi          MJPEG (VAAPI) (codec mjpeg)
 V..... mpeg2_vaapi          MPEG-2 (VAAPI) (codec mpeg2video)
 V..... vp8_vaapi            VP8 (VAAPI) (codec vp8)
 V..... vp9_vaapi            VP9 (VAAPI) (codec vp9)

$ ffmpeg -hide_banner -decoders | grep 264
 VFS..D h264                 H.264 / AVC / MPEG-4 AVC / MPEG-4 part 10
 V..... h264_v4l2m2m         V4L2 mem2mem H.264 decoder wrapper (codec h264)


--enable-hwaccel=h264_vaapi

gst-launch-1.0 videotestsrc pattern=snow ! autovideosink
smpte (0) – SMPTE 100%% color bars
snow (1) – Random (television snow)
black (2) – 100%% Black
white (3) – 100%% White
red (4) – Red
green (5) – Green
blue (6) – Blue
checkers-1 (7) – Checkers 1px
checkers-2 (8) – Checkers 2px
checkers-4 (9) – Checkers 4px
checkers-8 (10) – Checkers 8px
circular (11) – Circular
blink (12) – Blink
smpte75 (13) – SMPTE 75%% color bars
zone-plate (14) – Zone plate
gamut (15) – Gamut checkers
chroma-zone-plate (16) – Chroma zone plate
solid-color (17) – Solid color
ball (18) – Moving ball
smpte100 (19) – SMPTE 100%% color bars
bar (20) – Bar
pinwheel (21) – Pinwheel
spokes (22) – Spokes
gradient (23) – Gradient
colors (24) – Colors

# gst-inspect-1.0 --version
gst-inspect-1.0 version 1.14.5
GStreamer 1.14.5

v4l2h264dec and v4l2convert are supported with the 4.19 kernel and GStreamer 1.14 or later. 
v4l2h264dec capture-io-mode=4 ! v4l2convert output-io-mode=5 ! appsink


```
import sys
import cv2

print(cv2.__version__)

gst = "rtspsrc location=rtsp://184.72.239.149/vod/mp4:BigBuckBunny_115k.mov latency=0 ! rtph264depay ! h264parse ! omxh264dec ! videoconvert ! appsink"

cap = cv2.VideoCapture(gst)
if not cap.isOpened() :
    print("capture failed")
    exit()

ret,frame = cap.read()
while ret:
    cv2.imshow('frame',frame)
    ret,frame = cap.read()
    if(cv2.waitKey(1) & 0xFF == ord('q')):
        break;

cap.release()
cv2.destroyAllWindows()
```

#rtsp stream
```
sudo apt-get install libgstrtspserver-1.0 libgstreamer1.0-dev
wget https://gstreamer.freedesktop.org/src/gst-rtsp/gst-rtsp-server-1.14.1.tar.xz

tar -xvf gst-rtsp-server-1.14.1.tar.xz
cd  gst-rtsp-server-1.14.1
cd examples
gcc test-launch.c -o test-launch $(pkg-config --cflags --libs gstreamer-1.0 gstreamer-rtsp-server-1.0)
./test-launch "nvarguscamerasrc ! video/x-raw(memory:NVMM), format=NV12, width=3820, height=2464, framerate=30/1 ! nvvidconv ! video/x-raw, width=640, height=480, format=NV12, framerate=30/1 ! omxh265enc ! rtph265pay name=pay0 pt=96 config-interval=1"
```

sudo apt-get install vdpau-va-driver
vainfo --display drm --device /dev/dri/renderD128

sudo cat /sys/kernel/debug/dri/0/name


#查看libva版本
dpkg-query --showformat='${Package}: ${Version}\n' --show | grep libva
#查看vainfo版本
dpkg-query --showformat='${Package}: ${Version}\n' --show | grep vainfo
#查看i965版本
dpkg-query --showformat='${Package}: ${Version}\n' --show | grep i965



user@ubuntu:~$ dpkg-query --showformat='${Package}: ${Version}\n' --show | grep libva
libva-drm1: 1.7.1-0intel1
libva-wayland1: 1.7.1-0intel1
libva-x11-1: 1.7.1-0intel1
libva1: 1.7.1-0intel1
user@ubuntu:~$ dpkg-query --showformat='${Package}: ${Version}\n' --show | grep vainfo
vainfo: 1.7.1-0intel1
user@ubuntu:~$ dpkg-query --showformat='${Package}: ${Version}\n' --show | grep i965
i965-va-driver: 1.7.1-0intel1


$ LIBVA_DRIVER_NAME='iHD' LIBVA_DRIVERS_PATH=/opt/intel/mediasdk/lib64 vainfo --display drm
LIBVA_DRIVER_NAME='i965' LIBVA_DRIVERS_PATH=/usr/lib/x86_64-linux-gnu/dri vainfo --display drm


LIBVA_DRIVER_NAME='i965' ffmpeg -v error -vaapi_device /dev/dri/renderD128 -i input.mp4 -vf 'format=nv12,hwupload' -c:v h264_vaapi -c:a copy -y out.vaapi.mp4



user@ubuntu:~$ sudo lshw -C video
  *-display:0
       description: VGA compatible controller
       product: GD 5446
       vendor: Cirrus Logic
       physical id: 2
       bus info: pci@0000:00:02.0
       version: 00
       width: 32 bits
       clock: 33MHz
       capabilities: vga_controller rom
       configuration: driver=cirrus latency=0
       resources: irq:0 memory:f0000000-f1ffffff memory:fe110000-fe110fff memory:c0000-dffff
  *-display:1
       description: VGA compatible controller
       product: Intel Corporation
       vendor: Intel Corporation
       physical id: 7
       bus info: pci@0000:00:07.0
       version: 00
       width: 64 bits
       clock: 33MHz
       capabilities: pciexpress msi pm vga_controller bus_master cap_list
       configuration: driver=i915 latency=0
       resources: irq:32 memory:fd000000-fdffffff memory:e0000000-efffffff ioport:c0c0(size=64)



using Intel graphics acceleration.(VAAPI(i965), not MediaSDK(iHD))

libva-intel-driver(i965). 
sudo apt-get install libva-intel-vaapi-driver

gst-launch-1.0 filesrc location=1.mp4 ! qtdemux ! vaapidecodebin ! vaapisink


https://wiki.archlinux.org/index.php/Hardware_video_acceleration



libva
git clone https://github.com/01org/libva
https://github.com/intel/libva.git
cd libva
./autogen.sh
./configure
time make -j$(nproc) VERBOSE=1
sudo make -j$(nproc) install

libva-utils
git clone https://github.com/intel/libva-utils
cd libva-utils
./autogen.sh
./configure
time make -j$(nproc) VERBOSE=1
sudo make -j$(nproc) install


https://github.com/opencv/opencv/blob/master/samples/cpp/videocapture_gstreamer_pipeline.cpp
gst-default
gst-basic
gst-vaapi
gst-libav
gst-mfx



https://gitlab.freedesktop.org/gstreamer/gstreamer-vaapi/
gst-launch-1.0 -v filesrc location=/path/to/video.mp4 ! qtdemux ! vaapidecodebin ! vaapisink fullscreen=true


##### Configuring VA-API
https://wiki.archlinux.org/index.php/Hardware_video_acceleration#Configuring_VA-API

For libva-intel-driver use i965.
For intel-media-driver use iHD.


mediasdk
https://software.intel.com/en-us/articles/the-openvino-toolkit-and-the-intel-media-sdk-part-1
https://software.intel.com/en-us/articles/build-and-debug-open-source-media-stack
https://forum.up-community.org/discussion/3398/opencv-with-intel-media-sdk
https://docs.openvinotoolkit.org/latest/_docs_install_guides_installing_openvino_windows.html
https://cv-tricks.com/how-to/installation-of-opencv-4-1-0-in-windows-10-from-source/
http://voidsoul.cc/2019/10/03/ffmpeg-vaapi/
https://github.com/Intel-Media-SDK/MediaSDK/wiki/Build-Media-SDK-on-Ubuntu
https://github.com/opencv/opencv/wiki/Video-capture-and-write-benchmark

https://gstreamer.freedesktop.org/data/doc/gstreamer/head/gstreamer-vaapi-plugins/html/ch01.html

https://blog.csdn.net/tosonw/article/details/90412626

#### build openvino/opencv
0. sudo su
1. source /opt/intel/openvino/bin/setupvars.sh
2. cd /opt/intel/openvino/opencv/samples
3. mkdir samples_build
4. cd samples_build
5. cmake /opt/intel/openvino/opencv/samples
6. cmake --build .


# "CMakeLists.txt"
cmake_minimum_required(VERSION 3.5.1)

project(openvino_opencv_samples)
set (CMAKE_CXX_STANDARD 11)

find_package(Threads)
find_package(OpenCV REQUIRED PATHS "..")
message(STATUS "OpenCV library status:")
message(STATUS "    version: ${OpenCV_VERSION}")
message(STATUS "    libraries: ${OpenCV_LIBS}")
message(STATUS "    include path: ${OpenCV_INCLUDE_DIRS}")
message(STATUS "    include path: ${CMAKE_THREAD_LIBS_INIT}")

file(GLOB_RECURSE files "*.cpp")
foreach(file ${files})
  get_filename_component(name "${file}" NAME_WE)
  add_executable(openvino_sample_${name} ${file})
  target_link_libraries(openvino_sample_${name} ${OpenCV_LIBS})
  target_link_libraries(openvino_sample_${name} ${CMAKE_THREAD_LIBS_INIT})
endforeach()



export OpenCV_DIR=/opt/intel/openvino/opencv/cmake
export LD_LIBRARY_PATH=/opt/intel/openvino/opencv/lib

export LD_LIBRARY_PATH=/usr/local/lib/x86_64-linux-gnu
export GST_PLUGIN_PATH=/usr/local/lib/x86_64-linux-gnu/gstreamer-1.0

export LIBVA_DRIVER_NAME=i965
export LIBVA_DRIVERS_PATH=/usr/lib/x86_64-linux-gnu/dri













#!/bin/bash --debugger
set -e

BRANCH="master"
if grep -q BCM2708 /proc/cpuinfo; then
    echo "RPI BUILD!"
    RPI="1"
fi

[ -n "$1" ] && BRANCH=$1

# Create a log file of the build as well as displaying the build on the tty as it runs
exec > >(tee build_gstreamer.log)
exec 2>&1

# Update and Upgrade the Pi, otherwise the build may fail due to inconsistencies
grep -q BCM2708 /proc/cpuinfo && sudo apt-get update && sudo apt-get upgrade -y --force-yes

# Get the required libraries
sudo apt-get install -y --force-yes build-essential autotools-dev automake autoconf \
                                    libtool autopoint libxml2-dev zlib1g-dev libglib2.0-dev \
                                    pkg-config bison flex python3 git gtk-doc-tools libasound2-dev \
                                    libgudev-1.0-dev libxt-dev libvorbis-dev libcdparanoia-dev \
                                    libpango1.0-dev libtheora-dev libvisual-0.4-dev iso-codes \
                                    libgtk-3-dev libraw1394-dev libiec61883-dev libavc1394-dev \
                                    libv4l-dev libcairo2-dev libcaca-dev libspeex-dev libpng-dev \
                                    libshout3-dev libjpeg-dev libaa1-dev libflac-dev libdv4-dev \
                                    libtag1-dev libwavpack-dev libpulse-dev libsoup2.4-dev libbz2-dev \
                                    libcdaudio-dev libdc1394-22-dev ladspa-sdk libass-dev \
                                    libcurl4-gnutls-dev libdca-dev libdirac-dev libdvdnav-dev \
                                    libexempi-dev libexif-dev libfaad-dev libgme-dev libgsm1-dev \
                                    libiptcdata0-dev libkate-dev libmimic-dev libmms-dev \
                                    libmodplug-dev libmpcdec-dev libofa0-dev libopus-dev \
                                    librsvg2-dev librtmp-dev libschroedinger-dev libslv2-dev \
                                    libsndfile1-dev libsoundtouch-dev libspandsp-dev libx11-dev \
                                    libxvidcore-dev libzbar-dev libzvbi-dev liba52-0.7.4-dev \
                                    libcdio-dev libdvdread-dev libmad0-dev libmp3lame-dev \
                                    libmpeg2-4-dev libopencore-amrnb-dev libopencore-amrwb-dev \
                                    libsidplay1-dev libtwolame-dev libx264-dev libusb-1.0 \
                                    python-gi-dev yasm python3-dev libgirepository1.0-dev

# get the repos if they're not already there
cd $HOME
[ ! -d src ] && mkdir src
cd src
[ ! -d gstreamer ] && mkdir gstreamer
cd gstreamer

# get repos if they are not there yet
[ ! -d gstreamer ] && git clone git://anongit.freedesktop.org/git/gstreamer/gstreamer
[ ! -d gst-plugins-base ] && git clone git://anongit.freedesktop.org/git/gstreamer/gst-plugins-base
[ ! -d gst-plugins-good ] && git clone git://anongit.freedesktop.org/git/gstreamer/gst-plugins-good
[ ! -d gst-plugins-bad ] && git clone git://anongit.freedesktop.org/git/gstreamer/gst-plugins-bad
[ ! -d gst-plugins-ugly ] && git clone git://anongit.freedesktop.org/git/gstreamer/gst-plugins-ugly
[ ! -d gst-libav ] && git clone git://anongit.freedesktop.org/git/gstreamer/gst-libav
[ ! -d gst-omx ] && git clone git://anongit.freedesktop.org/git/gstreamer/gst-omx
[ ! -d gst-python ] && git clone git://anongit.freedesktop.org/git/gstreamer/gst-python
[ ! $RPI ] && [ ! -d gstreamer-vaapi ] && git clone git://anongit.freedesktop.org/gstreamer/gstreamer-vaapi

export LD_LIBRARY_PATH=/usr/local/lib/
# checkout branch (default=master) and build & install
cd gstreamer
git checkout -t origin/$BRANCH || true
sudo make uninstall || true
git pull
./autogen.sh --disable-gtk-doc
make
sudo make install
cd ..

cd gst-plugins-base
git checkout -t origin/$BRANCH || true
sudo make uninstall || true
git pull
./autogen.sh --disable-gtk-doc
make
sudo make install
cd ..

cd gst-plugins-good
git checkout -t origin/$BRANCH || true
sudo make uninstall || true
git pull
./autogen.sh --disable-gtk-doc
make
sudo make install
cd ..

cd gst-plugins-ugly
git checkout -t origin/$BRANCH || true
sudo make uninstall || true
git pull
./autogen.sh --disable-gtk-doc
make
sudo make install
cd ..

cd gst-libav
git checkout -t origin/$BRANCH || true
sudo make uninstall || true
git pull
./autogen.sh --disable-gtk-doc
make
sudo make install
cd ..

cd gst-plugins-bad
git checkout -t origin/$BRANCH || true
sudo make uninstall || true
git pull
# some extra flags on rpi
if [[ $RPI -eq 1 ]]; then
    export LDFLAGS='-L/opt/vc/lib' \
    CFLAGS='-I/opt/vc/include -I/opt/vc/include/interface/vcos/pthreads -I/opt/vc/include/interface/vmcs_host/linux' \
    CPPFLAGS='-I/opt/vc/include -I/opt/vc/include/interface/vcos/pthreads -I/opt/vc/include/interface/vmcs_host/linux'
    ./autogen.sh --disable-gtk-doc --disable-examples --disable-x11 --disable-glx --disable-glx --disable-opengl
    make CFLAGS+="-Wno-error -Wno-redundant-decls -I/opt/vc/include -I/opt/vc/include/interface/vcos/pthreads -I/opt/vc/include/interface/vmcs_host/linux" \
      CPPFLAGS+="-Wno-error -Wno-redundant-decls -I/opt/vc/include -I/opt/vc/include/interface/vcos/pthreads -I/opt/vc/include/interface/vmcs_host/linux" \
      CXXFLAGS+="-Wno-redundant-decls" LDFLAGS+="-L/opt/vc/lib"
else
    ./autogen.sh --disable-gtk-doc
    make CFLAGS+="-Wno-error -Wno-redundant-decls" CXXFLAGS+="-Wno-redundant-decls"
fi
sudo make install
cd ..

# python bindings
cd gst-python
git checkout -t origin/$BRANCH || true
export LD_LIBRARY_PATH=/usr/local/lib/ 
sudo make uninstall || true
git pull
PYTHON=/usr/bin/python3 ./autogen.sh
make
sudo make install
cd ..

# omx support
cd gst-omx
sudo make uninstall || true
git pull
if [[ $RPI -eq 1 ]]; then
    export LDFLAGS='-L/opt/vc/lib' \
    CFLAGS='-I/opt/vc/include -I/opt/vc/include/IL -I/opt/vc/include/interface/vcos/pthreads -I/opt/vc/include/interface/vmcs_host/linux -I/opt/vc/include/IL' \
    CPPFLAGS='-I/opt/vc/include -I/opt/vc/include/IL -I/opt/vc/include/interface/vcos/pthreads -I/opt/vc/include/interface/vmcs_host/linux -I/opt/vc/include/IL'
    ./autogen.sh --disable-gtk-doc --with-omx-target=rpi
    # fix for glcontext errors and openexr redundant declarations
    make CFLAGS+="-Wno-error -Wno-redundant-decls" LDFLAGS+="-L/opt/vc/lib"
else
    ./autogen.sh --disable-gtk-doc --with-omx-target=bellagio
    # fix for glcontext errors and openexr redundant declarations
    make CFLAGS+="-Wno-error -Wno-redundant-decls"
fi
sudo make install
cd ..

# VAAPI, not for RPI
if [[ $RPI -ne 1 ]]; then
    cd gstreamer-vaapi
    sudo make uninstall || true
    git pull
    ./autogen.sh
    make
    sudo make install
    cd ..
fi



# gst-inspect-1.0 | grep v4l
video4linux2:  v4l2src: Video (video4linux2) Source
video4linux2:  v4l2sink: Video (video4linux2) Sink
video4linux2:  v4l2radio: Radio (video4linux2) Tuner
video4linux2:  v4l2deviceprovider (GstDeviceProviderFactory)






faca@ubuntu:~/data/v4l-gst$ sudo make install
[sudo] password for faca: 
Making install in lib
make[1]: Entering directory '/home/faca/data/v4l-gst/lib'
Making install in libv4l-gst
make[2]: Entering directory '/home/faca/data/v4l-gst/lib/libv4l-gst'
make[3]: Entering directory '/home/faca/data/v4l-gst/lib/libv4l-gst'
make[3]: Nothing to be done for 'install-exec-am'.
 /bin/mkdir -p '/usr/local/include'
 /usr/bin/install -c -m 644 ../../lib/include/libv4l-gst-bufferpool.h '/usr/local/include'
 /bin/mkdir -p '/usr/local/lib/libv4l/plugins'
 /bin/bash ../../libtool   --mode=install /usr/bin/install -c   libv4l-gst.la '/usr/local/lib/libv4l/plugins'
libtool: install: /usr/bin/install -c .libs/libv4l-gst.so /usr/local/lib/libv4l/plugins/libv4l-gst.so
libtool: install: /usr/bin/install -c .libs/libv4l-gst.lai /usr/local/lib/libv4l/plugins/libv4l-gst.la
libtool: finish: PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin:/sbin" ldconfig -n /usr/local/lib/libv4l/plugins
----------------------------------------------------------------------
Libraries have been installed in:
   /usr/local/lib/libv4l/plugins

If you ever happen to want to link against installed libraries
in a given directory, LIBDIR, you must either use libtool, and
specify the full pathname of the library, or use the '-LLIBDIR'
flag during linking and do at least one of the following:
   - add LIBDIR to the 'LD_LIBRARY_PATH' environment variable
     during execution
   - add LIBDIR to the 'LD_RUN_PATH' environment variable
     during linking
   - use the '-Wl,-rpath -Wl,LIBDIR' linker flag
   - have your system administrator add LIBDIR to '/etc/ld.so.conf'

See any operating system documentation about shared libraries for
more information, such as the ld(1) and ld.so(8) manual pages.
----------------------------------------------------------------------
make[3]: Leaving directory '/home/faca/data/v4l-gst/lib/libv4l-gst'
make[2]: Leaving directory '/home/faca/data/v4l-gst/lib/libv4l-gst'
make[2]: Entering directory '/home/faca/data/v4l-gst/lib'
make[3]: Entering directory '/home/faca/data/v4l-gst/lib'
make[3]: Nothing to be done for 'install-exec-am'.
make[3]: Nothing to be done for 'install-data-am'.
make[3]: Leaving directory '/home/faca/data/v4l-gst/lib'
make[2]: Leaving directory '/home/faca/data/v4l-gst/lib'
make[1]: Leaving directory '/home/faca/data/v4l-gst/lib'
make[1]: Entering directory '/home/faca/data/v4l-gst'
make[2]: Entering directory '/home/faca/data/v4l-gst'
make[2]: Nothing to be done for 'install-exec-am'.
make[2]: Nothing to be done for 'install-data-am'.
make[2]: Leaving directory '/home/faca/data/v4l-gst'
make[1]: Leaving directory '/home/faca/data/v4l-gst'


# meson
sudo apt-get install python3-pip
pip3 install meson
sudo cp /home/user/.local/bin/meson /usr/bin/
pip3 install ninja
sudo cp /home/user/.local/bin/ninja /usr/bin/

[法二]
sudo apt install python3-setuptools
download meson from https://pypi.org/project/meson/
python3 setup.py build
sudo python3 setup.py install
/usr/local/bin/meson

sudo apt-get install libglib2.0-dev flex bison


# gstreamer v4l2h264dec 
https://www.raspberrypi.org/forums/viewtopic.php?t=240274
https://www.raspberrypi.org/forums/viewtopic.php?t=245852
https://www.raspberrypi.org/forums/viewtopic.php?t=244975


sudo apt search 'linux-image-[0-9].*-generic'
sudo apt install linux-image-5.3.0-24-generic linux-modules-5.3.0-24-generic linux-modules-extra-5.3.0-24-generic


# vainfo
https://gist.github.com/Brainiarc7/eb45d2e22afec7534f4a117d15fe6d89



convert yuv data (YUV_NV21) to rgb image (BGR in OpenCV)

int main()
{
  const int width  = 1280;
  const int height = 800;

  std::ifstream file_in;
  file_in.open("../image_yuv_nv21_1280_800_01.raw", std::ios::binary);
  std::filebuf *p_filebuf = file_in.rdbuf();
  size_t size = p_filebuf->pubseekoff(0, std::ios::end, std::ios::in);
  p_filebuf->pubseekpos(0, std::ios::in);

  char *buf_src = new char[size];
  p_filebuf->sgetn(buf_src, size);

  cv::Mat mat_src = cv::Mat(height*1.5, width, CV_8UC1, buf_src);
  cv::Mat mat_dst = cv::Mat(height, width, CV_8UC3);

  cv::cvtColor(mat_src, mat_dst, cv::COLOR_YUV2BGR_NV21);
  cv::imwrite("yuv.png", mat_dst);

  file_in.close();
  delete []buf_src;

  return 0;
}


Serial number : CNP6-728G2JZF


0. install meson
1. install ninja-build => sudo apt install ninja-build
2. sudo apt-get install libglib2.0-dev flex bison
3. install gstreamer

https://github.com/GStreamer/gstreamer.git
https://github.com/GStreamer/gst-plugins-base.git
https://github.com/GStreamer/gst-plugins-good.git
https://github.com/GStreamer/gst-plugins-bad.git
https://github.com/GStreamer/gst-plugins-ugly.git
https://github.com/GStreamer/gst-libav.git
https://github.com/GStreamer/gstreamer-vaapi.git
https://github.com/GStreamer/gst-omx.git

#!/bin/bash

[ ! -d gstreamer ] && git clone git://anongit.freedesktop.org/git/gstreamer/gstreamer
[ ! -d gst-plugins-base ] && git clone git://anongit.freedesktop.org/git/gstreamer/gst-plugins-base
[ ! -d gst-plugins-good ] && git clone git://anongit.freedesktop.org/git/gstreamer/gst-plugins-good
[ ! -d gst-plugins-bad ] && git clone git://anongit.freedesktop.org/git/gstreamer/gst-plugins-bad
[ ! -d gst-plugins-ugly ] && git clone git://anongit.freedesktop.org/git/gstreamer/gst-plugins-ugly
[ ! -d gst-libav ] && git clone git://anongit.freedesktop.org/git/gstreamer/gst-libav
[ ! -d gst-omx ] && git clone git://anongit.freedesktop.org/git/gstreamer/gst-omx
[ ! -d gstreamer-vaapi ] && git clone git://anongit.freedesktop.org/gstreamer/gstreamer-vaapi
[ ! -d gst-python ] && git clone git://anongit.freedesktop.org/git/gstreamer/gst-python

rm -rf build &&
mkdir build &&
cd    build &&

meson  --prefix=/usr/local \
       -Dbuildtype=release \
       -Dgst_debug=false   \
       -Dgtk_doc=disabled  &&
ninja
cd build
sudo ninja install


mkdir build &&
cd    build &&

meson  --prefix=/usr       \
       -Dbuildtype=release \
       -Dgst_debug=false   \
       -Dgtk_doc=disabled  \
       -Dpackage-origin=http://www.linuxfromscratch.org/blfs/view/svn/ \
       -Dpackage-name="GStreamer 1.16.2 BLFS" &&
ninja


  * Renderers:
      DRM: libva-dev (>= 1.1.0), libdrm-dev, libudev-dev
      X11: libva-dev (>= 1.0.1)
      GLX: libva-dev (>= 1.0.3)
      Wayland: libva-dev (>= 1.1.0), libwayland-dev (>= 1.0.2)

# check video inoformation
ffprobe -i rtsp://wowzaec2demo.streamlock.net/vod/mp4:BigBuckBunny_115k.mov

ffmpeg -y -hwaccel vaapi -i rtsp://wowzaec2demo.streamlock.net/vod/mp4:BigBuckBunny_115k.mov -f rawvideo -pix_fmt yuv420p -preset slow -an -sn -vf fps=15 -
ffmpeg -y -i rtsp://wowzaec2demo.streamlock.net/vod/mp4:BigBuckBunny_115k.mov -f rawvideo -pix_fmt bgr24 -preset slow -an -sn -
ffmpeg -hwaccel vaapi -vaapi_device /dev/dri/renderD128 -i rtsp://wowzaec2demo.streamlock.net/vod/mp4:BigBuckBunny_115k.mov -c:v libx264 -crf 20 output.mp4

rtsp://wowzaec2demo.streamlock.net/vod/mp4:BigBuckBunny_115k.mov
yuv420p

rtsp://10.60.6.28:8554/CH001.sdp
yuvj420p


# YUV420 to BGR image from pixel pointers
https://stackoverflow.com/questions/50230188/yuv420-to-bgr-image-from-pixel-pointers


rtsp協議默認使用udp導致的問題，所以rtsp強制使用tcp方式可以一定程度避免丟包
ffmpeg -rtsp_transport tcp -i rtsp://192.168.1.168/0 -vcodec copy -f rtsp rtsp://192.168.1.28/11


# YUV2RGB
https://blog.csdn.net/u012005313/article/details/70304922

# Use FFmpeg to Decode H.264 Stream with NVIDIA GPU Acceleration
https://medium.com/@fanzongshaoxing/use-ffmpeg-to-decode-h-264-stream-with-nvidia-gpu-acceleration-16b660fd925d

http://www.cplusplus.com/forum/beginner/117874/
https://stackoverflow.com/questions/23330228/subprocess-commands-in-c



ffmpeg -vsync 1 -rtsp_transport tcp -i rtsp://10.60.6.28:8554/CH001.sdp -pix_fmt yuvj420p -vcodec rawvideo -an -sn -f null -
==> CPU 13~16

LIBVA_DRIVER_NAME=i965 LIBVA_DRIVERS_PATH=/usr/lib/x86_64-linux-gnu/dri ffmpeg -hwaccel vaapi -hwaccel_device /dev/dri/renderD128 -vsync 1 -rtsp_transport tcp -i rtsp://10.60.6.28:8554/CH001.sdp -pix_fmt yuvj420p -vcodec rawvideo -an -sn -f null -
==> CPU 13~16

# play rtsp
ffmpeg -vsync 1 -i rtsp://10.60.6.28:8554/CH001.sdp -f image2pipe - | ffplay -
gst-launch-1.0 playbin uri=rtsp://10.60.6.28:8554/CH001.sdp
gst-launch-1.0 playbin uri=rtspt://10.60.6.28:8554/CH001.sdp


rtsp://172.18.71.52:8554/CH001.sdp

# Ubuntu 18.04 安裝 OpenCV 與建置 C++ 編譯環境
http://www.codebind.com/cpp-tutorial/install-opencv-ubuntu-cpp/
https://wenyuangg.github.io/posts/opencv/opencv-installation.html


route add -net 10.60.0.0 netmask 255.255.0.0 enx00e04c65edb2
route add -net 10.36.0.0 netmask 255.255.0.0 enx00e04c65edb2
route add -net 172.18.0.0 netmask 255.255.0.0 enx00e04c65edb2




rtspsrc location=rtsp://10.60.6.28:8554/CH001.sdp ! queue ! rtph264depay ! h264parse ! vaapih264dec ! vaapipostproc ! video/x-raw,width=1280,height=720,format=BGRA ! videoconvert ! appsink



#### openvino R3
wget http://registrationcenter-download.intel.com/akdlm/irc_nas/16057/l_openvino_toolkit_p_2019.3.376.tgz


nvidia

https://gitlab.com/sat-metalab/switcher/blob/master/doc/using-nvdec-gstreamer-plugins.md

https://docs.nvidia.com/jetson/archives/l4t-archived/l4t-3231/index.html#page/Tegra%2520Linux%2520Driver%2520Package%2520Development%2520Guide%2Faccelerated_gstreamer.html%23wwpID0E0U10HA

https://developer.nvidia.com/video-encode-decode-gpu-support-matrix


user@user:/usr/lib/x86_64-linux-gnu/dri$ ll
total 176684
drwxr-xr-x  2 root root     4096 Jan 13 07:55 ./
drwxr-xr-x 43 root root    40960 Feb  7 06:17 ../
-rw-r--r--  5 root root 10504688 Sep 26 04:58 i915_dri.so
-rw-r--r--  5 root root 10504688 Sep 26 04:58 i965_dri.so
-rw-r--r--  1 root root  8118808 Mar 20  2018 i965_drv_video.so
-rw-r--r--  8 root root 12646456 Sep 26 04:58 kms_swrast_dri.so
-rw-r--r--  8 root root 12646456 Sep 26 04:58 nouveau_dri.so
-rw-r--r--  3 root root  6342440 Sep 26 04:58 nouveau_drv_video.so
-rw-r--r--  5 root root 10504688 Sep 26 04:58 nouveau_vieux_dri.so
-rw-r--r--  5 root root 10504688 Sep 26 04:58 r200_dri.so
-rw-r--r--  8 root root 12646456 Sep 26 04:58 r300_dri.so
-rw-r--r--  8 root root 12646456 Sep 26 04:58 r600_dri.so
-rw-r--r--  3 root root  6342440 Sep 26 04:58 r600_drv_video.so
-rw-r--r--  5 root root 10504688 Sep 26 04:58 radeon_dri.so
-rw-r--r--  8 root root 12646456 Sep 26 04:58 radeonsi_dri.so
-rw-r--r--  3 root root  6342440 Sep 26 04:58 radeonsi_drv_video.so
-rw-r--r--  8 root root 12646456 Sep 26 04:58 swrast_dri.so
-rw-r--r--  8 root root 12646456 Sep 26 04:58 virtio_gpu_dri.so
-rw-r--r--  8 root root 12646456 Sep 26 04:58 vmwgfx_dri.so


Configuring VA-API
You can override the driver for VA-API by using the LIBVA_DRIVER_NAME environment variable:

Intel graphics:
For libva-intel-driver use i965.
For intel-media-driver use iHD.
NVIDIA:
For Nouveau use nouveau.
For NVIDIA use vdpau.
ATI/AMD:
For AMDGPU driver use radeonsi.
For AMD Catalyst use fglrx.


root@user:/home/user/nick# ubuntu-drivers devices
== /sys/devices/pci0000:00/0000:00:07.0 ==
modalias : pci:v000010DEd00001CB6sv000010DEsd00001264bc03sc00i00
vendor   : NVIDIA Corporation
driver   : nvidia-driver-418 - third-party free
driver   : nvidia-driver-415 - third-party free
driver   : nvidia-driver-435 - distro non-free
driver   : nvidia-driver-430 - third-party free
driver   : nvidia-driver-410 - third-party free
driver   : nvidia-driver-440 - third-party free recommended
driver   : nvidia-driver-390 - third-party free
driver   : xserver-xorg-video-nouveau - distro free builtin

root@user:/home/user/nick# sudo apt install nvidia-driver-440



root@user:/opt/intel/openvino_2019.3.376/opencv/samples/build# nvidia-smi
Fri Feb  7 06:55:29 2020       
+-----------------------------------------------------------------------------+
| NVIDIA-SMI 418.87.00    Driver Version: 418.87.00    CUDA Version: 10.1     |
|-------------------------------+----------------------+----------------------+
| GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
| Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
|===============================+======================+======================|
|   0  Quadro P620         On   | 00000000:00:07.0 Off |                  N/A |
| 34%   26C    P8    N/A /  N/A |      1MiB /  2000MiB |      0%      Default |
+-------------------------------+----------------------+----------------------+
                                                                               
+-----------------------------------------------------------------------------+
| Processes:                                                       GPU Memory |
|  GPU       PID   Type   Process name                             Usage      |
|=============================================================================|
|  No running processes found                                                 |
+-----------------------------------------------------------------------------+


sudo apt-get install vdpau-va-driver



sudo apt-get purge --auto-remove libgstreamer1.0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-vaapi

sudo apt install gstreamer1.0-tools libgstreamer1.0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-vaapi

sudo apt install nvidia-cuda-dev
sudo apt --fix-broken install


1. sudo apt install nvidia-cuda-dev
2. sudo apt install nvidia-cuda-toolkit
3. download Video_Codec_SDK_9.1.23.zip from https://developer.nvidia.com/nvidia-video-codec-sdk

git clone https://gitlab.freedesktop.org/gstreamer/meson-ports/gl-headers.git


user@user:~/Video_Codec_SDK_9.1.23$ sudo cp -rf include/nvcuvid.h /usr/local/include/
user@user:~/Video_Codec_SDK_9.1.23$ sudo cp -rf include/cuviddec.h /usr/local/include/
user@user:~/Video_Codec_SDK_9.1.23$ sudo cp -rf include/nvEncodeAPI.h /usr/local/include/



LC_MESSAGES=C dpkg-divert --list '*nvidia-340*' | sed -nre 's/^diversion of (.*) to .*/\1/p' | xargs -rd'\n' -n1 -- sudo dpkg-divert --remove
sudo apt --fix-broken install


user@user:/usr/lib/x86_64-linux-gnu/gstreamer-1.0$ dpkg --get-selections | grep nvidia
libnvidia-cfg1-440:amd64            install
libnvidia-common-435                install
libnvidia-common-440                install
libnvidia-compute-390:amd64         deinstall
libnvidia-compute-430:amd64         deinstall
libnvidia-compute-435:amd64         deinstall
libnvidia-compute-440:amd64         install
libnvidia-decode-440:amd64          install
libnvidia-encode-440:amd64          install
libnvidia-fbc1-440:amd64            install
libnvidia-gl-440:amd64              install
libnvidia-ifr1-440:amd64            install
nvidia-compute-utils-430            deinstall
nvidia-compute-utils-440            install
nvidia-cuda-dev                 install
nvidia-cuda-doc                 install
nvidia-cuda-gdb                 install
nvidia-cuda-toolkit             install
nvidia-dkms-430                 deinstall
nvidia-dkms-440                 install
nvidia-driver-440               install
nvidia-kernel-common-430            deinstall
nvidia-kernel-common-440            install
nvidia-kernel-source-440            install
nvidia-opencl-dev:amd64             install
nvidia-prime                    install
nvidia-profiler                 install
nvidia-settings                 install
nvidia-utils-440                install
nvidia-visual-profiler              install
xserver-xorg-video-nvidia-440           install



nasm yasm
