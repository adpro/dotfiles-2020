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


# install tool via brew and brew cask
source brew.sh


# setup configuration of MacOS
source macos.sh


# git configuration
source git.sh


# ssh keys generation TODO
source ssh.sh


# configure apps TODO
source ./apps/fish.sh # configure fish shell
# TODO iterm2 config
# TODO youtube-dl config

echo "Macbook setup completed! Reboot can be a good idea."