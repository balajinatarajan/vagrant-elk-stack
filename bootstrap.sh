apt-get -y update
apt-get -y install nginx
service nginx start

apt-get install -y default-jdk
apt-get install -y ant git
#have to install manually as there is a GUI prompt
add-apt-repository ppa:webupd8team/java
apt-get -y update
apt-get install -y oracle-java8-installer


#install elastic search
echo "Installing Elastic Search"
apt-get -y install apt-transport-https
echo "deb https://artifacts.elastic.co/packages/5.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-5.x.list
apt-get -y update
apt-get -y --force-yes install elasticsearch
apt-get -y --force-yes install logstash
apt-get -y --force-yes install kibana

#start services
service elasticsearch start
#service logstash start
service kibana start
