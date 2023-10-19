#!/bin/bash

apt update && apt upgrade -y
apt install openjdk-11-jdk wget -y

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]  https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

apt update


apt install jenkins -y

systemctl start jenkins
systemctl status jenkins
systemctl enable jenkins
