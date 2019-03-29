#!/usr/bin/env bash
echo
echo "Installing node"


# Node
brew install nvm

. "/usr/local/opt/nvm/nvm.sh"

npm config delete prefix

nvm install lts/Carbon
nvm install lts/Boron

nvm use lts/Carbon

brew install yarn