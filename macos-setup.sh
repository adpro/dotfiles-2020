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

#install dotnet via its script
source "$DIR/dotnet/setup.sh"


# setup configuration of MacOS
source "$DIR/macos/setup.sh"


# git configuration
source "$DIR/git/setup.sh"


# ssh keys generation TODO https://gist.github.com/jexchan/2351996
source "$DIR/ssh.sh"


# configure apps TODO
source "$DIR/fish/setup.sh" # configure fish shell
source "$DIR/iterm/setup.sh" # iterm2 config - load preferences from folder
source "$DIR/vscode/setup.sh" # configure VSCode
# TODO youtube-dl config


echo "Macbook setup completed! Reboot can be a good idea."