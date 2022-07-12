```sh
user@vm-docker:~$ docker ps -a
CONTAINER ID        IMAGE                               COMMAND                  CREATED             STATUS                          PORTS                                          NAMES
12220ad7e446        deploy_pad_manager:A1.0.2.5acec8e   "/usr/bin/supervisord"   2 weeks ago         Created                         0.0.0.0:1393->1393/tcp, 0.0.0.0:1392->80/tcp   hh_pad_manager
```

```sh
user@vm-docker:~$ docker inspect 12220ad7e446
[
    {
        "Id": "12220ad7e4462823a5e9093d6ee4c1496fc1ce828731ab70a174b99f3901fbe4",
        "Created": "2019-03-19T04:29:23.088229459Z",
        "Path": "/usr/bin/supervisord",
        "Args": [],
        "State": {
            "Status": "created",
            "Running": false,
            "Paused": false,
            "Restarting": false,
            "OOMKilled": false,
            "Dead": false,
            "Pid": 0,
            "ExitCode": 127,
            "Error": "OCI runtime create failed: container_linux.go:348: starting container process caused \"process_linux.go:402: container init caused \\\"rootfs_linux.go:58: mounting \\\\\\\"/home/user/deploy/PadManager/config.json\\\\\\\" to rootfs \\\\\\\"/var/lib/docker/overlay2/8d05f4384f0dc952b1b3eed466e0ba0d2c955b5ea5deffe0215c978bce02fc4a/merged\\\\\\\" at \\\\\\\"/var/lib/docker/overlay2/8d05f4384f0dc952b1b3eed466e0ba0d2c955b5ea5deffe0215c978bce02fc4a/merged/app/pad_manager/config.json\\\\\\\" caused \\\\\\\"not a directory\\\\\\\"\\\"\": unknown: Are you trying to mount a directory onto a file (or vice-versa)? Check if the specified host path exists and is the expected type",
            "StartedAt": "0001-01-01T00:00:00Z",
            "FinishedAt": "0001-01-01T00:00:00Z"
        },
        "Image": "sha256:b83bcf8004651e1c46272e326e544f6c175b877e39afa4227a7be4ae5fca2921",
        "ResolvConfPath": "/var/lib/docker/containers/12220ad7e4462823a5e9093d6ee4c1496fc1ce828731ab70a174b99f3901fbe4/resolv.conf",
        "HostnamePath": "/var/lib/docker/containers/12220ad7e4462823a5e9093d6ee4c1496fc1ce828731ab70a174b99f3901fbe4/hostname",
        "HostsPath": "/var/lib/docker/containers/12220ad7e4462823a5e9093d6ee4c1496fc1ce828731ab70a174b99f3901fbe4/hosts",
        "LogPath": "/var/lib/docker/containers/12220ad7e4462823a5e9093d6ee4c1496fc1ce828731ab70a174b99f3901fbe4/12220ad7e4462823a5e9093d6ee4c1496fc1ce828731ab70a174b99f3901fbe4-json.log",
        "Name": "/hh_pad_manager",
        "RestartCount": 0,
        "Driver": "overlay2",
        "Platform": "linux",
        "MountLabel": "",
        "ProcessLabel": "",
        "AppArmorProfile": "docker-default",
        "ExecIDs": null,
        "HostConfig": {
            "Binds": [
                "/home/user/deploy/PadManager/config.json:/app/pad_manager/config.json:rw",
                "/opt/docker-software/PadManager:/app/pad_manager/db:rw",
                "/etc/localtime:/etc/localtime:ro",
                "/etc/timezone:/etc/timezone:ro"
            ],
            "ContainerIDFile": "",
            "LogConfig": {
                "Type": "json-file",
                "Config": {
                    "max-file": "10",
                    "max-size": "50m"
                }
            },
            "NetworkMode": "deploy_default",
            "PortBindings": {
                "1393/tcp": [
                    {
                        "HostIp": "",
                        "HostPort": "1393"
                    }
                ],
                "80/tcp": [
                    {
                        "HostIp": "",
                        "HostPort": "1392"
                    }
                ]
            },
            "RestartPolicy": {
                "Name": "always",
                "MaximumRetryCount": 0
            },
            "AutoRemove": false,
            "VolumeDriver": "",
            "VolumesFrom": [],
            "CapAdd": null,
            "CapDrop": null,
            "Dns": [],
            "DnsOptions": [],
            "DnsSearch": [],
            "ExtraHosts": null,
            "GroupAdd": null,
            "IpcMode": "shareable",
            "Cgroup": "",
            "Links": null,
            "OomScoreAdj": 0,
            "PidMode": "",
            "Privileged": false,
            "PublishAllPorts": false,
            "ReadonlyRootfs": false,
            "SecurityOpt": null,
            "UTSMode": "",
            "UsernsMode": "",
            "ShmSize": 67108864,
            "Runtime": "runc",
            "ConsoleSize": [
                0,
                0
            ],
            "Isolation": "",
            "CpuShares": 0,
            "Memory": 0,
            "NanoCpus": 0,
            "CgroupParent": "",
            "BlkioWeight": 0,
            "BlkioWeightDevice": null,
            "BlkioDeviceReadBps": null,
            "BlkioDeviceWriteBps": null,
            "BlkioDeviceReadIOps": null,
            "BlkioDeviceWriteIOps": null,
            "CpuPeriod": 0,
            "CpuQuota": 0,
            "CpuRealtimePeriod": 0,
            "CpuRealtimeRuntime": 0,
            "CpusetCpus": "",
            "CpusetMems": "",
            "Devices": null,
            "DeviceCgroupRules": null,
            "DiskQuota": 0,
            "KernelMemory": 0,
            "MemoryReservation": 0,
            "MemorySwap": 0,
            "MemorySwappiness": null,
            "OomKillDisable": false,
            "PidsLimit": 0,
            "Ulimits": null,
            "CpuCount": 0,
            "CpuPercent": 0,
            "IOMaximumIOps": 0,
            "IOMaximumBandwidth": 0,
            "MaskedPaths": [
                "/proc/acpi",
                "/proc/kcore",
                "/proc/keys",
                "/proc/latency_stats",
                "/proc/timer_list",
                "/proc/timer_stats",
                "/proc/sched_debug",
                "/proc/scsi",
                "/sys/firmware"
            ],
            "ReadonlyPaths": [
                "/proc/asound",
                "/proc/bus",
                "/proc/fs",
                "/proc/irq",
                "/proc/sys",
                "/proc/sysrq-trigger"
            ]
        },
        "GraphDriver": {
            "Data": {
                "LowerDir": "/var/lib/docker/overlay2/8d05f4384f0dc952b1b3eed466e0ba0d2c955b5ea5deffe0215c978bce02fc4a-init/diff:/var/lib/docker/overlay2/e7750b100c0f601d4b6d7a86e3ebd9a7d610fb7a2f7e001415e0e38892e04bc7/diff:/var/lib/docker/overlay2/14a4cc4efb60c29a3d8ab25e6aaa928ab26d3aa86eeda98112df74d25dff2cce/diff:/var/lib/docker/overlay2/7334d63831cfdda98e720eadefe20d59c2b23298cfcfe900a7e1acb44fade653/diff:/var/lib/docker/overlay2/0cf8da51ab5a633044ccdb3d1f94b05764dd63bdcf7c630199683e467fe1f289/diff:/var/lib/docker/overlay2/31b263afb736bf8ad0a252c251711b0cff2ca012ae6c9ad75b088651085746e7/diff:/var/lib/docker/overlay2/b602d17a3a6298196f3502f9f4c0fd0c9c561b241608411332d7cad8b208624d/diff:/var/lib/docker/overlay2/80de54f0945ea88f6af28392214189805d719f1ba7d426f1b05e4266b64fe86d/diff:/var/lib/docker/overlay2/6899cd8df1844e4e35bdbbfd3eb776b31aba5510e5d5421365483534785d691f/diff:/var/lib/docker/overlay2/6f3626eedb18d969e13d414a191bcf390d733779321b6a27e0ac037448c59a12/diff:/var/lib/docker/overlay2/7bda3867fe3d752dab42f29262521b1611120578875162c279643e8c04551df8/diff:/var/lib/docker/overlay2/e30fb984f9647d4bd579520743b513f7f97089f54111a2e7c41fe4a30d8ecb3a/diff",
                "MergedDir": "/var/lib/docker/overlay2/8d05f4384f0dc952b1b3eed466e0ba0d2c955b5ea5deffe0215c978bce02fc4a/merged",
                "UpperDir": "/var/lib/docker/overlay2/8d05f4384f0dc952b1b3eed466e0ba0d2c955b5ea5deffe0215c978bce02fc4a/diff",
                "WorkDir": "/var/lib/docker/overlay2/8d05f4384f0dc952b1b3eed466e0ba0d2c955b5ea5deffe0215c978bce02fc4a/work"
            },
            "Name": "overlay2"
        },
        "Mounts": [
            {
                "Type": "bind",
                "Source": "/opt/docker-software/PadManager",
                "Destination": "/app/pad_manager/db",
                "Mode": "rw",
                "RW": true,
                "Propagation": "rprivate"
            },
            {
                "Type": "bind",
                "Source": "/etc/localtime",
                "Destination": "/etc/localtime",
                "Mode": "ro",
                "RW": false,
                "Propagation": "rprivate"
            },
            {
                "Type": "bind",
                "Source": "/etc/timezone",
                "Destination": "/etc/timezone",
                "Mode": "ro",
                "RW": false,
                "Propagation": "rprivate"
            },
            {
                "Type": "bind",
                "Source": "/home/user/deploy/PadManager/config.json",
                "Destination": "/app/pad_manager/config.json",
                "Mode": "rw",
                "RW": true,
                "Propagation": "rprivate"
            }
        ],
        "Config": {
            "Hostname": "12220ad7e446",
            "Domainname": "",
            "User": "",
            "AttachStdin": false,
            "AttachStdout": false,
            "AttachStderr": false,
            "ExposedPorts": {
                "1393/tcp": {},
                "80/tcp": {}
            },
            "Tty": false,
            "OpenStdin": false,
            "StdinOnce": false,
            "Env": [
                "BACKEND_SERVER=http://192.168.10.159",
                "IMAGE_SERVER=http://10.60.6.221",
                "RECOGNIZED_PORT=8866",
                "ACCOUNT=face@pic.com.tw",
                "PASSWORD=123456",
                "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
            ],
            "Cmd": [
                "/usr/bin/supervisord"
            ],
            "Image": "deploy_pad_manager:A1.0.2.5acec8e",
            "Volumes": {
                "/app/pad_manager/config.json": {},
                "/app/pad_manager/db": {},
                "/etc/localtime": {},
                "/etc/timezone": {}
            },
            "WorkingDir": "/app/pad_manager",
            "Entrypoint": null,
            "OnBuild": null,
            "Labels": {
                "com.docker.compose.config-hash": "eea23b6fc0a553d98b9fff8a047031951b54160a0b0f99f3e4b1854f4be47f63",
                "com.docker.compose.container-number": "1",
                "com.docker.compose.oneoff": "False",
                "com.docker.compose.project": "deploy",
                "com.docker.compose.service": "pad_manager",
                "com.docker.compose.version": "1.22.0"
            }
        },
        "NetworkSettings": {
            "Bridge": "",
            "SandboxID": "d6461386eb43c313cad3c6878886d86b41f9d19e375965582f32d49e1deb19a5",
            "HairpinMode": false,
            "LinkLocalIPv6Address": "",
            "LinkLocalIPv6PrefixLen": 0,
            "Ports": {
                "1393/tcp": [
                    {
                        "HostIp": "0.0.0.0",
                        "HostPort": "1393"
                    }
                ],
                "80/tcp": [
                    {
                        "HostIp": "0.0.0.0",
                        "HostPort": "1392"
                    }
                ]
            },
            "SandboxKey": "/var/run/docker/netns/d6461386eb43",
            "SecondaryIPAddresses": null,
            "SecondaryIPv6Addresses": null,
            "EndpointID": "",
            "Gateway": "",
            "GlobalIPv6Address": "",
            "GlobalIPv6PrefixLen": 0,
            "IPAddress": "",
            "IPPrefixLen": 0,
            "IPv6Gateway": "",
            "MacAddress": "",
            "Networks": {
                "deploy_default": {
                    "IPAMConfig": null,
                    "Links": null,
                    "Aliases": [
                        "12220ad7e446",
                        "pad_manager"
                    ],
                    "NetworkID": "9ad95e7bddc598391997bb21d1be13f38a0f7d0b1ac760a348e295b234cf5d58",
                    "EndpointID": "4ebc14943dfb060ca2e46539d5c10d508bd8007350bfc714b980bdb015c66163",
                    "Gateway": "172.18.0.1",
                    "IPAddress": "172.18.0.4",
                    "IPPrefixLen": 16,
                    "IPv6Gateway": "",
                    "GlobalIPv6Address": "",
                    "GlobalIPv6PrefixLen": 0,
                    "MacAddress": "02:42:ac:12:00:04",
                    "DriverOpts": null
                }
            }
        }
    }
]
```