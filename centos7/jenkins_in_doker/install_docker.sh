#!/bin/bash
yum install -y epel-release \
  python-pip \
  python-devel

#install docker
yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2

yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

yum install docker-ce docker-ce-cli containerd.io -y

usermod -aG docker vagrant
