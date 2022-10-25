# install portainer
echo "======================================================"
echo "                   install portainer"
echo "======================================================"

mkdir -p /root/data/docker/portainer
cd /root/data/docker/portainer

touch docker-compose.yml
echo "version: '3.3'" >> docker-compose.yml
echo "services:" >> docker-compose.yml
echo "  portainer:" >> docker-compose.yml
echo "    container_name: portainer" >> docker-compose.yml
echo "    restart: always" >> docker-compose.yml
echo "    image: portainer/portainer" >> docker-compose.yml
echo "    ports:" >> docker-compose.yml
echo "      - '2000:9000'" >> docker-compose.yml
echo "    volumes:" >> docker-compose.yml
echo "      - /var/run/docker.sock:/var/run/docker.sock # 默认不要改" >> docker-compose.yml

docker-compose up -d

echo "安装完成~"