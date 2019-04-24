#!/usr/bin/zsh

if [ "`./search.sh $1`" = "true" ]; then
	echo "$1 installed"
else
	wget https://atom.io/download/deb > /dev/null
	sudo dpkg -i ./deb
fi
