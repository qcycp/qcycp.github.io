在shell script中，某些指令出錯
```
Run something like: [[ $ABC =~ regexp ]] #> [[: not found
start_service.sh: source: not found
```

因為 Image 中 sh 並非 bash，而是 dash
```
ls -l /bin/sh #> /bin/sh -> dash
```

```
rm /bin/sh ln -s /bin/bash /bin/sh
```