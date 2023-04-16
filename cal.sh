#!/bin/bash
calcule() {
 case $2 in 
   "+")
    echo $(($1 + $3))
   ;;
    "-") 
    echo $(($1 - $3)) 
      ;;
    "*")
    echo  $(($1 * $3))
      ;;
    "/")
    echo $(($1 / $3))
        ;;
    *)
     echo "Operateur non valide "
    exit 1
     ;;  
 esac
}
if [ $# -eq 3 ]; then 
   n1=$1
   op=$2
   n2=$3
   res=$(calcule $n1 "$op" $n2 )
echo "$n1 $op $n2 = $res"
fi

