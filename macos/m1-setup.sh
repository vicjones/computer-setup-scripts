#!/bin/bash

echo "Installing brew..."
bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USER/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "Installing browser"
brew install --cask vivaldi

echo "Installing communication tools"
brew install --cask zoom

echo "Installing other stuff..."
brew install --cask 1password
brew install --cask parallels
brew install --cask protonvpn
brew install --cask vlc
brew install --cask keka