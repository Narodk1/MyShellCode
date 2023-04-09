#!/bin/bash

if [ ! -d corbeille ]
then
	exec mkdir corbeille
fi

if [ $1 = '-l' ]
then
	exec ls -l corbeille
elif [ $1 = '-r' ]
then
	exec rm -r corbeille/*
elif [ $# -ge 2 ]
then
	files=''

	for file in $*
	do
		if [ -f $file  ]
		then
			files=$files' '$file
		fi
	done
	
	exec mv $files corbeille/
fi

