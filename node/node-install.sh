# install jdk

mkdir -p /root/data/environment/node
cd /root/data/environment/node

wget https://nodejs.org/dist/v16.18.0/node-v16.18.0-linux-x64.tar.xz
tar -xvf node-v16.18.0-linux-x64.tar.xz

echo "" >> /etc/profile
echo "#set Node environment" >> /etc/profile
echo "export NODE_HOME=\"/root/data/environment/node/node-v16.18.0-linux-x64\"" >> /etc/profile
echo "export PATH=\$PATH:\$NODE_HOME/bin" >> /etc/profile

source /etc/profile
node --version