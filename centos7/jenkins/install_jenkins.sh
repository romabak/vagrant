#!/bin/bash

yum update -y
yum install -y git \
  vim \
  gcc \
  unzip \
  epel-release \
  net-tools \
  nc \
  telnet \
  lsof \
  wget \
  java

wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

yum install -y jenkins

service jenkins start
service jenkins stop

sed "s/<useSecurity>true/<useSecurity>false/g" /var/lib/jenkins/config.xml > /var/lib/jenkins/config.xml

java -Djenkins.install.runSetupWizard=false -jar $(find / -name jenkins.war) &

find / -name jenkins-cli.jar
