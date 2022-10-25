# install jdk

mkdir -p /root/data/environment/maven
cd /root/data/environment/maven

wget http://112.74.47.66:800/directlink/onedrive2/Tools/apache-maven-3.8.6-bin.tar.gz
tar -zxvf apache-maven-3.8.6-bin.tar.gz

echo "" >> /etc/profile
echo "#set MAVEN environment" >> /etc/profile
echo "export MAVEN_HOME=\"/root/data/environment/maven/apache-maven-3.8.6-bin\"" >> /etc/profile
echo "export PATH=\$PATH:\$MAVEN_HOME/bin" >> /etc/profile

source /etc/profile
mvn -version