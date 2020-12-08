---
title: Kuberneters namespace 無法刪除
abbrlink: 33ba49e8
date: 2020-09-17 16:51:29
categories: [Software, Kubernetes]
tags:
- Kubernetes
---
刪除 namespace 時，一直處於 Terminating 狀態
```
# kubectl delete namespace <ns>

# kubectl get namespace
NAME              STATUS        AGE
cdi               Active        2d23h
default           Active        2d23h
kube-node-lease   Active        2d23h
kube-public       Active        2d23h
kube-system       Active        2d23h
kubevirt          Active        2d23h
<ns>              Terminating   2d23h
openness          Active        2d23h
```
Step1: 
`kubectl get namespace <ns> -o json > tmp.json`

Step2:
刪除 spec 的內容
```
# vim tmp.json
...
    "spec": {
        "finalizers": [   <== delete
            "kubernetes"  <== delete
        ]                 <== delete
    },
...
```

Step3: 在另一個 terminal 開啟一個 local api proxy
`kubectl proxy --port=8081`

Step4:
`curl -k -H "Content-Type: application/json" -X PUT --data-binary @tmp.json http://127.0.0.1:8081/api/v1/namespaces/<ns>/finalize`

* Pod 無法刪除，停留在 Terminating 狀態
```
# kubectl delete pods <pod> --grace-period=0 --force
```