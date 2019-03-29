#!/usr/bin/env bash
echo
echo "Installing Git and associated tools"
brew install git --without-completions
brew install git-flow-avh
brew install hub
brew cask install sourcetree