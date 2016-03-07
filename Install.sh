#!/bin/sh
clear
echo "welcome to Hacker systems, its safer here."
echo "http://half-life.wikia.com/wiki/Breencast if you dont know the reference"
sleep 4
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y gdebi wget openssh-server openssh-client python-software-properties unzip screen vsftpd curl libcurl3
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer
echo "please portfoward ports 22 8080 and 21"
curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//'  1
echo "^give august ip"
echo "done"
