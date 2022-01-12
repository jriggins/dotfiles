# Set MacOS defaults
#
# Inspiration from: https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789
#
# For a list of available domains:
# defaults domains
#

##
# Finder
#

# show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

killall Finder

##
# Dock
#

# Automatically hide and show
defaults write com.apple.dock autohide -bool true

##
# VSCode
#

# Enable repeated key presses on hold
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
