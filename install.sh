#!/bin/sh

cd ~/.vim_runtime
cp vimrc ~/.vimrc
vim -c "PluginInstall" -c "qa"
