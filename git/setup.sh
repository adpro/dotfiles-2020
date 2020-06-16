#!/usr/bin/env sh

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd "$DIR"

source scripts/functions.sh

SOURCE="$(realpath .)"

if test ! $(which git); then
    substep_info "Configuring git..."
    # set git global config
    git config --global user.name "Your Name"
    git config --global user.email your.name@email.net
    git config --global alias.st status
    git config --global alias.ch checkout
    git config --global alias.br branch
    git config --global alias.cm 'commit -m'
    git config --global alias.pom 'push -u origin master'
    git config --global alias.unstage 'reset HEAD --'
    git config --global alias.s status
    git config --global alias.a '!git add . && git status'
    git config --global alias.au '!git add -u . && git status'
    git config --global alias.aac '!git add . && git add -u . && git status'
    git config --global alias.c commit
    git config --global alias.ca 'commit --amend'
    git config --global alias.last 'log -1 HEAD'
    git config --global core.autocrlf input

    # set .gitignore global
    git config --global core.excludesfile "$SOURCE/.gitignore_global"
else
    substep_error "Visual Studio Code is not installed, cannot install extensions."
fi


