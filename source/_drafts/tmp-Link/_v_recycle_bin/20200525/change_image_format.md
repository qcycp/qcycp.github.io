sudo apt-get install imagemagick

mogrify -format jpg *.png
find -iname *.jpg -type f -exec rm -rf '{}' \;

-rw-rw-r--  1 user user  14833 Apr 13 03:05 LH10299.jpg
-rw-rw-r--  1 user user  16072 Apr 13 03:02 LH10299.png


mogrify -format jpg *.bmp
