---
title: jaeger in golang
abbrlink: 1306a70
date: 2020-06-11 16:33:18
categories: [Programming, golang]
tags:
- golang
- jaeger
---
* package
```bash
$ go get -u github.com/uber/jaeger-client-go/
$ go get -u github.com/pkg/errors
$ go get -u go.uber.org/atomic
```
* main.go
```js
package main

import (
    "fmt"
    "io"

    "github.com/gin-gonic/gin"
    "net/http"

    "github.com/opentracing/opentracing-go"
    "github.com/uber/jaeger-client-go"
    "github.com/uber/jaeger-client-go/config"
)

func initTracer() (opentracing.Tracer, io.Closer) {
    cfg := &config.Configuration{
        ServiceName: "golang",
        Sampler: &config.SamplerConfig {
            Type: "const",
            Param: 1,
        },
        Reporter: &config.ReporterConfig {
            LogSpans: true,
            LocalAgentHostPort:"192.168.56.5:6831",
        },
    }
    tracer, closer, err := cfg.NewTracer(config.Logger(jaeger.StdLogger))
    if err != nil {
        fmt.Sprintf("ERROR: cannot init Jaeger: %v\n", err)
    }
    return tracer, closer
}

func main() {
    tracer, closer := initTracer()
    defer closer.Close()
    opentracing.SetGlobalTracer(tracer)

    r := gin.Default()

    r.GET("/", func(c *gin.Context) {
        span := tracer.StartSpan(c.Request.URL.Path)
        defer span.Finish()
        c.String(http.StatusOK, "Hello World")
    })

    r.GET("/extract", func(c *gin.Context) {
        spanCtx, _ := opentracing.GlobalTracer().Extract(opentracing.HTTPHeaders, opentracing.HTTPHeadersCarrier(c.Request.Header))
        span := opentracing.GlobalTracer().StartSpan(c.Request.URL.Path, opentracing.ChildOf(spanCtx))
        defer span.Finish()
        c.String(http.StatusOK, "Hello World")
    })

    r.Run(":8888")
}
```