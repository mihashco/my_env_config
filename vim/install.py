#!/usr/bin/python
import os

os.system("mkdir -p ~/.vim")
os.system("git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim")

#TODO: It means that .vimrc file must be placed in the same directory. It is ugly, change this
#and ad sanity checks
os.system("cp -f ./.vimrc ~")

#install plugins via vundle
os.system("vim +PluginInstall +qall")
