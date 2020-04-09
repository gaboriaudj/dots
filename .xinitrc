#!/bin/sh
#         _       _ _
#   __  _(_)_ __ (_) |_ _ __ ___
#   \ \/ / | '_ \| | __| '__/ __|
#  _ >  <| | | | | | |_| | | (__
# (_)_/\_\_|_| |_|_|\__|_|  \___|
#
# xinitrc runs autommatically when you run startx
#
# Commands to start the graphical environment are kept
# in ~/.xprofile, because the file is run automatically
# if someone uses a display manager (login scrceen).

# We source those commands here
[ -f ~/.xprofile ] && source ~/.xprofile

# This will be for colorschemes and such,
### I'll have to move this to .xprofile
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

# start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

~/bin/dunst &
~/.local/bin/setbg ~/images/bg/ &
exec i3
