---
title: Deployment nginx on k8s
abbrlink: 9c134f6f
date: 2020-08-14 18:10:43
categories: [Software, Kubernetes]
tags:
- Kubernetes
---
* create a namespace
```bash
$ vim namespace.yaml
apiVersion: v1
kind: Namespace
metadata:
  name: demo
$ kubectl create -f namespace.yml
```
* create a pod
```bash
$ vim pod.yaml
apiVersion: v1
kind: Pod
metadata:
  name: nginx-pod
  labels:
    app: nginx-label
spec:
  containers:
  - name: nginx
    image: nginx
    ports:
    - containerPort: 80
$ kubectl create -f pod.yml -n demo
```
* create a deployment
```bash
$ cat deployment.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment
spec:
  replicas: 3
  selector:
    matchLabels:
      app: nginx-label
  template:
    metadata:
      labels:
        app: nginx-label
    spec:
      containers: 
        - name: nginx
          image: nginx
          ports:
          - containerPort: 80
$ kubectl create -f deployment.yml -n demo
```
* create a service
  * selector 設定成 pod 的 label，代表 service 為這單一個 pod 提供封裝
  * selector 設定為 deployment 的 label，代表 service 對這些 Replica Set 提供封裝以及 load balance
```bash
$ vim service.yaml
apiVersion: v1
kind: Service
metadata:
  name: nginx-service
spec:
  type: NodePort
  ports:
  - port: 9527
    protocol: TCP
    targetPort: 80
  externalIPs:
  - 10.60.6.49
  selector: 
    app: nginx-label
$ kubectl create -f service.yml -n demo
```
* web page
```
http://10.60.6.49:9527
```
* get information
```
$ kubectl get pod -n=demo
NAME                                READY   STATUS    RESTARTS   AGE
nginx-deployment-58864f7df9-26tfx   1/1     Running   0          13m
nginx-deployment-58864f7df9-dqcqv   1/1     Running   0          13m
nginx-deployment-58864f7df9-sb9ks   1/1     Running   0          13m
nginx-pod                           1/1     Running   0          13m

$ kubectl get deployment -n=demo
NAME               READY   UP-TO-DATE   AVAILABLE   AGE
nginx-deployment   3/3     3            3           13m

$ kubectl get service -n=demo
NAME            TYPE       CLUSTER-IP      EXTERNAL-IP   PORT(S)          AGE
nginx-service   NodePort   10.111.31.254   10.60.6.49    9527:31755/TCP   13m
```
* 直接將 pod 的 port forwarding 到 host
```
$ kubectl -n demo port-forward --address 0.0.0.0 pod/nginx-pod 9528:80
```
  * web page
```
http://10.60.6.49:9528
```
* scenario
  * Pod + Service
  * Deployment + Service
  * Pod + Deployment + Service
* Reference
https://zhuanlan.zhihu.com/p/134637095
https://phoenixnap.com/kb/kubectl-port-forward
https://kubernetes.io/docs/tasks/access-application-cluster/port-forward-access-application-cluster/




