把所有.JPG的副檔名，全部改成.jpg
for f in *.JPG; do mv -- "$f" "${f%.JPG}.jpg"; done