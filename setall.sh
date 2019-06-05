#!/usr/bin/env bash

# wget
./installpkg.sh wget

# vim
./installpkg.sh vim
if [ -a ~/.vimrc ] ; then
  mv ~/.vimrc ~/.oldvimrc
fi
cp ./vim/.vimrc ~/
cp ./vim/padrao.cpp ~/jonatas

if [ "$OSTYPE" = "linux-gnu" ]; then
  # atom
  ./setatom.sh
elif [ "$OSTYPE" = "linux-androideabi" ]; then
  echo "android"
else
  echo "ok"
fi

# OhMyZsh
z=$(./installpkg.sh zsh)
if [ -d ~/.oh-my-zsh ]; then
  echo "Oh My Zshell installed"
else
  sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
fi
