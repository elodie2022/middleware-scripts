#!/bin/bash
# Description: Automate sonarqube
# Author     : Group2
# Date       :2/23/2022

echo "Installation of Sonarqube in progress.Exercise some patience please"
echo

sudo yum update -y
sudo yum install java-11-openjdk-devel -y
sudo yum install java-11-openjdk -y
cd /opt  
sleep 2
sudo yum install wget -y
sleep 2
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
sleep 2
sudo yum install unzip -y
slepp 2
sudo unzip /opt/sonarqube-9.3.0.51899.zip
sleep 2
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
sleep 2
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
./sonar.sh start
sleep 2
sudo firewall-cmd --permanent --add-port=9000/tcp
sudo firewall-cmd --reload

echo "Installation complete. Thanks for ypur patience."
