#!/usr/bin/env bash

# All these applications are independent, so if one
# fails to install, don't stop.
set +e

echo
echo "Installing applications"


# Browsers
brew cask install google-chrome
# Disable Chromes Dark mode
defaults write com.google.Chrome NSRequiresAquaSystemAppearance -bool Yes

brew cask install firefox

# 
brew cask install slack
brew cask install skype

# 
brew cask install iterm2

#
brew cask install visual-studio-code

#
brew cask install cyberduck

set -e