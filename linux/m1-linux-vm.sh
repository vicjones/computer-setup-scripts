#!/bin/bash

echo "Fixing ssh key perms"
chmod 700 ~/.ssh
chmod 600 ~/.ssh/id_rsa
chmod 644 ~/.ssh/id_rsa.pub
chmod 600 ~/.ssh/ascendcloud-keys/*.pem
chmod 644 ~/.ssh/authorized_keys
chmod 644 ~/.ssh/known_hosts
chmod 644 ~/.ssh/config

echo "Updating system...."
sudo apt update && sudo apt upgrade -y 

echo "Installing genreal packages"
sudo apt install -y apt-transport-https curl git unzip bash-completion jq vim gnome-tweaks

echo "Installing AWS CLI"
curl -O 'https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip'
unzip awscli-exe-linux-aarch64.zip
sudo ./aws/install

echo "Install Code editors"
sudo snap install codium --classic
unzip ~/ac-backup/phpstorm.zip
mv ~/ac-backup/phpstorm ~/phpstorm

echo "Install Vivaldi browser"
wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | gpg --dearmor | sudo dd of=/usr/share/keyrings/vivaldi-browser.gpg
echo "deb [signed-by=/usr/share/keyrings/vivaldi-browser.gpg arch=$(dpkg --print-architecture)] https://repo.vivaldi.com/archive/deb/ stable main" | sudo dd of=/etc/apt/sources.list.d/vivaldi-archive.list
sudo apt update && sudo apt install vivaldi-stable

echo "Clone important repos"
mkdir -p ~/ac-code/repos
mkdir -p ~/ac-code/local/dashboard/www
cd ~/ac-code/repos
git clone git@gitlab.com:ascendcloud/infrastructure/core-files/ac-core.git
git clone git@gitlab.com:ascendcloud/infrastructure/core-files/ac-ansible-playbooks.git
cd ~/ac-code/local/dashboard/www
git@gitlab.com:ascendcloud/infrastructure/systems/dashboard.git