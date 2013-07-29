#!/bin/sh

SDIR=`dirname "$0"`
TDIR="~"

DOTDIRS="
.ssh
.tmux
.zsh"

DOTFILES="
.gitconfig
.screenrc
.ssh/config
.tmux.conf
.tmux/config.zsh
.tmux/cpuload.zsh
.tmux/defaults.sh
.tmux/left.zsh
.tmux/right.zsh
.vimrc
.zsh/dircolors.256dark
.zsh/dircolors.256light
.zsh/dircolors.ansi-light
.zshenv
.zsh/functions/_conary
.zsh/functions/_cvc
.zsh/functions/fileswap
.zsh/functions/__pregex
.zsh/functions/_rbuild
.zsh/functions/_rmake
.zsh/functions/_rpathcmd
.zsh/functions/__shell_properties
.zsh/functions/sskeyrm
.zsh/functions/zsh-reload
.zshrc
.zshrc.local
.zshrc.pre"

for di in $DOTDIRS
do
    if [ -d "${TDIR}/${di}" ]; then
        echo "${di} directory exists"
    else
        echo "${di} DOESN'T EXIST, creating..."
        mkdir "${TDIR}/${di}" || echo "ERROR CREATING ${di}"
    fi
done

echo " "

for fil in $DOTFILES
do
    cp -v "${SDIR}/${fil}" "${TDIR}/${fil}"
done

