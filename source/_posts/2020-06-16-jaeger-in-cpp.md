---
title: Jaeger in C++
abbrlink: 18b7c14f
date: 2020-06-16 17:59:15
categories: [Programming, C++]
tags:
- C++
- Jaeger
---
* Preparation
下載jaeger-client-cpp專案，並編譯
```bash
$ git clone https://github.com/jaegertracing/jaeger-client-cpp.git
$ cd jaeger-client-cpp
$ mkdir build
$ cmake ..
$ make
```
  * 將所需的library跟header file，從下列地方取出
```
/home/user/jaeger-client-app/build
/home/user/jaeger-client-app/src
/home/user/.hunter/_Base/d45d77d/924bcec/3b7ee27/Install
```
  * library (並建立symbolic link)
```
libjaegertracing.so -> libjaegertracing.so.0*
libjaegertracing.so.0 -> libjaegertracing.so.0.6.1*
libjaegertracing.so.0.6.1*
libyaml-cpp.so -> libyaml-cpp.so.0.6*
libyaml-cpp.so.0.6 -> libyaml-cpp.so.0.6.2*
libyaml-cpp.so.0.6.2*
```
  * headers
```
/home/user/jaeger-client-cpp/build/src/jaegertracing/Constants.h
/home/user/jaeger-client-cpp/src/jaegertracing/*.h
/home/user/jaeger-client-cpp/src/jaegertracing/*/*.h
/home/user/jaeger-client-cpp/src/jaegertracing/*/*/*.h
/home/user/.hunter/_Base/d45d77d/924bcec/3b7ee27/Install/include/yaml-cpp
/home/user/.hunter/_Base/d45d77d/924bcec/3b7ee27/Install/include/opentracing
/home/user/.hunter/_Base/d45d77d/924bcec/3b7ee27/Install/include/thrift
/home/user/.hunter/_Base/d45d77d/924bcec/3b7ee27/Install/include/boost
```
* compile
`g++ -std=c++11 -L/home/user/jaeger/lib -I/home/user/jaeger/include App.cpp -o test -ljaegertracing -lyaml-cpp`
* execute
`LD_LIBRARY_PATH=/home/user/jaeger/lib ./test config.yml`
* App.cpp
```cpp
#include <iostream>
#include <yaml-cpp/yaml.h>
#include <jaegertracing/Tracer.h>

namespace {
void setUpTracer(const char* configFilePath)
{
    auto configYAML = YAML::LoadFile(configFilePath);
    auto config = jaegertracing::Config::parse(configYAML);
    auto tracer = jaegertracing::Tracer::make(
        "example-service", config, jaegertracing::logging::consoleLogger());
    opentracing::Tracer::InitGlobal(
        std::static_pointer_cast<opentracing::Tracer>(tracer));
}

void tracedSubroutine(const std::unique_ptr<opentracing::Span>& parentSpan)
{
    auto span = opentracing::Tracer::Global()->StartSpan(
        "tracedSubroutine", { opentracing::ChildOf(&parentSpan->context()) });
}

void tracedFunction()
{
    auto span = opentracing::Tracer::Global()->StartSpan("tracedFunction");
    tracedSubroutine(span);
}

}  // anonymous namespace

int main(int argc, char* argv[])
{
    if (argc < 2) {
        std::cerr << "usage: " << argv[0] << " <config-yaml-path>\n";
        return 1;
    }
    setUpTracer(argv[1]);
    tracedFunction();
    // Not stricly necessary to close tracer, but might flush any buffered
    // spans. See more details in opentracing::Tracer::Close() documentation.
    opentracing::Tracer::Global()->Close();
    return 0;
}
```
* inject and extract
```cpp
struct CustomCarrierWriter : opentracing::TextMapWriter {
    explicit CustomCarrierWriter(
        std::unordered_map<std::string, std::string>& data_)
        : data{data_} {}

    // OpenTracing uses opentracing::expected for error handling.
    opentracing::expected<void> Set(
        opentracing::string_view key,
        opentracing::string_view value) const override {
        // for more background.
        opentracing::expected<void> result;

        auto was_successful = data.emplace(key, value);
        if (was_successful.second) {
        // Use a default constructed opentracing::expected<void> to indicate success.
            return result;
        } else {
            // `key` clashes with existing data, so the span context can't be encoded
            // successfully; set opentracing::expected<void> to an std::error_code.
            return opentracing::make_unexpected(
                std::make_error_code(std::errc::not_supported));
        }
    }
    std::unordered_map<std::string, std::string>& data;
};

void inject()
{
    auto span = opentracing::Tracer::Global()->StartSpan("websocket event");

    std::unordered_map<std::string, std::string> text_map;
    CustomCarrierWriter carrier(text_map);
    auto err = opentracing::Tracer::Global()->Inject(span->context(), carrier);
    for (auto& t : carrier.data)
    {
        std::cout << "key: " << t.first << ", value: " << t.second << std::endl;
    }

    // do something...
    span->Finish();
}

void extract()
{
}

```
* config.yaml
```
disabled: false
reporter:
    logSpans: true
    localAgentHostPort: "192.168.56.5:6831"
sampler:
  type: const
  param: 1
```