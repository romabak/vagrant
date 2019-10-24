#!/bin/bash

#update/upgrade
sudo yum update

#install
sudo yum install git vim tmux -y

#install docker
sudo yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2

sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

sudo yum install docker-ce docker-ce-cli containerd.io

sudo systemctl start docker

sudo usermod -aG docker $USER

#install ansible
sudo yum install ansible -y
