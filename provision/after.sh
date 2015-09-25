#!/bin/sh

# Post-vagrant provisioner run to make sure that NPM global
# packages can be installed without sudo
su vagrant -c "mkdir /home/vagrant/npm-global"
su vagrant -c 'npm config set prefix "/home/vagrant/npm-global"'
printf 'export PATH=~/npm-global/bin:$PATH' >> /home/vagrant/.profile

# Install libnotify so that Gulp won't throw notification errors
sudo apt-get update
sudo apt-get install libnotify-bin -y
sudo apt-get install htop
sudo apt-get install zip

# Install gulp and bower
su vagrant -c "npm install -g gulp"
su vagrant -c "npm install -g bower"

su vagrant -c "git config --global url."https://".insteadOf git://"
su vagrant -c "git config --global autocrlf true"
su vagrant -c "git config --global filemode false"
