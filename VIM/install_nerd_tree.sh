#!bin/bash

bundle_dir = "~/.vim/bundle/"

if [! -d "$bundle_dir"]; then
  echo "You need to install the pathogen first"
  sh install_pathogen.sh
fi

cd "$bundle_dir"

git clone https://github.com/scrooloose/nerdtree


