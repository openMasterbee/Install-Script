#!/bin/bash

sudo apt-get update

sudo apt-get upgrade -y


# Install apt-fast
#sudo add-apt-repository ppa:saiarcot895/myppa
#sudo apt-get update
#sudo apt-get -y install apt-fast


  # Install netselect
  #  sudo wget http://http.us.debian.org/debian/pool/main/n/netselect/netselect-apt_0.3.ds1-25_all.deb | dpkg -i
  #  sudo apt-get install netselect-apt

# Install basic tools

sudo apt-get install -y \
  git \
  htop \
  nload \
  nano \
  tree \
  ufw \
  sysstat \
  iptraf \

# Install bd

wget -O /etc/bash_completion.d/bd https://raw.github.com/vigneshwaranr/bd/master/bash_completion.d/bd
source /etc/bash_completion.d/bd
