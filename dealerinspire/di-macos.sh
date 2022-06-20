#!/bin/bash
# This script is assuming you are on a intel machine

# Fix ssh keys permissions
chmod 700 ~/.ssh
chmod 600 ~/.ssh/id_rsa
chmod 644 ~/.ssh/id_rsa.pub
chmod 600 ~/.ssh//repo_key
chmod 644 ~/.ssh/repo_key.pub
chmod 600 ~/.ssh/di_aws_key

# Browsers
brew install --cask brave-browser
brew install --cask firefox

# Communication
brew install --cask slack
brew install --cask zoom

# Dev Tools
brew install --cask phpstorm
brew install awscli
brew install --cask aws-vpn-client
brew install cli53
brew install --cask vagrant
brew install --cask virtualbox
