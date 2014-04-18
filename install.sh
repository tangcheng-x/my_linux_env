#!/bin/bash

# Install the gnome-shell
echo -e "Install the gnome shell?(input y or n):"
read YES_OR_NO
if [ "$YES_OR_NO" = "y" -o "$YES_OR_NO" = "Y" ]; then
  sudo apt-get install gnome-shell
else
  echo -e "Why not? I am one of gnome party!"
fi

# Install the VIM
echo -e "Install vim(input y or n):"
read YES_OR_NO
if [ "$YES_OR_NO" = "y" -o "$YES_OR_NO" = "Y" ]; then
  sudo apt-get install vim
  # Use my vimrc
  echo -e "Do you want to use my vim profile?(input y or n):"
  read YES_OR_NO
  my_vim_path = "~/.vim/"
  if ["$YES_OR_NO" = "y" -o "$YES_OR_NO" = "Y"]; then
    sudo apt-get install ctags
    if [! -d "$my_vim_path"]; then
      mkdir "$my_vim_path"
    fi
    mv VIM/omnicppcomplete/* "$my_vim_path"

    mv VIM/_vimrc ~/.vimrc
  fi
fi

# Install Chrome
echo -e "Install Chrome(input s for stable, b for bate):"
read CHROME_VERSION
if [ "$CHROME_VERSION" = "b" -o "$CHROME_VERSION" = "B" ]
  sudo apt-get install google-chrome-beta
else
  sudo apt-get install google-chrome-stable
fi

# Install Chinese input method
echo -e "Install Chinese method\n"
echo -e "1) Choose System Settings --> Language Support --> Install/Remove Languages"
echo -e "--- Install the package of Chinese Language"
echo -e "--- If installed, enter any key to continue: "
read CONTIUNE
echo -e "2) Install IBus framework"
sudo apt-get install ibus ibus-clutter ibus-gtk ibus-gtk3 ibus-qt4
im-switch -s iBus
echo -e "3) Install google pinyin method:"
sudo apt-get install ibus-googlepinyin
echo -e "4) Set the input method, if finished, enter any key to continue"
ibus-setup
read CONTIUNE
echo -e "5) These input method settings can be effective after log out."

# Support system clipboard
sudo apt-get install vim-gnome
