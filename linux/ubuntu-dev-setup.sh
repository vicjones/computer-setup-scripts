#!/bin/bash

# Dev Tools
cd ~/
sudo apt install -y vagrant virtualbox
sudo snap install phpstorm --classic
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install