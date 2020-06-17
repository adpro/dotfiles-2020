# zsh basic config
# Apple info about zsh https://support.apple.com/en-gb/HT208050
# based on https://scriptingosx.com/2019/06/moving-to-zsh/

# Base settings
# =============

# case insensitive globbing = I.e. ~/D* is expanded into /Users/ad/Desktop /Users/ad/Documents /Users/ad/Downloads
setopt NO_CASE_GLOB

# globbing like bash
# setopt GLOB_COMPLETE

# auto cd
setopt AUTO_CD

# save history to history file
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
# add to history file timestamp
setopt EXTENDED_HISTORY
# http://zsh.sourceforge.net/Guide/zshguide02.html
# how many commands are saved
SAVEHIST=5000
# how many keep in one sesion
HISTSIZE=5000
# share history across multiple zsh sessions
setopt SHARE_HISTORY
# append to history, no rewrite
setopt APPEND_HISTORY
# adds commands as they are typed, not at shell exit
setopt INC_APPEND_HISTORY
# expire duplicates first
setopt HIST_EXPIRE_DUPS_FIRST 
# do not store duplications
setopt HIST_IGNORE_DUPS
#ignore duplicates when searching
setopt HIST_FIND_NO_DUPS
# removes blank lines from history
setopt HIST_REDUCE_BLANKS

# verify last wrote command (!!)
setopt HIST_VERIFY

# correct wrong typed strings/commands
setopt CORRECT
setopt CORRECT_ALL


# Aliases
# =======

# global alias
# alias -g ll='ls -lh'

# Navigation
function ... { cd ../.. ; }
function .... { cd ../../.. ; }
function ..... { cd ../../../.. ; }
# Often used shortcuts/aliases
function work { cd ~/dev/; }

# common
alias ll='ls -lf'
alias lla='ls -al'

# Python
alias python='python3'
alias pip='pip3'

# Functions
# =========

# add path to functions
fpath+=~/.dotfiles/zshenv/functions

# load functions
# autoload function && function
autoload cpwd
autoload weather
autoload mkd

# turn on advanced completions - command `compinstall` helps
autoload -Uz compinit # && compinit

# partial completion suggestions
zstyle ':completion:*' list-suffixes
zstyle ':completion:*' expand prefix suffix

# Prompt
# ======
# %(?.%F{green}√.%F{red}?%?)%f   foreground color green in last return value is 0 (ok) else `?value` in red 
# %B%F{33}%1~%f%b   bold blue last directory based on ~
# %#   for root print `#` else `%`
# 256 terminal colors https://jonasjacek.github.io/colors/
PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{33}%1~%f%b %# '

# git branch to prompt
# https://git-scm.com/book/en/v2/Appendix-A%3A-Git-in-Other-Environments-Git-in-Zsh
# TODO try https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{142}(%b)%r%f'
zstyle ':vcs_info:*' enable git