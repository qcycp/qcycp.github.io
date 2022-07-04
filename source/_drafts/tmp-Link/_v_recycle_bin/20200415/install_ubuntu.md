1. general package
sudo apt-get install ssh

2. docker
sudo apt install docker.io
curl -sSL https://get.docker.com/ | sh
curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

3. python
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install python3.6
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.5 1
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.6 2
curl https://bootstrap.pypa.io/get-pip.py | sudo python3.6
sudo pip install virtualenv
sudo apt-get install python3.6-dev libmysqlclient-dev
