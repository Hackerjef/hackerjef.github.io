clear
echo "welcome to Hacker systems, its safer here."
echo "http://half-life.wikia.com/wiki/Breencast if you dont know the reference"
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install gdebi wget openssh-server openssh-client python-software-properties unzip screen vsftpd curl
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer
echo "please portfoward ports 22 8080 and 21"
curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//'  
echo "^give august ip"
echo "done"
