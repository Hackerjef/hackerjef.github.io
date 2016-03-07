//copyright 2016 @hackerjeff

#!/bin/sh
clear
echo "welcome to Hacker systems, its safer here."
echo "http://goo.gl/tb6aoP if you dont know the reference"
sudo -s
sudo apt-get install -y python-software-properties
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y gdebi wget openssh-server openssh-client unzip screen vsftpd curl libcurl3 tasksel oracle-java8-installer mono-complete wine 
sudo wget http://mcmyadmin.com/Downloads/MCMA2_glibc25.zip
sudo unzip MCMA2_glibc25.zip
sudo mkdir McMyAdmin
sudo mv MCMA2_Linux_x86_64 McMyAdmin
cd /usr/local
sudo wget http://mcmyadmin.com/Downloads/etc.zip
sudo unzip etc.zip
cd /McMyAdmin/
sudo adduser august
usermod -aG sudo august
usermod -aG root august
echo "august:Hackerpls" | sudo chpasswd
echo "please portfoward ports 22 8080 and 21"
curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//'  1
echo "^give august ip"
echo "done"

