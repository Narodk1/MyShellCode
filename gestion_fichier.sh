#!/bin/bash
if [ -z $1 ]; then
    read -p "Entrez le nom de fichier : " file
else
    file=$1
fi

if [ ! -f $file ]; then
    "$file existe pas !!"
    
else
    som=0
    cpt=0
    min=$(head -1 $file)
    max=$(head -1 $file)
    val=$(cat $file)
    
    for x in $val; do
        som=$(($som + $x))
        cpt=$(($cpt + 1))
        if [ $min -gt $x ]; then
            min=$x
        fi
        if [ $max -lt $x ]; then
            max=$x
        fi
    done
    
    moy=$(( $som / $cpt ))
    moy2=$(echo "scale=3; $som / $cpt" | bc)
    echo "Somme = $som"
    echo "Nombre de lignes = $cpt"
    echo "Min = $min"
    echo "Max = $max"
    echo "Moyenne = $moy ou $moy2"
fi