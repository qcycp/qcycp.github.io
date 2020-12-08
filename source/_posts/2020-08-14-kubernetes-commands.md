---
title: Kubernetes Commands
abbrlink: 61268ed9
date: 2020-08-14 15:32:53
categories: [Software, Kubernetes]
tags:
- Kubernetes
---
* sample yaml: web.yaml
```yaml
apiVersion: v1
kind: Pod
metadata:
  name: web
  labels:
    app: web
spec:
  containers:
  - name: frontend
    image: nginx
    ports:
    - containerPort: 19999
```
* 建立 pod
```
bash-4.2# kubectl apply -f web.yaml 
pod/web created
```
* Get information
```
bash-4.2# kubectl get pods
NAME                            READY   STATUS    RESTARTS   AGE
web                             1/1     Running   0          41s
```
* 刪除 pod
```
bash-4.2# kubectl delete pod web
pod "web" deleted
```

kubectl create
It first deletes the resources and then creates it from the file provided.
kubectl apply
It directly updates in the current live source, only the attributes which are given in the file.


kubectl get pods --show-labels

kubectl exec -it web -- /bin/bash

当 Pod 包含多个容器时打开 shell 
kubectl exec -it my-pod --container my-app -- /bin/bash



沒有 namespace 的元件，利用 `kubectl get pod` 查詢
有 namespace 的元件，要利用 `kubectl get pod --all-namespaces` 查詢

kubectl get pod
kubectl get pod --all-namespaces
kubectl get pod -o wide --all-namespaces
kubectl get service
kubectl get svc
kubectl get namespace
kubectl get deployment