#!/usr/bin/env sh


echo "Creating directories..."

cd $HOME
# Create commonly used directories
mkdir -p $HOME/dev
mkdir -p $HOME/dev/_personal #
mkdir -p $HOME/dev/_adler 
mkdir -p $HOME/dev/bin # binary directory
mkdir -p $HOME/Documents/_personal 
mkdir -p $HOME/Documents/_job-adler 
mkdir -p $HOME/Documents/_restricted 
mkdir -p $HOME/Documents/_secure
mkdir -p $HOME/Documents/_sw
mkdir -p $HOME/Pictures/_desktopScreenshots

DOTFILES_DIR=$HOME/.dotfiles
cd $DOTFILES_DIR


echo "Configuring OS..."
# Set fast key repeat rate
#defaults write NSGlobalDomain KeyRepeat -int 0
# Require password as soon as screensaver or sleep mode starts
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0
# disable screensaver
defaults write com.apple.screensaver idleTime -int 0
# Show filename extensions by default
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# Enable tap-to-click
#defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
#defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# https://github.com/mathiasbynens/dotfiles/blob/master/.macos
# https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789
# https://github.com/mathiasbynens/dotfiles/blob/master/.macos

# Set highlight color to purple
defaults write NSGlobalDomain AppleHighlightColor -string "0.968627 0.831373 1.000000 Purple"
# Set sidebar icon size to medium
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2
# Reveal IP address, hostname, OS version, etc. when clicking the clock
# in the login window
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
# Disable “natural” (Lion-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false
# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true
# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true
# Save screenshots to the desktop
[ ! -d "$HOME/Pictures/_desktopScreenshots" ] && mkdir “$HOME/Pictures/_desktopScreenshots”
defaults write com.apple.screencapture location -string “$HOME/Pictures/_desktopScreenshots”
# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string “png”
# Display full POSIX path as Finder window title
# defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" " 
# Set language and text formats
# Note: if you’re in the US, replace `EUR` with `USD`, `Centimeters` with
# `Inches`, `en_GB` with `en_US`, and `true` with `false`.
defaults write NSGlobalDomain AppleLanguages -array "en-CZ" "cs-CZ"
defaults write NSGlobalDomain AppleLocale -string "en_CZ"
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true
# Show language menu in the top right corner of the boot screen
sudo defaults write /Library/Preferences/com.apple.loginwindow showInputMenu -bool true
# Set the timezone; see `sudo systemsetup -listtimezones` for other values
sudo systemsetup -settimezone "Europe/Prague" > /dev/null
# Restart automatically on power loss
sudo pmset -a autorestart 1
# Restart automatically if the computer freezes
sudo systemsetup -setrestartfreeze on
# Sleep the display after 15 minutes
sudo pmset -a displaysleep 10
# Disable machine sleep while charging
sudo pmset -c sleep 0
# Set machine sleep to 5 minutes on battery
sudo pmset -b sleep 5
# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true
# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true
# Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true
# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
# Enable spring loading for directories
defaults write NSGlobalDomain com.apple.springing.enabled -bool true
# Show the ~/Library folder
chflags nohidden ~/Library # && xattr -d com.apple.FinderInfo ~/Library
# Show the /Volumes folder
sudo chflags nohidden /Volumes
# Set the icon size of Dock items to 31 pixels
defaults write com.apple.dock tilesize -int 31
# Change minimize/maximize window effect
defaults write com.apple.dock mineffect -string "genie"
# Minimize windows into their application’s icon
defaults write com.apple.dock minimize-to-application -bool true
# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false
echo "Done. Note that some of these changes require a logout/restart to take effect."

