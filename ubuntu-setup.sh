#!/bin/bash

# Fix ssh keys permissions
chmod 700 ~/.ssh
chmod 644 ~/.ssh/authorized_keys
chmod 644 ~/.ssh/known_hosts
chmod 644 ~/.ssh/config
chmod 600 ~/.ssh/id_rsa
chmod 644 ~/.ssh/id_rsa.pub
chmod 600 ~/.ssh//bitbucket_key
chmod 644 ~/.ssh/bitbucket_key.pub
chmod 600 ~/.ssh/di_aws_key

# Update the system
sudo apt update  && sudo apt upgrade -y

# Dev Tools
sudo apt install -y vagrant virtualbox
cd ~/
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# Miscellaneous tools
sudo apt install -y apt-transport-https curl git unzip tlp lm-sensors bash-completion jq

# Browsers
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update && sudo apt install -y brave-browser 

# Install Media Tools
sudo apt install -y ffmpeg vlc
