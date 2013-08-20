#!/bin/sh

SDIR=`dirname "$0"`
TDIR=~

DOTDIRS="
.ssh
.tmux
.vim/after/ftplugin
.vim/ftdetect
.vim/ftplugin
.vim/indent
.vim/syntax
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
.vim/syntax/json.vim
.vim/indent/json.vim 
.vim/after/ftplugin/json.vim 
.vim/ftplugin/json.vim 
.vim/ftdetect/json.vim
.vim/syntax/puppet.vim
.vim/indent/puppet.vim 
.vim/after/ftplugin/puppet.vim 
.vim/ftplugin/puppet.vim 
.vim/ftdetect/puppet.vim
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
        mkdir -p "${TDIR}/${di}" || echo "ERROR CREATING ${di}"
    fi
done

echo " "

for fil in $DOTFILES
do
    cp -v "${SDIR}/${fil}" "${TDIR}/${fil}"
done

chmod 600 "${TDIR}/.ssh/config"
