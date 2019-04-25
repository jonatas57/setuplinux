#!/usr/bin/env bash

# wget
./installpkg.sh wget

# OhMyZsh
z=$(./installpkg.sh zsh)
if [ -d ~/.oh-my-zsh ]; then
  echo "Oh My Zshell installed"
else
  sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
fi

# vim
./installpkg.sh vim
mv ~/.vimrc ~/.oldvimrc
cp ./vim/.vimrc ~/
cp ./vim/padrao.cpp ~/jonatas


if [ "$OSTYPE" = "linux-gnu" ]; then
  # atom
  ./setatom.sh
elif [ "$OSTYPE" = "linux-androidabi"]; then
  echo "android"
else
  echo "ok"
fi
