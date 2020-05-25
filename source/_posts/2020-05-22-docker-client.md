---
title: docker client
abbrlink: '20536423'
date: 2020-05-22 17:11:03
categories: [Programming, python]
tags: 
- python
- docker
---
在container的程式中，獲取docker information
* 安裝docker module
`pip install docker`
```sh
(venv) user@vm-docker:~$ pip freeze
certifi==2019.3.9
chardet==3.0.4
docker==3.7.2
docker-pycreds==0.4.0
idna==2.8
requests==2.21.0
six==1.12.0
urllib3==1.24.1
websocket-client==0.56.0
```
* container執行時，必須要建立以下volume
`-v /var/run/docker.sock:/var/run/docker.sock`
* 讀取container的image information
```python
import docker

with open("/etc/hostname", "r", encoding='utf8') as f:
    container_id = f.read()
container_id = container_id.strip()
client = docker.from_env()
container = client.containers.get(str(container_id))
image_info = container.attrs['Config']['Image']

#container_id = 12220ad7e446
#info = myimage:1.0.2
```
* 讀取cpu info及memory info
```python
import docker

with open("/etc/hostname", "r", encoding='utf8') as f:
    container_id = f.read()
container_id = container_id.strip()
client = docker.from_env()
container = client.containers.get(str(container_id))
stats = container.stats(stream=False)

cpuDelta = int(stats['cpu_stats']['cpu_usage']['total_usage']) - int(stats['precpu_stats']['cpu_usage']['total_usage'])
systemDelta = int(stats['cpu_stats']['system_cpu_usage']) - int(stats['precpu_stats']['system_cpu_usage'])
usage = int(stats['memory_stats']['usage'])
total = int(stats['memory_stats']['limit'])

core = int(stats['cpu_stats']['online_cpus'])
cpu_usage = (cpuDelta / systemDelta) * len(stats['cpu_stats']['cpu_usage']['percpu_usage']) * 100.0
mem_usage = float(usage/(1024.0*1024.0))
mem_total = float(total/(1024.0*1024.0))
```
* container.attrs內容，也可以經由docker inspect container_id得到
```sh
{
    'Id': '9a2daa815404a4e90aea70645ea06f0d2f742d8a6c629403c1e03e1a5c78f454',
    'Created': '2020-05-25T06: 01: 15.047049798Z',
    'Path': '/bin/sh',
    'Args': ['-c',
    'tail-f/dev/null'],
    'State': {
        'Status': 'running',
        'Running': True,
        'Paused': False,
        'Restarting': False,
        'OOMKilled': False,
        'Dead': False,
        'Pid': 18810,
        'ExitCode': 0,
        'Error': '',
        'StartedAt': '2020-05-25T06: 01: 15.690055067Z',
        'FinishedAt': '0001-01-01T00: 00: 00Z'
    },
    'Image': 'sha256: 2afb69df98d14bd72295d3b5f61877879c35b2c1ba1300289f9f4ba3b9e54749',
    'ResolvConfPath': '/var/lib/docker/containers/9a2daa815404a4e90aea70645ea06f0d2f742d8a6c629403c1e03e1a5c78f454/resolv.conf',
    'HostnamePath': '/var/lib/docker/containers/9a2daa815404a4e90aea70645ea06f0d2f742d8a6c629403c1e03e1a5c78f454/hostname',
    'HostsPath': '/var/lib/docker/containers/9a2daa815404a4e90aea70645ea06f0d2f742d8a6c629403c1e03e1a5c78f454/hosts',
    'LogPath': '/var/lib/docker/containers/9a2daa815404a4e90aea70645ea06f0d2f742d8a6c629403c1e03e1a5c78f454/9a2daa815404a4e90aea70645ea06f0d2f742d8a6c629403c1e03e1a5c78f454-json.log',
    'Name': '/mycontainer',
    'RestartCount': 0,
    'Driver': 'overlay2',
    'Platform': 'linux',
    'MountLabel': '',
    'ProcessLabel': '',
    'AppArmorProfile': 'docker-default',
    'ExecIDs': ['404b508dfb4fad457a7683f18fe2a96e6917c604261c35f8f3ba053c8ef64eb4'],
    'HostConfig': {
        'Binds': ['/var/run/docker.sock: /var/run/docker.sock'],
        'ContainerIDFile': '',
        'LogConfig': {
            'Type': 'json-file',
            'Config': {
                
            }
        },
        'NetworkMode': 'default',
        'PortBindings': {
            
        },
        'RestartPolicy': {
            'Name': 'no',
            'MaximumRetryCount': 0
        },
        'AutoRemove': False,
        'VolumeDriver': '',
        'VolumesFrom': None,
        'CapAdd': None,
        'CapDrop': None,
        'Capabilities': None,
        'Dns': [],
        'DnsOptions': [],
        'DnsSearch': [],
        'ExtraHosts': None,
        'GroupAdd': None,
        'IpcMode': 'private',
        'Cgroup': '',
        'Links': None,
        'OomScoreAdj': 0,
        'PidMode': '',
        'Privileged': False,
        'PublishAllPorts': False,
        'ReadonlyRootfs': False,
        'SecurityOpt': None,
        'UTSMode': '',
        'UsernsMode': '',
        'ShmSize': 67108864,
        'Runtime': 'runc',
        'ConsoleSize': [0,
        0],
        'Isolation': '',
        'CpuShares': 0,
        'Memory': 0,
        'NanoCpus': 0,
        'CgroupParent': '',
        'BlkioWeight': 0,
        'BlkioWeightDevice': [],
        'BlkioDeviceReadBps': None,
        'BlkioDeviceWriteBps': None,
        'BlkioDeviceReadIOps': None,
        'BlkioDeviceWriteIOps': None,
        'CpuPeriod': 0,
        'CpuQuota': 0,
        'CpuRealtimePeriod': 0,
        'CpuRealtimeRuntime': 0,
        'CpusetCpus': '',
        'CpusetMems': '',
        'Devices': [],
        'DeviceCgroupRules': None,
        'DeviceRequests': None,
        'KernelMemory': 0,
        'KernelMemoryTCP': 0,
        'MemoryReservation': 0,
        'MemorySwap': 0,
        'MemorySwappiness': None,
        'OomKillDisable': False,
        'PidsLimit': None,
        'Ulimits': None,
        'CpuCount': 0,
        'CpuPercent': 0,
        'IOMaximumIOps': 0,
        'IOMaximumBandwidth': 0,
        'MaskedPaths': ['/proc/asound',
        '/proc/acpi',
        '/proc/kcore',
        '/proc/keys',
        '/proc/latency_stats',
        '/proc/timer_list',
        '/proc/timer_stats',
        '/proc/sched_debug',
        '/proc/scsi',
        '/sys/firmware'],
        'ReadonlyPaths': ['/proc/bus',
        '/proc/fs',
        '/proc/irq',
        '/proc/sys',
        '/proc/sysrq-trigger']
    },
    'GraphDriver': {
        'Data': {
            'LowerDir': '/var/lib/docker/overlay2/88b48830bb0194f5b8f508e2b477a6a6daaa79efa4875c7e595ed20ec49456b3-init/diff: /var/lib/docker/overlay2/6152ebc3b355019c9cb78069a1d4fef7ce334efe5228778b0325f8ec8b947cfe/diff: /var/lib/docker/overlay2/eb4051b611cab6a92f5d437d641b1aa67c586e1ba756502f5d756b48ed8a38da/diff: /var/lib/docker/overlay2/9d82a25654ecc29f794a0b640c030d491b15f342b163306cb1155ae74065471f/diff: /var/lib/docker/overlay2/509403a386d5a3e7a7fac3b528c9d1353bd204cfc9af0632190afd1565776bd8/diff: /var/lib/docker/overlay2/519ff85e86fcc2feb97debfba7652b01325e5ee797bee0ede9e7052c4f98477e/diff: /var/lib/docker/overlay2/29d4cbdb840f8f5aad65fda1260fddadcfcde3b89d3a0621cdd96331f94ff4f5/diff',
            'MergedDir': '/var/lib/docker/overlay2/88b48830bb0194f5b8f508e2b477a6a6daaa79efa4875c7e595ed20ec49456b3/merged',
            'UpperDir': '/var/lib/docker/overlay2/88b48830bb0194f5b8f508e2b477a6a6daaa79efa4875c7e595ed20ec49456b3/diff',
            'WorkDir': '/var/lib/docker/overlay2/88b48830bb0194f5b8f508e2b477a6a6daaa79efa4875c7e595ed20ec49456b3/work'
        },
        'Name': 'overlay2'
    },
    'Mounts': [{
        'Type': 'bind',
        'Source': '/var/run/docker.sock',
        'Destination': '/var/run/docker.sock',
        'Mode': '',
        'RW': True,
        'Propagation': 'rprivate'
    }],
    'Config': {
        'Hostname': '9a2daa815404',
        'Domainname': '',
        'User': '',
        'AttachStdin': False,
        'AttachStdout': False,
        'AttachStderr': False,
        'Tty': False,
        'OpenStdin': False,
        'StdinOnce': False,
        'Env': ['PATH=/usr/local/bin: /usr/local/sbin: /usr/local/bin: /usr/sbin: /usr/bin: /sbin: /bin',
        'LANG=C.UTF-8',
        'GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D',
        'PYTHON_VERSION=3.6.10',
        'PYTHON_PIP_VERSION=20.1.1',
        'PYTHON_GET_PIP_URL=https: //github.com/pypa/get-pip/raw/eff16c878c7fd6b688b9b4c4267695cf1a0bf01b/get-pip.py',
        'PYTHON_GET_PIP_SHA256=b3153ec0cf7b7bbf9556932aa37e4981c35dc2a2c501d70d91d2795aa532be79'],
        'Cmd': ['/bin/sh',
        '-c',
        'tail-f/dev/null'],
        'Image': 'myimage',
        'Volumes': None,
        'WorkingDir': '',
        'Entrypoint': None,
        'OnBuild': None,
        'Labels': {
            
        }
    },
    'NetworkSettings': {
        'Bridge': '',
        'SandboxID': 'd8e855fbadd1f3fc1633aa7478beb01fbfcca89bfddcd58cd5636b74f0791362',
        'HairpinMode': False,
        'LinkLocalIPv6Address': '',
        'LinkLocalIPv6PrefixLen': 0,
        'Ports': {
            
        },
        'SandboxKey': '/var/run/docker/netns/d8e855fbadd1',
        'SecondaryIPAddresses': None,
        'SecondaryIPv6Addresses': None,
        'EndpointID': '303b3ffdbb01586ea6319d1cfeb7c68839c1b8986dfdc212d1888aea9af52797',
        'Gateway': '172.17.0.1',
        'GlobalIPv6Address': '',
        'GlobalIPv6PrefixLen': 0,
        'IPAddress': '172.17.0.2',
        'IPPrefixLen': 16,
        'IPv6Gateway': '',
        'MacAddress': '02: 42: ac: 11: 00: 02',
        'Networks': {
            'bridge': {
                'IPAMConfig': None,
                'Links': None,
                'Aliases': None,
                'NetworkID': '7a6b48661c84f84e7abff76b99a0bdcdedca5e791aee328263ab4f446c4358db',
                'EndpointID': '303b3ffdbb01586ea6319d1cfeb7c68839c1b8986dfdc212d1888aea9af52797',
                'Gateway': '172.17.0.1',
                'IPAddress': '172.17.0.2',
                'IPPrefixLen': 16,
                'IPv6Gateway': '',
                'GlobalIPv6Address': '',
                'GlobalIPv6PrefixLen': 0,
                'MacAddress': '02: 42: ac: 11: 00: 02',
                'DriverOpts': None
            }
        }
    }
}
```
* container.stats內容
```sh
{
    'read': '2020-05-25T06: 01: 26.458566764Z',
    'preread': '2020-05-25T06: 01: 25.443024014Z',
    'pids_stats': {
        'current': 3
    },
    'blkio_stats': {
        'io_service_bytes_recursive': [],
        'io_serviced_recursive': [],
        'io_queue_recursive': [],
        'io_service_time_recursive': [],
        'io_wait_time_recursive': [],
        'io_merged_recursive': [],
        'io_time_recursive': [],
        'sectors_recursive': []
    },
    'num_procs': 0,
    'storage_stats': {
        
    },
    'cpu_stats': {
        'cpu_usage': {
            'total_usage': 748089610,
            'percpu_usage': [174746977,
            1024708,
            366764419,
            205553506],
            'usage_in_kernelmode': 100000000,
            'usage_in_usermode': 640000000
        },
        'system_cpu_usage': 3451400000000,
        'online_cpus': 4,
        'throttling_data': {
            'periods': 0,
            'throttled_periods': 0,
            'throttled_time': 0
        }
    },
    'precpu_stats': {
        'cpu_usage': {
            'total_usage': 748024997,
            'percpu_usage': [174746977,
            1024708,
            366764419,
            205488893],
            'usage_in_kernelmode': 100000000,
            'usage_in_usermode': 640000000
        },
        'system_cpu_usage': 3447470000000,
        'online_cpus': 4,
        'throttling_data': {
            'periods': 0,
            'throttled_periods': 0,
            'throttled_time': 0
        }
    },
    'memory_stats': {
        'usage': 17653760,
        'max_usage': 17756160,
        'stats': {
            'active_anon': 15409152,
            'active_file': 0,
            'cache': 0,
            'dirty': 0,
            'hierarchical_memory_limit': 9223372036854771712,
            'hierarchical_memsw_limit': 0,
            'inactive_anon': 0,
            'inactive_file': 0,
            'mapped_file': 0,
            'pgfault': 6699,
            'pgmajfault': 0,
            'pgpgin': 6072,
            'pgpgout': 2285,
            'rss': 15372288,
            'rss_huge': 0,
            'total_active_anon': 15409152,
            'total_active_file': 0,
            'total_cache': 0,
            'total_dirty': 0,
            'total_inactive_anon': 0,
            'total_inactive_file': 0,
            'total_mapped_file': 0,
            'total_pgfault': 6699,
            'total_pgmajfault': 0,
            'total_pgpgin': 6072,
            'total_pgpgout': 2285,
            'total_rss': 15372288,
            'total_rss_huge': 0,
            'total_unevictable': 0,
            'total_writeback': 0,
            'unevictable': 0,
            'writeback': 0
        },
        'limit': 4126978048
    },
    'name': '/mycontainer',
    'id': '9a2daa815404a4e90aea70645ea06f0d2f742d8a6c629403c1e03e1a5c78f454',
    'networks': {
        'eth0': {
            'rx_bytes': 2710,
            'rx_packets': 21,
            'rx_errors': 0,
            'rx_dropped': 0,
            'tx_bytes': 0,
            'tx_packets': 0,
            'tx_errors': 0,
            'tx_dropped': 0
        }
    }
}
```