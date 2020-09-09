#!/usr/bin/env bash

# brew
brew update
brew upgrade
# brew cask upgrade deprecated
brew upgrade --cask
brew cleanup
brew doctor
# brew cask doctor deprecated
brew doctor --verbose

# mac app store
mas upgrade

# system
sudo softwareupdate -i -a