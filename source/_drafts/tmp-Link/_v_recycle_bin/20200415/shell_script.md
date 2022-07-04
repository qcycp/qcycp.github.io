把所有output，除了stdout，也導一份到pre-push-$NOW.log去
set -x: 把執行的command也印出來
```
NOW=$(date +"%Y-%m-%d-%H:%M:%S")
exec &> >(tee pre-push-$NOW.log)
set -x
```

刪除tmpfile中，所有#開頭的行
```
sed -i "/^#/d" tmpfile
```

append "test" 到檔案tmpfile中
```
echo "test" >> tmpfile
```

```
result=$(echo $msg | grep xxx)
if [ -z "$result" ]; then
    echo "msg中找不到xxx內容"
fi
```