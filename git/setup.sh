#!/usr/bin/env sh

source scripts/functions.sh

if git --version 2>&1 >/dev/null; then
    substep_info "Configuring git..."
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
    git config --global alias.l "log --graph --all --pretty=format:'%C(yellow)%h%C(cyan)%d%Creset %s %C(white)- %an, %ar%Creset'"
    git config --global alias.ll 'log --stat --abbrev-commit'
    git config --global alias.lg "log --color --graph --pretty=format:'%C(bold white)%h%Creset -%C(bold green)%d%Creset %s %C(bold green)(%cr)%Creset %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
    git config --global alias.llg "log --color --graph --pretty=format:'%C(bold white)%H %d%Creset%n%s%n%+b%C(bold blue)%an <%ae>%Creset %C(bold green)%cr (%ci)' --abbrev-commit"
    git config --global core.autocrlf input

    # set .gitignore global
    git config --global core.excludesfile "$BASEDIR/git/.gitignore_global"

    # set link to work and personal configuration files
    ln -s "$BASEDIR/git/.gitconfig-personal" ~/.gitconfig-personal
    ln -s "$BASEDIR/git/.gitconfig-work" ~/.gitconfig-work

    # manual edit .gitconfig and add includeIf sections (README)
else
    substep_error "Visual Studio Code is not installed, cannot install extensions."
fi


