---
title: kubernetes Notes
abbrlink: d597c8d0
date: 2020-08-07 14:25:14
categories: [Software, Kubernetes]
tags:
- Kubernetes
---
![](image_01.jpg)
### 四大元件
1. Pod
2. Worker Node
3. Master Node
4. Cluster

##### Pod
* Kubernetes 中執行的最小基本單元
* 一個 Pod 內可以包含一個或多個 container
* 同一個 Pod 中的 containers 共享相同的資源、檔案系統，並共享相同的 network namespace，可以透過 localhost 互相溝通


##### Worker Node
* Kubernetes 中執行的最小硬體單元
* 一個 Worker Node 至小會對應到一個 VM，或是一個虛擬的機器集合
* 一個 Worker Node 內包含三個元件
  * kubelet: 該 Node 的管理員，負責管理該 Node 上的所有 Pods 的狀態並負責與 Master 溝通
  * kube-proxy : 該 Node 的傳訊員，負責更新 Node 的 iptables，讓其他 Node 的物件可以得知該 Node 上所有 Pods 的最新狀態
  * Container Runtime: 該 Node 真正負責容器執行的程式，以 Docker 容器為例，其對應的 Container Runtime 就是 Docker Engine

##### Master Node
負責管理 Kubernetes 系統中，所有的 Pods 跟 Worker Node，包含四個部分
* kube-apiserver
管理整個 Kubernetes 所需 API 的接口（Endpoint），例如從 Command Line 下 kubectl 指令就會把指令送到這裏
負責 Node 之間的溝通橋樑，每個 Node 彼此不能直接溝通，必須要透過 apiserver 轉介
負責 Kubernetes 中的請求的身份認證與授權

* etcd
用來存放 Kubernetes Cluster 的資料作為備份，當 Master 因為某些原因而故障時，我們可以透過 etcd 幫我們還原 Kubernetes 的狀態

* kube-scheduler
整個 Kubernetes 的 Pods 調度員，scheduler 會監視新建立但還沒有被指定要跑在哪個 Node 上的 Pod，並根據每個 Node 上面資源規定、硬體限制等條件去協調出一個最適合放置的 Node 讓該 Pod 跑

* kube-controller-manager
負責管理並運行 Kubernetes controller 的組件，簡單來說 controller 就是 Kubernetes 裡一群負責監視 Cluster 狀態的 Process，例如：Node Controller、Replication Controller
這些 Process 會在 Cluster 與預期狀態（desire state）不符時嘗試更新現有狀態（current state）。例如：現在要多開一台機器以應付突然增加的流量，那我的預期狀態就會更新成 N+1，現有狀態為 N，這時相對應的 controller 就會想辦法多開一台機器
controller-manager 的監視與嘗試更新也都需要透過訪問 kube-apiserver 達成

##### Cluster
Kubernetes 中多個 Node 與 Master 的集合，基本上可以想成在同一個環境裡所有 Node 集合在一起的單位
通常一個 Cluster 中會有多個 Master 作為備援

##### Install Pod
當使用者要部署一個新的 Pod 到 Kubernetes Cluster 時，使用者要先透過 User Command（kubectl）輸入建立 Pod 的對應指令
此時指令會經過一層確認使用者身份的認證後，傳遞到 Master Node 中的 API Server，API Server 會把指令備份到 etcd
接下來 controller-manager 會從 API Server 收到需要創建一個新的 Pod 的訊息，並檢查如果資源許可，就會建立一個新的 Pod
最後 Scheduler 在定期訪問 API Server 時，會詢問 controller-manager 是否有建置新的 Pod，如果發現新建立的 Pod 時，Scheduler 就會負責把 Pod 配送到最適合的一個 Node 上面

* Reference
https://medium.com/@C.W.Hu/kubernetes-basic-concept-tutorial-e033e3504ec0