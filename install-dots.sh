#!/bin/sh

SDIR=`dirname "$0"`
TDIR=~

DOTDIRS="
bin
.fonts/Ubuntu
.fonts/SourceCodePro
.fonts/SourceSansPro
.ssh
.tmux
.vim/after/ftplugin
.vim/ftdetect
.vim/ftplugin
.vim/indent
.vim/syntax
.zsh/functions"

DOTFILES="
bin/prename
.fonts/Ubuntu/CONTRIBUTING.txt
.fonts/Ubuntu/copyright.txt
.fonts/Ubuntu/FONTLOG.txt
.fonts/Ubuntu/LICENCE-FAQ.txt
.fonts/Ubuntu/LICENCE.txt
.fonts/Ubuntu/README.txt
.fonts/Ubuntu/TRADEMARKS.txt
.fonts/Ubuntu/Ubuntu-BI.ttf
.fonts/Ubuntu/Ubuntu-B.ttf
.fonts/Ubuntu/Ubuntu-C.ttf
.fonts/Ubuntu/Ubuntu-LI.ttf
.fonts/Ubuntu/Ubuntu-L.ttf
.fonts/Ubuntu/Ubuntu-MI.ttf
.fonts/Ubuntu/UbuntuMono-BI.ttf
.fonts/Ubuntu/UbuntuMono-B.ttf
.fonts/Ubuntu/UbuntuMono-RI.ttf
.fonts/Ubuntu/UbuntuMono-R.ttf
.fonts/Ubuntu/Ubuntu-M.ttf
.fonts/Ubuntu/Ubuntu-RI.ttf
.fonts/Ubuntu/Ubuntu-R.ttf
.fonts/SourceCodePro/SourceCodePro-Black.otf
.fonts/SourceCodePro/SourceCodePro-Bold.otf
.fonts/SourceCodePro/SourceCodePro-ExtraLight.otf
.fonts/SourceCodePro/SourceCodePro-Light.otf
.fonts/SourceCodePro/SourceCodePro-Medium.otf
.fonts/SourceCodePro/SourceCodePro-Regular.otf
.fonts/SourceCodePro/SourceCodePro-Semibold.otf
.fonts/SourceSansPro/SourceSansPro-BlackIt.otf
.fonts/SourceSansPro/SourceSansPro-Black.otf
.fonts/SourceSansPro/SourceSansPro-BoldIt.otf
.fonts/SourceSansPro/SourceSansPro-Bold.otf
.fonts/SourceSansPro/SourceSansPro-ExtraLightIt.otf
.fonts/SourceSansPro/SourceSansPro-ExtraLight.otf
.fonts/SourceSansPro/SourceSansPro-It.otf
.fonts/SourceSansPro/SourceSansPro-LightIt.otf
.fonts/SourceSansPro/SourceSansPro-Light.otf
.fonts/SourceSansPro/SourceSansPro-Regular.otf
.fonts/SourceSansPro/SourceSansPro-SemiboldIt.otf
.fonts/SourceSansPro/SourceSansPro-Semibold.otf
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
