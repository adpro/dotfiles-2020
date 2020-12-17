#!/usr/bin/env sh

# https://medium.com/macoclock/automating-your-macos-setup-with-homebrew-and-cask-e2a103b51af1
# https://gist.github.com/t-io/8255711

source scripts/functions.sh

# Setup script for setting up a new macos machine
info "Starting setup"
# install xcode CLI
xcode-select --install

info "Updating pip..."
sudo -H pip3 install --upgrade pip

# echo "Installing Python packages..."
# PYTHON_PACKAGES=(
#     virtualenv
#     virtualenvwrapper
# )
# sudo pip3 install ${PYTHON_PACKAGES[@]}

BASEDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# install tool via brew and brew cask
info "Installing tools..."
source "$BASEDIR/install/brew.sh"

#install dotnet via its script
source "$BASEDIR/dotnet/setup.sh"

# setup configuration of MacOS
info "Setting macOS..."
source "$BASEDIR/macos/setup.sh"

# git configuration
info "Configuring git..."
source "$BASEDIR/git/setup.sh"

# ssh keys generation TODO https://gist.github.com/jexchan/2351996
# source "$BASEDIR/ssh.sh"

# configure apps TODO
info "Configuring apps..."
source "$BASEDIR/fish/setup.sh" # configure fish shell
source "$BASEDIR/iterm/setup.sh" # iterm2 config - load preferences from folder
source "$BASEDIR/vscode/setup.sh" # configure VSCode
# TODO youtube-dl config

source "$BASEDIR/vscode/setup.sh" # configure pyenv a pipenv

info "Macbook setup completed!"