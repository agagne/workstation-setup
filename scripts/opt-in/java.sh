# Java
echo
echo "Installing java 9 and 8 and java tools"

brew tap caskroom/versions
brew cask install java
brew cask install java8

brew install jenv
brew install gradle
brew install maven

jenv add /Library/Java/JavaVirtualMachines/jdk1.8.*.jdk/Contents/Home
jenv add /Library/Java/JavaVirtualMachines/jdk-10*.jdk/Contents/Home