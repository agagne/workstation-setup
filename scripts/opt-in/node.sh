echo
echo "Installing node"


# Node
brew install nvm

if type nvm | grep -q "shell function" 2>/dev/null; then
    . "/usr/local/opt/nvm/nvm.sh"
fi

nvm install lts/Carbon
nvm install lts/Boron

nvm use lts/Carbon

brew install yarn