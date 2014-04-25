#!bin/bash

autoload_dir = "~/.vim/autoload/"
bundle_dir = "~/.vim/bundle/"

if [! -d "$autoload_dir"]; then
  mkdir "$autoload_dir"
fi

if [! -d "$bundle_dir"]; then
  mkdir "$bundle_dir"
fi

git clone https://github.com/tpope/vim-pathogen

mv vim-pathogen/autoload/pathogen.vim ~/.vim/autoload

# Add "call pathogen#infect()" to the vimrc 

