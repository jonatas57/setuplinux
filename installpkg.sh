#!/usr/bin/zsh

if [ "`./search.sh $1`" = "true" ]; then
	echo "$1 installed"
else
	sudo apt install $1
fi
