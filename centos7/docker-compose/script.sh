#!/bin/bash

#update/upgrade
yum update -y

yum upgrade -y

#install
yum install -y git \
  vim \
  gcc \
  unzip \
  epel-release \
  net-tools \
  nc \
  telnet \
  lsof

yum install -y epel-release \
  python-pip \
  python-devel

yum update -y

#install docker
yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2

yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

yum install docker-ce docker-ce-cli containerd.io -y

usermod -aG docker vagrant

pip install --upgrade pip

pip install docker-compose
