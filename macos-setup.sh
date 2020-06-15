#!/usr/bin/env bash

# https://medium.com/macoclock/automating-your-macos-setup-with-homebrew-and-cask-e2a103b51af1
# https://gist.github.com/t-io/8255711

# Setup script for setting up a new macos machine
echo "Starting setup"
# install xcode CLI
xcode-select —-install


echo "Updating pip..."
sudo pip install --upgrade pip

echo "Installing Python packages..."
PYTHON_PACKAGES=(
#    virtualenv
#    virtualenvwrapper
)
sudo pip install ${PYTHON_PACKAGES[@]}

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# install tool via brew and brew cask
source "$DIR/brew.sh"


# setup configuration of MacOS
source "$DIR/macos.sh"


# git configuration
source "$DIR/git/setup.sh"


# ssh keys generation TODO https://gist.github.com/jexchan/2351996
source "$DIR/ssh.sh"


# configure apps TODO
source "$DIR/fish/setup.sh" # configure fish shell
source "$DIR/iterm/setup.sh" # iterm2 config - load preferences from folder
# TODO youtube-dl config
echo "Rider settings - go to https://github.com/adpro/rider-settings for further info." # Rider config shared in repo
source "$DIR/vscode/setup.sh" # configure VSCode
# TODO Docker config
# TODO Vagrant config
# TODO Ansible config


echo "Macbook setup completed! Reboot can be a good idea."