#!/usr/bin/env bash
echo
echo "Installing zsh and associated stuffs"

#ZSH
brew install zsh
sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh
brew tap caskroom/fonts
brew cask install font-hack-nerd-font