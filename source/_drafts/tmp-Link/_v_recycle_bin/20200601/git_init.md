
1. 安装git
sudo apt-get install git

2. 设置git全局邮箱和用户名
git config --global user.name "yourgithubname"
git config --global user.email "yourgithubemail"

3. 设置ssh key
ssh-keygen -t rsa -C "youremail"
#生成后填到github和coding上（有coding平台的话）
#验证是否成功
ssh -T git@github.com
ssh -T git@git.coding.net #(有coding平台的话)

4. 安装nodejs
sudo apt-get install nodejs
sudo apt-get install npm

5. 安装hexo
sudo npm install hexo-cli -g