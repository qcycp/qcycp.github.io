---
title: Jaeger Deployment
abbrlink: bfd5d971
date: 2020-06-10 11:30:49
categories: [Software, Jaeger]
tags:
- Jaeger
---
![](architecture-v1.png)
* cassandra DB
* jarger-query
* jaeger-collector
* jaeger-agent
* spark
1. 建立cassandra數據庫
https://hub.docker.com/_/cassandra/
```
docker run -d --name cassandra \
  -p9042:9042 \
  -v /opt/docker-software/cassandra/data:/var/lib/cassandra \
  -v /opt/docker-software/cassandra/log:/var/log/cassandra \
  cassandra
```
2. 建立數據庫中Jaeger table schema (僅需建立一次)
https://hub.docker.com/r/jaegertracing/jaeger-cassandra-schema/
```
docker run --rm --name cassandra-schema \
  --link cassandra \
  jaegertracing/jaeger-cassandra-schema:1.18
```
執行結果如下
```bash
Generating the schema for the keyspace jaeger_v1_dc1 and datacenter dc1
Using template file /cassandra-schema/v003.cql.tmpl with parameters:
    mode = test
    datacenter = dc1
    keyspace = jaeger_v1_dc1
    replication = {'class': 'SimpleStrategy', 'replication_factor': '1'}
    trace_ttl = 172800
    dependencies_ttl = 0
```
3. setup jaeger-query
https://hub.docker.com/r/jaegertracing/jaeger-query/
```
docker run -d --name jaeger-query \
  --link cassandra \
  -p16686:16686 \
  -p16687 \
  -e CASSANDRA_KEYSPACE=jaeger_v1_dc1 \
  -e CASSANDRA_SERVERS=cassandra \
  jaegertracing/jaeger-query:1.18
```
4. setup jaeger-collector
https://hub.docker.com/r/jaegertracing/jaeger-collector/
```
docker run -d --name jaeger-collector \
  --link cassandra \
  -p9411:9411 \
  -p14250 \
  -p14268:14268 \
  -p14269 \
  -e CASSANDRA_KEYSPACE=jaeger_v1_dc1 \
  -e CASSANDRA_SERVERS=cassandra \
  jaegertracing/jaeger-collector:1.18
```
5. setup jaeger-agent
https://hub.docker.com/r/jaegertracing/jaeger-agent/
```
docker run -d --name jaeger-agent \
  --link jaeger-collector \
  -p5775:5775/udp \
  -p5778:5778 \
  -p6831:6831/udp \
  -p6832:6832/udp \
  jaegertracing/jaeger-agent:1.18 \
  --reporter.grpc.host-port=jaeger-collector:14250
```
6. spark
https://hub.docker.com/r/jaegertracing/spark-dependencies/
每執行一次僅會計算一次
```
docker run -d --name spark \
  -e STORAGE=cassandra \
  -e CASSANDRA_CONTACT_POINTS=192.168.56.5:9042 \
  jaegertracing/spark-dependencies
```
7. docker-compose.yml
```
version: '2'

services:
    cassandra:
      image: cassandra
      container_name: cassandra
      ports:
        - 9042:9042
      restart: always
      volumes:
        - /opt/docker-software/cassandra/data:/var/lib/cassandra
        - /opt/docker-software/cassandra/log:/var/log/cassandra

    cassandra-schema:
      image: jaegertracing/jaeger-cassandra-schema:1.18
      container_name: cassandra-schema
      depends_on:
        - cassandra

    jaeger-query:
      image: jaegertracing/jaeger-query:1.18
      container_name: jaeger-query
      command: ["--cassandra.keyspace=jaeger_v1_dc1", "--cassandra.servers=cassandra"]
      ports:
        - "16686:16686"
        - "16687"
      restart: always
      depends_on:
        - cassandra-schema

    jaeger-collector:
      image: jaegertracing/jaeger-collector:1.18
      container_name: jaeger-collector
      command: ["--cassandra.keyspace=jaeger_v1_dc1", "--cassandra.servers=cassandra", "--collector.zipkin.http-port=9411"]
      ports:
        - "14269"
        - "14268:14268"
        - "14250"
        - "9411:9411"
      restart: always
      depends_on:
        - cassandra-schema

    jaeger-agent:
      image: jaegertracing/jaeger-agent:1.18
      container_name: jaeger-agent
      command: ["--reporter.grpc.host-port=jaeger-collector:14250"]
      ports:
        - "5775:5775/udp"
        - "5778:5778"
        - "6831:6831/udp"
        - "6832:6832/udp"
      restart: always
      depends_on:
        - jaeger-collector
```