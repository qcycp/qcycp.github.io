---
title: tmp_CPULoaderGenerator
abbrlink: 7e425eba
tags:
---
CPULoadGenerator
===

[GitHub - GaetanoCarlucci/CPULoadGenerator at Python3](https://github.com/GaetanoCarlucci/CPULoadGenerator/tree/Python3/)

[GitHub - hannah98/docker-cpuload: Run a fixed CPU load in docker](https://github.com/hannah98/docker-cpuload)

```sh
$ docker pull furiousgeorge/cpuload

$ docker run --rm furiousgeorge/cpuload
Usage: CPULoadGenerator.py [options]
Options:
  -l, --cpuLoad=   Cpu Target Load [default: 0.2]
  -d, --duration=  Duration [default: 10]
  -p, --plot=      Enable Plot [default: 0]
  -c, --cpu_core=  Select the CPU on which generate the load [default: 0]
      --version    Display Twisted version and exit.
      --help       Display this help and exit.
      
$ docker run --rm furiousgeorge/cpuload CPULoadGenerator.py -c 0 -l 0.3 -d 30

$ docker run --rm furiousgeorge/cpuload bash -c "CPULoadGenerator.py -c 3 -l 0.8 -d 10 | CPULoadGenerator.py -c 2 -l 0.8 -d 10 | CPULoadGenerator.py -c 1 -l 0.8 -d 10 | CPULoadGenerator.py -c 0 -l 0.8 -d 10"
```