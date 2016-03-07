#!/bin/bash 
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install curl tasksel gdebi screen openssh-server openssh-client unzip
wget http://prdownloads.sourceforge.net/webadmin/webmin_1.790_all.deb
sudo gdebi webmin_1.790_all.deb
rm webmin_1.790_all.deb
echo "installed webmin"
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo apt-get install oracle-java8-installer
echo "installed java8"
sudo apt-get update && sudo apt-get upgrade
sudo iptables -A INPUT -p tcp --dport 8080 -j ACCEPT
cd /usr/local
sudo wget http://mcmyadmin.com/Downloads/etc.zip
sudo unzip etc.zip 
sudo rm etc.zip
mkdir ~/McMyAdmin
cd ~/McMyAdmin
wget http://mcmyadmin.com/Downloads/MCMA2_glibc26_2.zip
unzip MCMA2_glibc26_2.zip
rm MCMA2_glibc26_2.zip
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo "Done"
echo "open up ports 22 8080 10000 25565"
sudo PUBLIC_IP=`wget http://ipecho.net/plain -O - -q ; echo`
echo $PUBLIC_IP
echo "give hacker dat ip"
