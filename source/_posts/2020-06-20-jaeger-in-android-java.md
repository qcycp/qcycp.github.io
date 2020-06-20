---
title: Jaeger in Android Java
abbrlink: db4f4223
date: 2020-06-20 17:18:43
categories: [Programming, Java]
tags:
- Java
- Android
- Jaeger
---
* package in gapp.radle
```
implementation 'com.squareup.okhttp3:okhttp:4.7.2'

implementation group: 'io.opentracing', name: 'opentracing-api', version: '0.33.0'
implementation group: 'io.jaegertracing', name: 'jaeger-client', version: '1.2.0'
```
* Tracing main class
```java
import io.jaegertracing.Configuration;
import io.jaegertracing.Configuration.ReporterConfiguration;
import io.jaegertracing.Configuration.SamplerConfiguration;

import io.jaegertracing.internal.JaegerTracer;
import io.jaegertracing.internal.samplers.ConstSampler;

public class Tracing {
    public static final Integer JAEGER_UDP_DEFAULT_PORT=6831;
    public static JaegerTracer tracer;

    public static void terminate() {
        tracer.close();
    }

    public static void init(String service, String hostname) {
        SamplerConfiguration samplerConfig = SamplerConfiguration.fromEnv()
                .withType(ConstSampler.TYPE)
                .withParam(1);

        ReporterConfiguration reporterConfig;

        reporterConfig = new ReporterConfiguration()
                .withSender(new Configuration.SenderConfiguration()
                        .withAgentHost(hostname)
                        .withAgentPort(JAEGER_UDP_DEFAULT_PORT))
                .withLogSpans(true);

        Configuration config = new Configuration(service)
                .withSampler(samplerConfig)
                .withReporter(reporterConfig);

        tracer = config.getTracer();
    }
}
```
* http headers carrier
```java
import java.util.Iterator;
import java.util.Map;

import okhttp3.Request;

public class RequestBuilderCarrier implements io.opentracing.propagation.TextMap {
    private final Request.Builder builder;

    RequestBuilderCarrier(Request.Builder builder) {
        this.builder = builder;
    }

    @Override
    public Iterator<Map.Entry<String, String>> iterator() {
        throw new UnsupportedOperationException("carrier is write-only");
    }

    @Override
    public void put(String key, String value) {
        builder.addHeader(key, value);
    }
}
```
* MainActivity
```java
import io.opentracing.Span;
import io.opentracing.propagation.Format;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

public class MainActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        new Thread(new Runnable() {
            @Override
            public void run() {
                Tracing.init("TracingSample", "192.168.56.5");
            }
        }).start();
        doTracing();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        Tracing.terminate();
    }

    void doTracing() {
        final Span span = Tracing.tracer.buildSpan("api_request").start();

        OkHttpClient client = new OkHttpClient().newBuilder().build();
        Request.Builder requestbuilder = new Request.Builder();
        Tracing.tracer.inject(
                span.context(),
                Format.Builtin.HTTP_HEADERS,
                new RequestBuilderCarrier(requestbuilder));

        Request request = requestbuilder.url("http://ip:port/api/").build();
        Call call = client.newCall(request);

        call.enqueue(new Callback() {
            @Override
            public void onResponse(Call call, Response response) throws IOException {
                String result = response.body().string();
                Log.d("TEST", result);
                span.finish();
            }

            @Override
            public void onFailure(Call call, IOException e) {
                Log.d("TEST", e.toString());
                span.finish();
            }
        });
    }
}
```
* use span simplily
```
Span span = Tracing.tracer.buildSpan("do_something").start();
span.finish();
```