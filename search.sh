#!/bin/bash

x=$(which $1)

if [ "$x" = "" ]; then
	echo "false"
else
	echo "true"
fi

