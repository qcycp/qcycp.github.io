1. pull registry image
```
version: '3'

services:
  registry:
    restart: always
    image: registry:2
    container_name: registry
    ports:
      - 5000:5000
    volumes:
      - /etc/timezone:/etc/timezone:ro
      - /etc/localtime:/etc/localtime:ro
      - /opt/docker-software/registry:/var/lib/registry
```

2. push/pull images
image push前必須先tag
```
$ docker tag myimage host:5000/myimage:1.0.0
$ docker push host:5000/myimage:1.0.0
$ docker pull host:5000/myimage

$ docker image remove host:5000/myimage
```

3. client-side docker settings
```
$ sudo vim /etc/docker/daemon.json
{
  "live-restore": true,
  "group": "dockerroot",
  "insecure-registries": ["host:5000"]
}
$ sudo service docker restart
```

4. get image list from docker registry
```
$ curl -X GET http://10.36.94.120:5000/v2/_catalog | jq
{
  "repositories": [
    "ubuntu_python"
  ]
}

$ curl -X GET http://10.36.94.120:5000/v2/ubuntu_python/tags/list | jq
{
  "name": "ubuntu_python",
  "tags": [
    "1.0.0"
  ]
}
```

5. gui tool via docker image
docker run -d -p 8080:8080 --name registry-web -e REGISTRY_URL=http://host:5000/v2 hyper/docker-registry-web