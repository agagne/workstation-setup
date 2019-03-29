#!/usr/bin/env bash
# Java
echo
echo "Installing openjdk 11 and 8 and java tools"

brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk8
brew cask install adoptopenjdk11

brew install jenv
brew install gradle
brew install maven

jenv add /Library/Java/JavaVirtualMachines/adoptopenjdk-8*.jdk/Contents/Home
jenv add /Library/Java/JavaVirtualMachines/adoptopenjdk-11*.jdk/Contents/Home