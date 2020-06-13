#!/usr/bin/env bash

# Check for Homebrew to be present, install if it's missing
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

PACKAGES=(
    cask
    mas
    git
    python
    fish
    sphinx-doc
    pandoc
    ansible
    awscli
    ffmpeg
    youtube-dl
    tldr
)
echo "Installing packages..."
brew install ${PACKAGES[@]}
# any additional steps you want to add here
# link readline
#brew link --force readline


echo "Installing Mac App Store apps..."
# 424389933 Final Cut Pro (10.4.8)
# 915041082 Instalace OS X Yosemite (1.6.7)
# 412347921 OmmWriter (1.63)
# 409183694 Keynote (10.0)
# 419330170 Moom (3.2.17)
# 490461369 Bandwidth+ (1.18)
# 682658836 GarageBand (10.3.4)
# 425424353 The Unarchiver (4.2.2)
# 434290957 Motion (5.4.5)
# 409203825 Numbers (10.0)
# 1147396723 WhatsApp (2.2021.4) == install
# 634159523 MainStage 3 (3.4.4)
# 409201541 Pages (10.0)
# 497799835 Xcode (11.3.1)
# 408981434 iMovie (10.1.14)
# 1295203466 Microsoft Remote Desktop (10.3.11) == install
# 634148309 Logic Pro X (10.5.0)
# 803453959 Slack (4.6.0)
# 420212497 Byword (2.9.2)
# 424390742 Compressor (4.4.6)
# 1429033973 RunCat (7.9) == install
PACKAGES=(
    1147396723
    1295203466
    1429033973
)
mas signin --dialog your.apple.id.email@example.com
mas install ${PACKAGES[@]}


echo "Installing cask..."
CASKS=(
    iterm2
    google-chrome
    firefox
    microsoft-edge
    macpass
    slack
    rider
    docker
    vagrant
    visual-studio-code
    zoomus
    postman
    macdown
    clickup
    drawio
    virtualbox
    visual-studio
    charles
    gimp
    the-unarchiver
    moom
    dropbox
    keybase
    adobe-acrobat-reader
    spotify
    appcleaner
    vlc
    veracrypt
    nvalt
)
echo "Installing cask apps..."
brew cask install —appdir=“/Applications” ${CASKS[@]}

# cleanup brew kegs
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*





