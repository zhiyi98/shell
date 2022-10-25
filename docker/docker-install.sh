# install docker
echo "======================================================"
echo "                   install docker"
echo "======================================================"

yum install docker

systemctl enable docker

echo "{" >> /etc/docker/daemon.json
echo "    \"registry-mirrors\": [\"http://hub-mirror.c.163.com\"]" >> /etc/docker/daemon.json
echo "}" >> /etc/docker/daemon.json

systemctl daemon-reload
systemctl restart docker.service

docker -version

# install docker-compose
echo "======================================================"
echo "                install docker-compose"
echo "======================================================"
# github
#sudo curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
# 国内镜像
sudo curl -L https://get.daocloud.io/docker/compose/releases/download/1.25.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version

echo "安装完成~"