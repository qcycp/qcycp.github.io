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

$ sudo apt-get install libx264-dev nasm yasm frei0r-plugins-dev libghc-gnutls-dev ladspa-sdk-dev libass-dev libbluray-dev libbs2b-dev libcaca-dev libdc1394-22-dev flite-dev libgsm1-dev libmodplug-dev libmp3lame-dev libopenjp2-7-dev librtmp-dev libshine-dev libsnappy-dev libsoxr-dev libssh-dev libspeex-dev libtheora-dev libtwolame-dev libvorbis-dev libvpx-dev libwavpack-dev libwebp-dev libx265-dev libxvidcore-dev libzvbi-dev libavc1394-dev libopencv-dev libass-dev libopus-dev libpulse-dev libopenal-dev libiec61883-dev libgme-dev libcdio-dev libcdio-paranoia-dev

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



$ sudo apt-get install libgstreamer1.0-dev gstreamer1.0-plugins-{base,good,bad} libgstreamer-plugins-{base,good,bad}1.0-dev gstreamer1.0-libav gstreamer1.0-vaapi gstreamer1.0-tools

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


sudo apt install libgstreamer1.0-dev gstreamer1.0-plugins-{base,good,bad} libgstreamer-plugins-{base,good,bad}1.0-dev gstreamer1.0-libav gstreamer1.0-vaapi

https://gist.github.com/artizirk/af250062c4cdafd1c311c9194237a4ff

gst-launch-1.0 -v filesrc location=/opt/intel/mediasdk/share/mfx/samples/_bin/content/test_stream.264 ! qtdemux ! vaapidecodebin ! vaapisink fullscreen=true

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



https://gist.github.com/Brainiarc7/eb45d2e22afec7534f4a117d15fe6d89
vaapi-ffmpeg-build.md


using Intel graphics acceleration.(VAAPI(i965), not MediaSDK(iHD))

libva-intel-driver(i965). 
sudo apt-get install libva-intel-vaapi-driver

gst-launch-1.0 filesrc location=1.mp4 ! qtdemux ! vaapidecodebin ! vaapisink

https://github.com/opencv/opencv/wiki/Video-capture-and-write-benchmark
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