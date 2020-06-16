#!/usr/bin/env bash

# brew
brew update
brew upgrade
brew cask upgrade
brew cleanup
brew doctor
brew cask doctor

# mac app store
mas upgrade

# system
sudo softwareupdate -i -a