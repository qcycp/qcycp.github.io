


```xml
    location /logs {
        root /app/;
        autoindex on;
    }
```

![](_v_images/20190430115153409_30765.png =861x)


* autoindex_exact_size關閉，讓檔案大小用人類可讀的方式呈現
```xml
    location /logs {
        root /app/;
        autoindex_exact_size off;
        autoindex on;
    }
```

![](_v_images/20190430115034292_21515.png =751x)



![](_v_images/20190430115310556_20442.png)