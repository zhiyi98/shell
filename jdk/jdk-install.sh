# install jdk

mkdir -p /environment/jdk
cd /environment/jdk

wget http://112.74.47.66:800/directlink/onedrive2/Tools/jdk-8u351-linux-x64.tar.gz
tar -zxvf jdk-8u351-linux-x64.tar.gz

echo "" >> /etc/profile
echo "#set JAVA environment" >> /etc/profile
echo "export JAVA_HOME=\"/environment/jdk/jdk1.8.0_351\"" >> /etc/profile
echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> /etc/profile

source /etc/profile
java -version
