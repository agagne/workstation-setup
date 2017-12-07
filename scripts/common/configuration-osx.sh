# mac stuff

echo
echo 'Customizing OS X configuration'
# set menu clock
# see http://www.unicode.org/reports/tr35/tr35-31/tr35-dates.html#Date_Format_Patterns
defaults write com.apple.menuextra.clock "DateFormat" 'EEE MMM d  HH:mm'
killall SystemUIServer

# hide the dock
defaults write com.apple.dock autohide -bool true
killall Dock


# set finder to display full path in title bar
defaults write com.apple.finder '_FXShowPosixPathInTitle' -bool true

# modify appearance of dock: remove standard icons, add chrome and iTerm
brew install dockutil
dockutil --list | awk -F\t '{print "dockutil --remove \""$1"\" --no-restart"}' | sh
dockutil --add /Applications/Slack.app --no-restart
dockutil --add /Applications/Google\ Chrome.app --no-restart
dockutil --add /Applications/iTerm.app --no-restart
dockutil --add file:///Applications/ --display folder --no-restart
dockutil --add file://////Users/maximederavet/Downloads/  --display stack 