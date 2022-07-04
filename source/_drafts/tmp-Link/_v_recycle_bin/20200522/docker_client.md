https://docker-py.readthedocs.io/en/stable/

```sh
(venv) user@vm-docker:~$ pip install docker
Collecting docker
  Using cached https://files.pythonhosted.org/packages/48/68/c3afca1a5aa8d2997ec3b8ee822a4d752cf85907b321f07ea86888545152/docker-3.7.2-py2.py3-none-any.whl
Collecting six>=1.4.0 (from docker)
  Using cached https://files.pythonhosted.org/packages/73/fb/00a976f728d0d1fecfe898238ce23f502a721c0ac0ecfedb80e0d88c64e9/six-1.12.0-py2.py3-none-any.whl
Collecting websocket-client>=0.32.0 (from docker)
  Using cached https://files.pythonhosted.org/packages/29/19/44753eab1fdb50770ac69605527e8859468f3c0fd7dc5a76dd9c4dbd7906/websocket_client-0.56.0-py2.py3-none-any.whl
Collecting requests!=2.18.0,>=2.14.2 (from docker)
  Using cached https://files.pythonhosted.org/packages/7d/e3/20f3d364d6c8e5d2353c72a67778eb189176f08e873c9900e10c0287b84b/requests-2.21.0-py2.py3-none-any.whl
Collecting docker-pycreds>=0.4.0 (from docker)
  Using cached https://files.pythonhosted.org/packages/f5/e8/f6bd1eee09314e7e6dee49cbe2c5e22314ccdb38db16c9fc72d2fa80d054/docker_pycreds-0.4.0-py2.py3-none-any.whl
Collecting urllib3<1.25,>=1.21.1 (from requests!=2.18.0,>=2.14.2->docker)
  Using cached https://files.pythonhosted.org/packages/62/00/ee1d7de624db8ba7090d1226aebefab96a2c71cd5cfa7629d6ad3f61b79e/urllib3-1.24.1-py2.py3-none-any.whl
Collecting certifi>=2017.4.17 (from requests!=2.18.0,>=2.14.2->docker)
  Using cached https://files.pythonhosted.org/packages/60/75/f692a584e85b7eaba0e03827b3d51f45f571c2e793dd731e598828d380aa/certifi-2019.3.9-py2.py3-none-any.whl
Collecting idna<2.9,>=2.5 (from requests!=2.18.0,>=2.14.2->docker)
  Using cached https://files.pythonhosted.org/packages/14/2c/cd551d81dbe15200be1cf41cd03869a46fe7226e7450af7a6545bfc474c9/idna-2.8-py2.py3-none-any.whl
Collecting chardet<3.1.0,>=3.0.2 (from requests!=2.18.0,>=2.14.2->docker)
  Using cached https://files.pythonhosted.org/packages/bc/a9/01ffebfb562e4274b6487b4bb1ddec7ca55ec7510b22e4c51f14098443b8/chardet-3.0.4-py2.py3-none-any.whl
Installing collected packages: six, websocket-client, urllib3, certifi, idna, chardet, requests, docker-pycreds, docker
Successfully installed certifi-2019.3.9 chardet-3.0.4 docker-3.7.2 docker-pycreds-0.4.0 idna-2.8 requests-2.21.0 six-1.12.0 urllib3-1.24.1 websocket-client-0.56.0


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

* 讀取current container的image information

```python
import docker

with open("/etc/hostname", "r", encoding='utf8') as f:
    container_id = f.read()
container_id = container_id.strip()
client = docker.from_env()
container = client.containers.get(str(container_id))
image_info = container.attrs['Config']['Image']

#container_id = 12220ad7e446
#info = deploy_pad_manager:A1.0.2.5acec8e
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