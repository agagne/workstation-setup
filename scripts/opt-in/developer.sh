echo
echo "Installing dev tools "

# Tools 
brew install telnet
brew install httpie
brew install jq
brew install vim --with-override-system-vi

git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

brew install coreutils
brew install gnu-sed --with-default-names
brew install gnu-tar --with-default-names


brew install htop --with-ncurses
sudo chown root:wheel /usr/local/Cellar/htop/*/bin/htop
sudo chmod u+s /usr/local/Cellar/htop/*/bin/htop

brew cask install jetbrains-toolbox

brew cask install sequel-pro

brew cask install virtualbox

brew install terraform

yarn global add hotel && hotel start


