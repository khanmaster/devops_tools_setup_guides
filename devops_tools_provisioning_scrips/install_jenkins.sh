#!/bin/bash
# This script will install required depencies to setup jenkins on ec2 - it will also install java8

sudo apt update -y
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:linuxuprising/java -y
sudo apt install default-jdk -y
sudo apt install openjdk-8-jdk -y


sudo wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
echo deb https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list
sudo apt-get update -y
sudo apt-get install jenkins -y
sudo systemctl start jenkins
sudo systemctl status jenkins
# sudo nano /var/lib/jenkins/secrets/initialAdminPassword

