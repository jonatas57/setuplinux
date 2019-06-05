#!/usr/bin/env bash

if [ "`./search.sh $1`" = "true" ]; then
	echo "$1 installed"
else
	sudo apt install $1 -y
	echo "$1 installed"
fi
