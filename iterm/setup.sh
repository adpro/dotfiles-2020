#!/usr/bin/env sh

# based on http://stratus3d.com/blog/2015/02/28/sync-iterm2-profile-with-dotfiles-repository/

source scripts/functions.sh


# install extensions
if [ -d "/Applications/iTerm.app" ]; then
    substep_info "Setting iTerm2 to load prefs from directory..."
    # Specify the preferences directory
    defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "$BASEDIR/iterm"
    # Tell iTerm2 to use the custom preferences in the directory
    defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
else
    substep_error "Visual Studio Code is not installed, cannot install extensions."
fi