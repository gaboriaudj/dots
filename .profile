#!/bin/sh
#                     __ _ _
#    _ __  _ __ ___  / _(_) | ___
#   | '_ \| '__/ _ \| |_| | |/ _ \
#  _| |_) | | | (_) |  _| | |  __/
# (_) .__/|_|  \___/|_| |_|_|\___|
#   |_|
#
# Profile file. Runs on login.
#

# default programs/environmental variables
export PATH="$PATH:$HOME/.local/bin"
export EDITOR="vim"
export TERMINAL="urxvt"
export BROWSER="firefox"
export READER="zathura"

# Export XDG environmental variables from '~/.config/user-dirs.dirs'
eval "$(sed 's/^[^#].*/export &/g;t;d' ~/.config/user-dirs.dirs)"

# for VIM to read the moved directory
export VIMINIT="source ~/.config/vim/vimrc"
export TEXMFHOME="~/.config/texmf"
#export TEXMFVAR="~/.config/texlive/texmf-var"
#export TEXMFCONFIG="~/.config/texive/texmf-config"

# load shortcuts
##[ -f ~/.scripts/shortcuts.sh ] && ~/.scripts/shortcuts.sh

# source the .bashrc file
[ -f ~/.bashrc ] && source ~/.bashrc

# start graphical server on tty1 if i3 is not already running
[ "$(tty)"="/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx


# switch Escape and Caps Lock in tty
sudo -n loadkeys ~/.local/bin/ttymaps.kmap 2>/dev/null
