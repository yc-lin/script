#!/bin/bash

OS=`uname`

function CreateBackUpFile()
{
    if [ -e ${HOME}/${1} ]; then
        mv ${1} ${1}.bak
    fi
}

CreateBackUpFile "${HOME}/.vim"
ln -s ${HOME}/.script/vim ${HOME}/.vim

CreateBackUpFile "${HOME}/.vimrc"
ln -s ${HOME}/.script/config/.vimrc ${HOME}/.vimrc

CreateBackUpFile "${HOME}/.bashrc"
ln -s ${HOME}/.script/config/.bashrc ${HOME}/.bashrc

CreateBackUpFile "${HOME}/.profile"
ln -s ${HOME}/.script/config/.profile ${HOME}/.profile

CreateBackUpFile "${HOME}/.gitconfig"
ln -s ${HOME}/.script/config/.gitconfig ${HOME}/.gitconfig

if [ ! -d ${HOME}/.cgdb ]; then
    mkdir ${HOME}/.cgdb
fi
ln -s ${HOME}/.script/config/cgdbrc ${HOME}/.cgdb/cgdbrc

if [ ! -d ${HOME}/.config/peco ]; then
    mkdir ${HOME}/.config/peco
fi

ln -s ${HOME}/.script/config/.config/peco/config.json ${HOME}/.config/peco/config.json

ln -s ${HOME}/.script/.emacs.d ${HOME}/.emacs.d

CreateBackUpFile ".gdbinit"
ln -s .script/config/.gdbinit ${HOME}/.gdbinit
CreateBackUpFile ".gdbinit_stl"
ln -s .script/config/.gdbinit_stl ${HOME}/.gdbinit_stl

touch ${HOME}/.scd_bookmark
touch ${HOME}/.scd_list
