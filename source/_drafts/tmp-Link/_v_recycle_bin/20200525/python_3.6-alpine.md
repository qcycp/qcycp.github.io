```
FROM python:3.6-alpine

COPY ./app /app
WORKDIR /app

RUN apk update && \
    apk add --virtual build-dependencies build-base && \
    apk add bash && \
    pip install --no-dependencies -r requirements.txt --no-cache-dir && \
    apk del build-dependencies && \
    rm -rf /var/cache/apk/*
```