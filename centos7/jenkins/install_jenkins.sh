#!/bin/bash

yum update -y
yum install wget -y
wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

yum install -y git \
  vim \
  unzip \
  epel-release \
  python-pip \
  net-tools \
  telnet  \
  lsof  \
  java  \
  jenkins

pip install --upgrade pip

pip install ansible==2.5

service jenkins start
chkconfig jenkins on
systemctl status jenkins

sleep 1m
