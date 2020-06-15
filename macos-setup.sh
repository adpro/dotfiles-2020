#!/usr/bin/env sh

# https://medium.com/macoclock/automating-your-macos-setup-with-homebrew-and-cask-e2a103b51af1
# https://gist.github.com/t-io/8255711

# Setup script for setting up a new macos machine
echo "Starting setup"
# install xcode CLI
xcode-select --install
read -n1 -r -p "Press any key to continue after XCode CLI installation finish..."

echo "Updating pip..."
sudo -H pip3 install --upgrade pip

# echo "Installing Python packages..."
# PYTHON_PACKAGES=(
#     virtualenv
#     virtualenvwrapper
# )
# sudo pip3 install ${PYTHON_PACKAGES[@]}

BASEDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# install tool via brew and brew cask
source "$BASEDIR/install/brew.sh"

#install dotnet via its script
source "$BASEDIR/dotnet/setup.sh"

# setup configuration of MacOS
source "$BASEDIR/macos/setup.sh"

# git configuration
source "$BASEDIR/git/setup.sh"

# ssh keys generation TODO https://gist.github.com/jexchan/2351996
source "$BASEDIR/ssh.sh"


# configure apps TODO
source "$BASEDIR/fish/setup.sh" # configure fish shell
source "$BASEDIR/iterm/setup.sh" # iterm2 config - load preferences from folder
source "$BASEDIR/vscode/setup.sh" # configure VSCode
# TODO youtube-dl config

echo "Macbook setup completed! Reboot can be a good idea."