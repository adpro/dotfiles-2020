#!/usr/bin/env bash

echo "Configuring git..."
# set git global config
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
