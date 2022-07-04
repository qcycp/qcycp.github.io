




```sh
root@vm-docker:~# docker ps -qa | xargs docker inspect --format='{{.LogPath}}' | xargs ls -hl
-rw-r----- 1 root root  35M Apr 25 21:20 /var/lib/docker/containers/0b263ce066ed5ca9bfe12a64297ad7fe5bf55b92a4f15a36e5bcc30dc9daf400/0b263ce066ed5ca9bfe12a64297ad7fe5bf55b92a4f15a36e5bcc30dc9daf400-json.log
-rw-r----- 1 root root    0 Mar 19 12:29 /var/lib/docker/containers/12220ad7e4462823a5e9093d6ee4c1496fc1ce828731ab70a174b99f3901fbe4/12220ad7e4462823a5e9093d6ee4c1496fc1ce828731ab70a174b99f3901fbe4-json.log
-rw-r----- 1 root root  23M Apr 25 21:20 /var/lib/docker/containers/847d0eb77dfe7169a68bd7e6c7cf37f0b237689714a91c3debecb162e7c6eccf/847d0eb77dfe7169a68bd7e6c7cf37f0b237689714a91c3debecb162e7c6eccf-json.log
-rw-r----- 1 root root 4.8K Apr  3 20:48 /var/lib/docker/containers/87a06ac9fb2f4ff980f937304645d398a7d2bbf232156e9e38a664f93399c5b6/87a06ac9fb2f4ff980f937304645d398a7d2bbf232156e9e38a664f93399c5b6-json.log
-rw-r----- 1 root root 2.0M Apr 24 08:31 /var/lib/docker/containers/b0c2ac482aae1f9e919e9f3c375e771055c4e6a1b83a59bc150b3dda42bdcbd8/b0c2ac482aae1f9e919e9f3c375e771055c4e6a1b83a59bc150b3dda42bdcbd8-json.log
-rw-r----- 1 root root 5.3K Apr 24 08:31 /var/lib/docker/containers/c1176e11988f87bec282a6550efb2b1ee6d3139aa6c027c9392624741280b89d/c1176e11988f87bec282a6550efb2b1ee6d3139aa6c027c9392624741280b89d-json.log
-rw-r----- 1 root root 196K Apr 24 08:31 /var/lib/docker/containers/c963b181fee215a3f64c5c4e8d164f8dff2157e435235079173283e5cd911277/c963b181fee215a3f64c5c4e8d164f8dff2157e435235079173283e5cd911277-json.log
-rw-r----- 1 root root  39M Apr 25 21:19 /var/lib/docker/containers/e9bc1566ba286a3fccb30130d6c56a862b573303b562a1512f02219965f04bd0/e9bc1566ba286a3fccb30130d6c56a862b573303b562a1512f02219965f04bd0-json.log
```


Why docker container exits immediately?

If you want to force the image to hang around (in order to debug something or examine state of the file system) you can override the entry point to change it to a shell:

docker run -it --entrypoint=/bin/bash myimagename