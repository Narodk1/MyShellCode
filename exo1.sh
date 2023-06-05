#!/bin/bash
if [ $# -ne 2 ]; then echo "parametre introuvable";exit 1; fi
if [ ! -e $1 ]; then echo "fichier existe pas";exit 2;fi
if [ ! -r $1 ];then echo "fichier non coupiable";exit 3 ;fi
if [ ! -f $1 ]; then echo "le fichier non ordinaire"; exit 4;fi
if [ ! -f $2 ]; then echo "le 2eme parametre inexistant"; exit 5;fi
$(cp $1 $2 2> dev/null) # cat 
if [ $? -ne 0 ]; then echo "copie echouer";exit ;fi
else echo "copie reussi";fi
