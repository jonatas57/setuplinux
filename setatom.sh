#!/usr/bin/env bash

if [ "`./search.sh atom`" = "true" ]; then
	echo "atom installed"
else
	wget https://atom.io/download/deb > /dev/null
	sudo dpkg -i ./deb
fi
