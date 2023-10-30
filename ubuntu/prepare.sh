#!/bin/bash

apt update
apt upgrade -y

apt install -y\
  git\
  unzip\
  wget\
  net-tools\
  uidmap
