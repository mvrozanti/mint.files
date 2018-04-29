#!/bin/bash

# .profile
cp -fR ~/.profile .

# vim
cp -fR ~/.vimrc .
shopt -s extglob
cp -fR ~/.vim/!*undodir* . 
shopt -u extglob

# powerline
cp -fR  ~/.config/powerline .

# whatsapp css
cp -fR /opt/whatsapp-desktop/resources/app/css/settings.css .

# urlview
cp -fR ~/.urlview .

# ranger
cp -fR  ~/.config/ranger .

# ncmpcpp
cp -fR  ~/.ncmpcpp/ .

# urxvt
cp -fR  ~/.urxvt/ .

# tmux
cp -fR ~/.tmux.conf .

# .Xdefaults ; move to Xresources?
cp -fR ~/.Xdefaults .

# .bashrc
cp -fR ~/.bashrc .

# .bashrc
cp -fR ~/.bash_aliases .

# mutt
cp -fR ~/.muttrc .

# .cinnamon
cp -fR ~/.cinnamon/configs .

# ownscripts
mkdir -p usr-local-bin
cp -fR /usr/local/bin/dota usr-local-bin
cp -fR /usr/local/bin/scr usr-local-bin
cp -fR /usr/local/bin/isthere usr-local-bin
# cp -fR /usr/local/bin/gitap usr-local-bin
cp -fR /usr/local/bin/gitai usr-local-bin
cp -fR /usr/local/bin/dropbox usr-local-bin
cp -fR /usr/local/bin/switch_to* usr-local-bin
cp -fR /usr/local/bin/rngr usr-local-bin
cp -fR /usr/local/bin/steamautoclose usr-local-bin
cp -fR /usr/local/bin/ping-steam-user usr-local-bin
cp -fR /usr/local/bin/ytdl usr-local-bin
cp -fR /usr/local/bin/clip usr-local-bin
cp -fR /usr/local/bin/regextract usr-local-bin
cp -fR /usr/local/bin/usage usr-local-bin
cp -fR /usr/local/bin/todo usr-local-bin
cp -fR /usr/local/bin/rssh usr-local-bin
#cp -fR /usr/local/bin/mpc-play-pause usr-local-bin
cp -fR /usr/local/bin/pipes usr-local-bin
cp -fR /usr/local/bin/murxvtt usr-local-bin

# push
if [ -z "$@" ]; then
    gitap "$(date)"
else
    gitap "$@"
fi

find . |grep -vE "*.(css|gif|sh|md)"|grep -v ".git"|xargs rm -rf
