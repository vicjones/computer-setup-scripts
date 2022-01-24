#!/bin/bash

# Install brew before running this script with the command below
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

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

# Dev Tools
brew install awscli
brew install cli53
brew install --cask aws-vpn-client
brew install --cask virtualbox
brew install --cask vagrant
brew install --cask cyberduck
brew install --cask sublime-text
brew install --cask iterm2

# Browsers
brew install --cask brave-browser
brew install --cask firefox

# Productivity Tools
brew install --cask bitwarden
brew install --cask standard-notes

# Communication tools
brew install --cask slack
brew install --cask discord
brew install --cask zoom

# Miscellaneous tools
brew install --cask transmission
brew install --cask vlc
brew install --cask imageoptim