@import container to image
zcat AppPortal_A1.0.0.tar.gz | docker import - appportal

@ run container
sudo docker run --name appportal -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock --restart always appportal /portainer

@ admin
admin / faca123456

@user
user / 123456