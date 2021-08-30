---
title: image_url_to_opencv_image
abbrlink: f22e58f
date: 2021-08-26 09:39:00
categories:
tags:
---
METHOD #1: OpenCV, NumPy, and urllib
```
import numpy as np
import urllib.request import urlopen
import cv2

def url_to_image(url):
	# download the image, convert it to a NumPy array, and then read
	# it into OpenCV format
	resp = urlopen(url)
	image = np.asarray(bytearray(resp.read()), dtype="uint8")
	image = cv2.imdecode(image, cv2.IMREAD_COLOR)

	# return the image
	return image

# initialize the list of image URLs to download
urls = [
	"https://www.pyimagesearch.com/wp-content/uploads/2015/01/opencv_logo.png",
	"https://www.pyimagesearch.com/wp-content/uploads/2015/01/google_logo.png",
	"https://www.pyimagesearch.com/wp-content/uploads/2014/12/adrian_face_detection_sidebar.png",
]

# loop over the image URLs
for url in urls:
	# download the image URL and display it
	print "downloading %s" % (url)
	image = url_to_image(url)
	cv2.imshow("Image", image)
	cv2.waitKey(0)
```

Method #2: scikit-image
```
from skimage import io
 
# loop over the image URLs
for url in urls:
	# download the image using scikit-image
	print "downloading %s" % (url)
	image = io.imread(url)
	cv2.imshow("Incorrect", image)
	cv2.imshow("Correct", cv2.cvtColor(image, cv2.COLOR_BGR2RGB))
	cv2.waitKey(0)
```