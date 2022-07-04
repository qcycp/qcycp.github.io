$host 与 $http_host的區别在於當使用非80/443端口的时候，$http_host = $host:$port


https://www.linuxdashen.com/nginx%E6%80%A7%E8%83%BD%E4%BC%98%E5%8C%96%E4%B9%8B%E9%85%8D%E7%BD%AE%E7%BC%93%E5%86%B2%E3%80%81%E8%B6%85%E6%97%B6%E3%80%81%E5%8E%8B%E7%BC%A9%E5%92%8C%E6%97%A5%E5%BF%97

client_max_body_size
这个directive设定Nginx可以处理的最大request body大小。如果收到的请求大于指定的大小，那么Nginx会回复HTTP 413错误（Request Entity too large）。如果web服务器提供大文件上传的话，那么设置好这个directive很重要。

Nginx默认为这个directive设定的值是1m


client_body_buffer_size
这个directive设定了request body的缓冲大小。如果body超过了缓冲的大小，那么整个body或者部分body将被写入一个临时文件。如果Nginx被设置成使用文件缓冲而不使用内存缓冲，那么这个dirctive就无效。client_body_buffer_size在32位系统上默认是8k，在64位系统上默认是16k