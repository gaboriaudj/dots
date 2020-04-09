#    _               _
#   | |__   __ _ ___| |__  _ __ ___
#   | '_ \ / _` / __| '_ \| '__/ __|
#  _| |_) | (_| \__ \ | | | | | (__
# (_)_.__/ \__,_|___/_| |_|_|  \___|
#

# cd into a directory just by typing its name
shopt -s autocd


# Setting Bash prompt with colors.
PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h\[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

# Infinite history, no duplicate lines, append to file
# (don't overwrite it)
HISTSIZE=HISTFILESIZE=
HISTCONTROL=ignoreboth
shopt -s histappend

# Putting all vim config files in .config
VIMINIT="source ~/.config/vim/vimrc"

# System maintenance/useful
alias p="sudo pacman"
alias v="vim"
alias sdn="sudo shutdown now"
alias vrc="vim ~/.config/vim/vimrc"
alias brc="vim ~/.bashrc"
alias i3c="vim ~/.config/i3/config"
alias dots="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"


# Adding colors
alias ls="ls -hN --color=auto --group-directories-first"
alias ll='ls -laF --color=auto'
alias grep="grep --color=auto"  # Color grep
alias ccat="highlight --out-format=ansi"  # Color cat


# If not running interactively, don't do anything
# [[ $- != *i* ]] && return
