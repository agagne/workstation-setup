#!/usr/bin/env bash
# mac stuff

echo
echo 'Customizing OS X configuration'
# set menu clock
# see http://www.unicode.org/reports/tr35/tr35-31/tr35-dates.html#Date_Format_Patterns
defaults write com.apple.menuextra.clock "DateFormat" 'EEE MMM d  HH:mm'

# "Show remaining battery percentage; hide time"
defaults write com.apple.menuextra.battery ShowPercent -string "YES"
defaults write com.apple.menuextra.battery ShowTime -string "NO"

# Dock config
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock tilesize -float 35
defaults write com.apple.dock largesize -float 80
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock show-recents -bool false

# "Require password immediately after sleep or screen saver begins"
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 5

# set finder to display full path in title bar
defaults write com.apple.finder '_FXShowPosixPathInTitle' -bool true
defaults write com.apple.finder ShowPathbar -bool true

defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true


# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -i

# modify appearance of dock: remove standard icons, add chrome and iTerm
brew install dockutil
dockutil --list | awk -F\t '{print "dockutil --remove \""$1"\" --no-restart"}' | sh
dockutil --add /Applications/Slack.app --no-restart
dockutil --add /Applications/Google\ Chrome.app --no-restart
dockutil --add /Applications/iTerm.app --no-restart
dockutil --add file:///Applications/ --display folder --no-restart
dockutil --add file://////Users/maximederavet/Downloads/  --display stack  --no-restart

# Show the ~/Library folder
chflags nohidden ~/Library

# Show the /Volumes folder
sudo chflags nohidden /Volumes

# "Kill affected applications"
for app in Finder Dock SystemUIServer; do killall "$app" >/dev/null 2>&1; done
